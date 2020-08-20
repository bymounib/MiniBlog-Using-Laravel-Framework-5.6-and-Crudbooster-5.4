@extends('layout')
@section('content')

<style type="text/css">
    .imgButton{
    text-align:center;
}

input:focus {
      border: 1px solid #0394fc !important;
    
    }
</style>


@if (session ('success_message'))
    <div class="alert alert-success">
        {{ session('success_message')}}
    </div>
    @endif



    @if ($errors->any())
    <div class="container">
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
  </div>
@endif


<div class="container">
<div class="row" style="margin-top: 30px; margin-bottom:30px;">
<div class="card" style="width:100%;">
<h4 class="card-header">
 Profile
 <button type="button" class="btn btn-info float-right" data-toggle="modal" data-target="#exampleModal">
    Modifier vos données
  </button>
 </h4>
 

 <div class="card-body">
         <div class="container">
             <div class="row">
             <div class="col-md-3 ">
             
                            @if($row->photo=='')
                            <img class=" img-thumbnail rounded float-left" src="{{ asset("td.png")}}" >
                            @else
                            <img class=" img-thumbnail rounded float-left" src="{{ asset("images/user/$row->photo")}}">
                            
                            @endif
                            
                        <div class="imgButton ">
                            <div>
                                <form action='{{URL("/editphoto")}}' method="POST" enctype="multipart/form-data">
                                    @csrf
                
                              <input name="file" type="file" id="fileName" accept=".jpg,.jpeg"  style="margin-top: 20px;"/>
                              <button type="submit" class="btn btn-primary float-left" style="margin-top: 10px;margin-bottom:10px;">Enregistrer</button>    
                            </form>
                            </div>
                        </div>
                    
                     
                    
        </div>
            <div class="col-md-9 col-sm-12">
                            
                <h5 >Nom : {{$row->name }}</h5>
                    <h5>E-mail :{{ $row->email }} </h5>
                    @if($row->id_cms_privileges==1)
                    <h5>Privilege : Admin</h5>
                    @else
                    <h5>Privilege : Membre</h5>
                    @endif
    
                </div>
                
            </div>
        </div>
    </div>
</div>
</div>
</div>


  
  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top: 45px;">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Modifier vos données</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <form  method="POST" action='{{URL("/profile/{id_cms_users}/name")}}'>
            @csrf
            <div class="form-group">
              <label for="exampleInputEmail1">Nom</label>
              <input type="text" value="{{$row->name}}" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" id="exampleInputEmail1" aria-describedby="emailHelp" name="name"  placeholder="Donner votre nouveau nom">

              @if ($errors->has('name'))
              <span class="invalid-feedback" role="alert">
                  <strong>{{ $errors->first('name') }}</strong>
              </span>
          @endif
        

            </div>

            <div class="form-group">
              <label for="exampleInputEmail1">Adresse Email</label>
              <input id="email" type="email" value="{{$row->email}}" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email"  autofocus placeholder="Donner votre nouveau Email">

              @if ($errors->has('email'))
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $errors->first('email') }}</strong>
                  </span>
              @endif
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Ancien Mot de passe</label>
              <input type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" id="exampleInputPassword1" name="password"  placeholder="Donner votre ancien mot de passe">
              
              @if ($errors->has('password'))
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $errors->first('password') }}</strong>
                  </span>
              @endif
            
            </div>

            <div class="form-group">
              <label for="exampleInputPassword1">Nouveau Mot de passe</label>
              <input type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" id="exampleInputPassword1" name="Newpassword"  placeholder="Donner votre nouveau mot de passe">
              
              @if ($errors->has('password'))
                  <span class="invalid-feedback" role="alert">
                      <strong>{{ $errors->first('password') }}</strong>
                  </span>
              @endif
            
            </div>
            
          



        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
          <button type="submit" class="btn btn-primary">Enregistrer</button>
        </div>
      </form>
      </div>
    </div>
  </div>

  
@include('sweetalert::alert')
@endsection

