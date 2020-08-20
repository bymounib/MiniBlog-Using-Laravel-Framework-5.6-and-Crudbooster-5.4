<?php

namespace App\Http\Controllers;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Support\Facades\Hash;


use Illuminate\Http\Request;
use Validator;

use App\Article;
use App\Media;

use App\Article_Category;
use App\Category;
use DB;
use Illuminate\Support\Facades\Auth;

class FrontController extends Controller
{
    public $blog_name = 'MiniBlog';


    public function update(Request $req){
        $validate = null;
        $user = Auth::user();
            $validate = $req->validate([
                'name' => 'required|min:2',
                'email'=> 'required|email',
                'password' => 'required',
                'Newpassword'=>'required|min:6'
                ]);
            
            if ( !Hash::check($req['password'], $user->password) ) {
               
                  $errors= "Votre mot de passe actuel est incorrect.";
                  return back()->withErrors(['Votre mot de passe actuel est incorrect.']);               
                };
            
            if($validate ){
            $user->name = $req['name'];
            $user->email = $req['email'];
            if(($req['Newpassword'])!=""){
            $user->password = Hash::make($req['Newpassword']);
            }
            $user->save();
            return back()->with('success','<h5>Vos données ont été modifié avec succès!</h5>');
            } 
            }

            
            
    public function save(Request $req){
        $user = Auth::user();
        
        DB::table('comment')->insert(
            ['contenue'=>$req->message, 'id_cms_users'=>$user->id, 'id_article'=>$req->id_article]
        );
        return back()->with('success','<h5>Votre commentaire a été ajouté avec succès!</h5>');;

    }

    public function editphoto(Request $req){
        
        if($req->hasFile('file')){
            $user = Auth::user();
            $file = $req->file('file');
            $filename = $req->file->getClientOriginalName();
            $file->move(public_path('images/user'),$filename);
            $user->photo=$filename;
            $user->save();
            return back()->with('success','<h3>Votre Photo a été modifiée avec succès!</h3>');
        }
            
            
    }
    

    public function Ajout($id_cms_users,$art){

        $user = Auth::user();
        $data['id_cms_users']=$user->id;


        $data['art'] = DB::table('article')->max('article.id')+1;

        
        return view('ajout',$data);

    }

    
    public function saveAjout(Request $req){
        $validator = Validator::make($req->all(), [
            //'titre' => 'required|max:255',
            //'contenue' => 'required',
            //'photo' => 'required|image|mimes:jpeg,jpg',
        ]);

        if ($validator->fails()) {
            return back()
                        ->withErrors($validator)
                        ->withInput();
        }
        
        
        $user = Auth::user();

        //string
        $cat_name = strtoupper($req->cat_name);
                
        //array
        $cat_name_ar = explode(' ', $cat_name);
        
        $totalCount = count($cat_name_ar);
        
        //nchouf kol kelma fel input nawjouda f table walla
        for ($i = 0; $i < $totalCount ; $i++)
        {
        $exist[$i] = DB::table('category')
    	->where('name', '=', $cat_name_ar[$i] )
        ->first();
        
        if ($exist[$i]==[]) {
            // It does not exist - add to favorites button will show
                $category = new Category;
                $category->name=$cat_name_ar[$i];		
                $category->save();
                }
        $idcat = DB::table('category')
        ->select('category.id')
        ->where('name', '=', $cat_name_ar[$i] )
        ->first();
        $tt=(array)$idcat;
        $artcat = new Article_Category;
        $artcat->id_article=DB::table('article')->max('article.id')+1;;
        $artcat->id_category=$tt['id'];
        $artcat->save();	    
    }//endfor


        if($req->hasFile('file')){
            $file = $req->file('file');
            $filename = $req->file->getClientOriginalName();
            $file->move(public_path('images/article'),$filename);
            $article = new Article;
            $article->id_cms_users=$user->id;
            $article->titre=$req->titre;
            $article->contenue=$req->contenue;
            $article->photo=$filename;
            if($req->hasFile('media')){
                $file = $req->file('media');
                $ext= $file->getClientOriginalExtension();
                $filename = $req->media->getClientOriginalName();

                if ($ext=='jpg'||$ext=='jpeg'||$ext=='png'){
                $file->move(public_path('images/article'),$filename);
                $media = new Media;
                $media->id_article=(int)$req->art;
                $media->media=$filename;
                $media->extension=$ext;
                $media->save();}
                
                elseif($ext=='mp4'||$ext=='avi'){
                    $file->move(public_path('videos/article'),$filename);
                    $media = new Media;
                    $media->id_article=(int)$req->art;
                    $media->media=$filename;
                    $media->extension=$ext;
                    $media->save();}

                elseif($ext=='doc'||$ext=='txt'||$ext=='pdf'){
                     $file->move(public_path('txt/article'),$filename);
                     $media = new Media;
                     $media->id_article=(int)$req->art;
                     $media->media=$filename;
                     $media->extension=$ext;
                     $media->save();}
                elseif($ext=='mp3'){
                      $file->move(public_path('audio/article'),$filename);
                      $media = new Media;
                      $media->id_article=(int)$req->art;
                      $media->media=$filename;
                      $media->extension=$ext;
                      $media->save();}
                
            }
            $article->save();
            return redirect('/accueil')->with('success','<h5>Votre article a été ajouté avec succès!</h5>');
        }

    }

