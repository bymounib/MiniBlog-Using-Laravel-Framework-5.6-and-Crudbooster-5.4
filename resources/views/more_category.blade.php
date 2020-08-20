@extends('layout')
@section('content')
  
  
    <div class="site-section" style="background-color: rgb(247, 247, 247)">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12">
            <h2>Toutes les catégories</h2>
            <ul>
                @foreach ($result as $row)
                  
                <li style="font-size: 24px; margin-bottom:10px;"><a href='{{url("category/{$row->id}")}}'>{{$row->name}} </a></li>
      
                  @endforeach
                </ul>
          </div>
        </div>
      

    </div>
  </div>

 

  @endsection