@extends('layout')
@section('content')

<style>
	input:focus {
      border: 2px solid white!important;
    }
</style>

	<div class="container-contact100">

		<div class="wrap-contact100">
			<span class="contact100-form-title">
				Ajouter un article
			</span>
				@if ($errors->any())
				<div class="alert alert-danger">
					<ul>
						@foreach ($errors->all() as $error)
							<li>{{ $error }}</li>
						@endforeach
					</ul>
				</div>
				@endif
				
				<form action='{{URL("/ajout/$id_cms_users/$art")}}' method="POST" enctype="multipart/form-data">
					@csrf
				<div class="wrap-input100 validate-input">
					<input class="input100" name="titre" type="text" placeholder="Titre*">
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input">
					<input class="input100" name="cat_name" type="text" placeholder="Category*">
					<span class="focus-input100"></span>
				</div>

				

				<h5>Contenue*</h5>

				<div class="wrap-input100 validate-input">
					<textarea class="form-control" id="summary-ckeditor" name="contenue" placeholder="Contenue*"></textarea>
					<script src="{{ asset('ckeditor/ckeditor.js') }}"></script>
					<script>
					CKEDITOR.replace( 'summary-ckeditor' );
					</script>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" style=" padding: 20px">
				 
				  <label for="file" id="category"><strong>Photo*</strong></label>
				  <input name="file" type="file" id="fileName" accept=".jpg,.jpeg,.png" /><br><br>
				  
				</div>

				<div class="wrap-input100 validate-input" style=" padding: 20px">
				 
					<label for="file" id="category"><strong>Autres Média</strong></label>
					<input name="media" type="file" id="media" /><br><br>
					<input name="art" type="hidden" value="{{$art}}">

				  </div>

                    
				 <div class="form-group">
					<input type="submit" value="Envoyer" class="btn btn-primary">
				  </div>
				
			</form>
		</div>
	</div>




@endsection