    public function getIndex(){
        $data['page_titre']='Home - Blog';
        $data['blog_name']=$this->blog_name;

        $user = Auth::user();
        $data['id_cms_users']=$user->id;

        $data['art'] = DB::table('article')->max('article.id')+1;
        $data['result'] = DB::table('article')
        ->join('cms_users','cms_users.id','=','id_cms_users')
        ->select('article.*','cms_users.name as name_author','cms_users.photo as author_photo',
        'article.id_cms_users as id_author_article')
        ->orderby('article.id','desc')
        ->paginate(3);
        //toast('Your Post has been submited!','success');

        $data['idcat'] = DB::table('article_category')
        ->join('article','article.id','=','article_category.id_article')
        ->join('category','category.id','=','article_category.id_category')
        ->select('category.*','article.id as id_article')
        ->whereColumn([
            ['article_category.id_category','=','category.id'],
            ['article_category.id_article','=','article.id'],
        ])
        ->orderby('article.id','desc')
        ->get(); 

                                      
        return view('accueil',$data);
    }

    public function getArticle($id,$id_author_article){

        $user = Auth::user();
        $data['id_cms_users']=$user->id;

        $data['art'] = DB::table('article')->max('article.id')+1;

        $row = DB::table('media')
        ->select('media.*')
        ->where('media.id_article',$id)
        ->first();
        $data['med']=$row;


        $row = DB::table('article')
        ->join('cms_users','cms_users.id','=','id_cms_users')
        ->select('article.*','article.id as id_article','cms_users.name as name_author','cms_users.photo as author_photo')
        ->where('article.id',$id)
        ->first();
        $data['row']=$row;

        $data['com']=$this->getComment($id);


        $data['check']=false;
        if ($user->id==$id_author_article)
            {
                $data['check']=true;
            }

        $data['idcat'] = DB::table('article_category')
        ->join('article','article.id','=','article_category.id_article')
        ->join('category','category.id','=','article_category.id_category')
        ->select('category.*','article.id as id_article')
        ->whereColumn([
            ['article_category.id_category','=','category.id'],
            ['article_category.id_article','=','article.id'],
        ])
        ->orderby('article.id','desc')
        ->get();

        
        $tuto = DB::table('article')
        ->join('cms_users','cms_users.id','=','id_cms_users')
        ->select('article.*','article.id as id_article','cms_users.name as name_author','cms_users.photo as author_photo')
        ->where('article.id',$id)
        ->first();
        $data['tuto']=$tuto;

        return view('detail',$data);
    }
    
    public function getComment($id){
        $data = DB::table('comment')
        ->join('cms_users','cms_users.id','=','id_cms_users')->where("comment.id_article","=",$id)

        ->select('comment.*','cms_users.name as name_author','cms_users.photo as author_photo')
        ->orderby('comment.id','desc')
        ->get();

        return ($data);
    }

    

