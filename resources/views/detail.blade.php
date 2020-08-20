@extends('layout')
@section('content')
  
@if (session ('success_message'))
    <div class="alert alert-success">
        {{ session('success_message')}}
    </div>
    @endif

<div class="site-cover site-cover-sm same-height overlay single-page" style="background-image: url({{ asset( "images/article/$row->photo") }} );">
    <div class="container">
      <div class="row same-height justify-content-center">
        <div class="col-md-12 col-lg-10">
          <div class="post-entry text-center">
            @foreach ($idcat as $qwe)

            @if ($qwe->id_article == $row->id)
            
            @if ($qwe->name=='POLITIQUE')
            <span class="post-category text-white bg-warning mb-3">POLITIQUE</span>
            @elseif ($qwe->name=='SPORT') 
            <span class="post-category text-white bg-success mb-3">SPORT</span>
            @elseif ($qwe->name=='TECHNOLOGIE')
            <span class="post-category text-white bg-secondary mb-3">TECHNOLOGIE</span>
            @else
            <span class="post-category text-white bg-warning mb-3">{{$qwe->name}}</span>
            @endif
            @endif

            @endforeach
        
            <h1 class="mb-4"><a href="#">{{$row->titre}}</a></h1>
            <div class="post-meta align-items-center text-center">
              <figure class="author-figure mb-0 mr-3 d-inline-block">
              
                @if($row->author_photo=='')
                <img src="{{ asset("td.png")}}" alt="Image" class="img-fluid">
                @else
                <img src="{{ asset("images/user/$row->author_photo")}}" alt="Image" class="img-fluid">
                @endif

              </figure>              
              <span class="d-inline-block mt-1">By {{$row->name_author}}</span>
              <span>&nbsp;-&nbsp; Créé à {{ date('M,d Y',strtotime($row->created_at)) }}</span>
              

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  
<section class="site-section py-lg">
    <div class="container">
      
      <div class="row blog-entries element-animate">

        <div class="col-md-12 col-lg-8 main-content">
          
          <div class="post-content-body">

            {!! $row->contenue !!}
               
          </div>
        
        <img src="{{ asset("images/article/$row->photo")}}" alt="Image" class="img-fluid rounded">
        <hr>
        @if($med->id!=null)
          <h3>Autres Media</h3>
          <br>

        @if($med->extension=='jpg'||$med->extension=='jpeg' || $med->extension=='png')
        <img src="{{ asset("images/article/$med->media")}}" alt="Image" class="img-fluid rounded">
        @elseif($med->extension=='mp4'||$med->extension=='avi')
        <video class="col-12" controls src="{{ asset("videos/article/$med->media")}}" >
          Your browser does not support the video tag.
        </video>

        @elseif($med->extension=='txt'||$med->extension=='doc'||$med->extension=='pdf')
        Télécharger: <a href="{{ asset("txt/article/$med->media")}}" download> {{$med->media}}</a>

        @elseif($med->extension=='mp3')
        <audio controls>
          <source src="{{ asset("audio/article/$med->media")}}" type="audio/mpeg">
        Your browser does not support the audio element.
        </audio>

        @endif
        <hr>
        @endif
         
          <div class="pt-5">
            <h3 class="mb-5">({{ $com->count() }}) Commentaires</h3>
            <ul class="comment-list">
              <li class="comment">
                  <div class="comment-body">
                  @foreach ($com as $row)
                  <div class="vcard">
                    
                    @if($row->author_photo=='')
                    <img src="{{ asset("td.png")}}" alt="Image" class="img-fluid">
                    @else
                    <img src="{{ asset("images/user/$row->author_photo")}}" alt="Image" class="img-fluid">
                    @endif                  
                  
                  </div>
                  <h6>{{$row->name_author}}</h6>
                  <div class="meta">Créé à - {{ date('M,d Y',strtotime($row->created_at)) }}</div>
                                    
                  <p>{{$row->contenue}}</p>
                  @endforeach

                </div>
              </li>
                        
              @guest
              <h3>Connectez-vous pour ajouter un commentaire</h3>
              @else
              <div class="comment-form-wrap pt-5">
              <h3 class="mb-5">Ajouter un commentaire</h3>


              <form action='{{URL("/comment/{$id_article}")}}' class="p-5 bg-light" method="POST">
                @csrf
                                                
                <div class="form-group">
                  <input name="id_article" type="hidden" value="{{$row->id_article}}">
                  
                  <label for="message">Commentaire </label>
                  <textarea name="message" cols="30" rows="2" class="form-control"></textarea>
                </div>
                <div class="form-group">
                  <input type="submit" value="Envoyer" class="btn btn-primary">
                </div>
              </form>
            </div>
            @endguest
          </div>
        </div>

        <!-- END main-content -->

        <div class="col-md-12 col-lg-4 sidebar">
          <!-- END sidebar-box -->
          <div class="sidebar-box">
            <div class="bio text-center">
              
              @if($row->author_photo=='')
                <img src="{{ asset("td.png")}}" alt="Image" class="img-fluid">
                @else
                <img src="{{ asset("images/user/$row->author_photo")}}" alt="Image" class="img-fluid">
                @endif

              <div class="bio-body">
                <h2>{{$row->name_author}}</h2>
                @if($check==true)
                <a href='{{url("/modifier/$id_cms_users/$row->id_article")}}'><button type="button" class="btn btn-danger" >Modifier l'article</button></a>
                
                <form action='{{URL("/supprimer/$id_cms_users/$tuto->id_article")}}' method="POST" enctype="multipart/form-data">
                   @csrf
                    <div class="form-group">
                      <input type="submit" value="Supprimer l'article" class="btn btn-link">
                    </div>
                </form>
                
                @endif
              </div>
            </div>
          </div>
          <!-- END sidebar-box -->  
          
          

          
        </div>
        <!-- END sidebar -->

      </div>
    </div>
  </section>
  
  @include('sweetalert::alert')
@endsection