    public function profile($id_cms_users){
        
        $user = Auth::user();
        $data['id_cms_users']=$user->id;

        $data['art'] = DB::table('article')->max('article.id')+1;

        
        $row = DB::table('cms_users')
        ->select('cms_users.*')
        ->where('id',$id_cms_users)
        ->first();
        
        $data['row']=$row;
        
        return view('profile',$data);
    }

    public function more_category(){
        $user = Auth::user();
        $data['id_cms_users']=$user->id;

        $data['result'] = DB::table('category')
        ->select('category.*')
        ->get();

        $data['art'] = DB::table('article')->max('article.id')+1;

        
        return view('more_category',$data);
    }

    public function mesarticles($id_cms_users){
        
        $user = Auth::user();
        $data['id_cms_users']=$user->id;

        $data['art'] = DB::table('article')->max('article.id')+1;

        
        $row = DB::table('article')
        ->join('cms_users','cms_users.id','=','id_cms_users')
        ->select('article.*','cms_users.name as name_author','cms_users.photo as author_photo')
        ->where('id_cms_users',$id_cms_users)
        ->first();
        $data['row']=$row;

        $data['re'] = DB::table('article')
        ->join('cms_users','cms_users.id','=','id_cms_users')
        ->select('article.*','cms_users.name as name_author','cms_users.photo as author_photo',
        'article.id_cms_users as id_author_article')
        ->where('id_cms_users',"=",$id_cms_users)
        ->orderby('article.id','desc')
        ->paginate(3);
        
        return view('article_user',$data);
    }
    public function getCategory($id_category){
        
        $user = Auth::user();
        $data['id_cms_users']=$user->id;
       
        $data['art'] = DB::table('article')->max('article.id')+1;


        $data['re'] = DB::table('article_category')
        ->join('article','article.id','=','article_category.id_article')
        ->join('category','category.id','=','article_category.id_category')
        ->join('cms_users','cms_users.id','=','id_cms_users')
        ->select('article.*','cms_users.name as name_author','cms_users.photo as author_photo',
        'category.name as name_category')
        ->where('article_category.id_category',$id_category)
        ->paginate(3);

        
        $data['idcat'] = DB::table('article_category')
        ->join('article','article.id','=','article_category.id_article')
        ->join('category','category.id','=','article_category.id_category')
        ->select('category.*','article.id as id_article')
        ->whereColumn([
            ['article_category.id_category','=','category.id'],
            ['article_category.id_article','=','article.id'],
        ])
        ->orderby('article.id','desc')
        ->get(); 

        return view('category',$data);
    }

    public function ModifierArticle($id_cms_users ,$id_article){
        $user = Auth::user();
        $data['id_cms_users']=$user->id; 

        $row = DB::table('article')
        ->select('article.*')
        ->where('id',$id_article)
        ->first();
        $data['row']=$row;

        
        $tuto = DB::table('article')
        ->join('cms_users','cms_users.id','=','id_cms_users')
        ->select('article.*','article.id as id_article','cms_users.name as name_author','cms_users.photo as author_photo')
        ->where('article.id',$id_article)
        ->first();
        $data['tuto']=$tuto;
        
        return view('modifier_article',$data);   
    }









    public function saveUpdate(Request $req,$id_cms_users,$id_article){


    $validator = Validator::make($req->all(), [
        //'titre' => 'required|max:255',
        //'contenue' => 'required',
        //'photo' => 'required|image|mimes:jpeg,jpg',
    ]);

    if ($validator->fails()) {
        return back()
                    ->withErrors($validator)
                    ->withInput();
    }
    
    
    $user = Auth::user();

    //string
    $cat_name = strtoupper($req->cat_name);
            
    //array
    $cat_name_ar = explode(' ', $cat_name);
    
    $totalCount = count($cat_name_ar);
    //nchouf kol kelma fel input nawjouda f table walla
    for ($i = 0; $i < $totalCount ; $i++)
    {
    $exist[$i] = DB::table('category')
    ->where('name', '=', $cat_name_ar[$i] )
    ->first();
    if ($exist[$i]==[]) {
        // It does not exist - add to favorites button will show
            $category = new Category;
            $category->name=$cat_name_ar[$i];	
            $category->save();
            }
    $idcat = DB::table('category')
    ->select('category.id')
    ->where('name', '=', $cat_name_ar[$i] )
    ->first();
    $tt=(array)$idcat;
    

    if($i==0){
    DB::table('article_category')->where('id_article', '=', $id_article)->delete();
    }
        $artcat = new Article_Category;
        $artcat->id_article=$id_article;
        $artcat->id_category=$tt['id'];
        $artcat->save();	   
	    
}//endfor


    if($req->hasFile('file')){

        $row = DB::table('media')
        ->select('media.*')
        ->where('media.id_article',$id_article)
        ->first();
        $data['row']=$row;
        if($data['row']!=[]){
        $file = $req->file('file');
        $filename = $req->file->getClientOriginalName();
        $file->move(public_path('images/article'),$filename);

        $article=DB::table('article')
        ->where('id', $id_article)
        ->update(['titre' => $req['titre'],'contenue' => $req['contenue'],'photo' => $filename]);

        if($req->hasFile('media')){
            $file = $req->file('media');
            $ext= $file->getClientOriginalExtension();
            $filename = $req->media->getClientOriginalName();

            if ($ext=='jpg'||$ext=='jpeg'||$ext=='png'){
            $file->move(public_path('images/article'),$filename);

            $artcat=DB::table('media')
            ->where('id_article', $id_article)
            ->update(['media' => $filename,'extension' => $ext]);
}
            
            elseif($ext=='mp4'||$ext=='avi'){
                $file->move(public_path('videos/article'),$filename);
                $artcat=DB::table('media')
                ->where('id_article', $id_article)
                ->update(['media' => $filename,'extension' => $ext]);
            }

            elseif($ext=='doc'||$ext=='txt'||$ext=='pdf'){
                 $file->move(public_path('txt/article'),$filename);
                 $artcat=DB::table('media')
                 ->where('id_article', $id_article)
                 ->update(['media' => $filename,'extension' => $ext]);
                }
            elseif($ext=='mp3'){
                  $file->move(public_path('audio/article'),$filename);
                  $artcat=DB::table('media')
                  ->where('id_article', $id_article)
                  ->update(['media' => $filename,'extension' => $ext]);}

                
            
        }
        
    }
    else {

        if($req->hasFile('file')){
            $file = $req->file('file');
            $filename = $req->file->getClientOriginalName();
            $file->move(public_path('images/article'),$filename);
            $article = new Article;
            $article->id_cms_users=$user->id;
            $article->titre=$req->titre;
            $article->contenue=$req->contenue;
            $article->photo=$filename;
            if($req->hasFile('media')){
                $file = $req->file('media');
                $ext= $file->getClientOriginalExtension();
                $filename = $req->media->getClientOriginalName();

                if ($ext=='jpg'||$ext=='jpeg'||$ext=='png'){
                $file->move(public_path('images/article'),$filename);
                $media = new Media;
                $media->id_article=$id_article;
                $media->media=$filename;
                $media->extension=$ext;
                $media->save();}
                
                elseif($ext=='mp4'||$ext=='avi'){
                    $file->move(public_path('videos/article'),$filename);
                    $media = new Media;
                    $media->id_article=$id_article;
                    $media->media=$filename;
                    $media->extension=$ext;
                    $media->save();}

                elseif($ext=='doc'||$ext=='txt'||$ext=='pdf'){
                     $file->move(public_path('txt/article'),$filename);
                     $media = new Media;
                     $media->id_article=$id_article;
                     $media->media=$filename;
                     $media->extension=$ext;
                     $media->save();}
                elseif($ext=='mp3'){
                      $file->move(public_path('audio/article'),$filename);
                      $media = new Media;
                      $media->id_article=$id_article;
                      $media->media=$filename;
                      $media->extension=$ext;
                      $media->save();}
                }}

            
    }
        return redirect('/accueil')->with('success','<h5>Votre article a été modifié avec succès!</h5>');
    }

}

public function DeleteArticle($id_cms_users,$id_article){
    DB::table('article')->where('id', '=', $id_article)->delete();
    return redirect('/accueil')->with('success','<h5>Votre article a été supprimé!</h5>');

}

    public function pagenotfound(){
        return view ('errors.404');
    }

}
