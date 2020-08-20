@extends('layout')
@section('content')


@if($row->id==[])
<div class="container" style="margin-top: 40px;margin-bottom:120px;">
<h3>Vous n'avez écris aucun article</h3>
</div>
@else


<div class="site-section" style="background-color: rgb(247, 247, 247)">
  <div class="container">
    <div class="row mb-5">
      <div class="col-12">
        <h2>Vos Articles</h2>
      </div>
    </div>
  
    <div class="row">
      @foreach ($re as $row)
      <div class="col-lg-4 mb-4 " >
        <div class="entry2 img-thumbnail" style="padding: 20px; ">
          <a href='{{url("article/$row->id/$row->id_author_article")}}'><img src="{{ asset("images/article/$row->photo")}}" alt="Image" class=" img-fluid rounded col-12" style="height:200px;"></a>
          <div class="excerpt">
            @if ($row->name_category=='Politique')
            <span class="post-category text-white bg-warning mb-3">{{$row->name_category}}</span>
            @elseif ($row->name_category=='Sport') 
            <span class="post-category text-white bg-success mb-3">Sport</span>
            @elseif ($row->name_category=='Technologie')
            <span class="post-category text-white bg-secondary mb-3">Technologie</span>
            @endif

          <h2><a href='{{url("article/$row->id")}}'>{{$row->titre}}</a></h2>
          <div class="post-meta align-items-center text-left clearfix">
            <figure class="author-figure mb-0 mr-3 float-left">
              @if($row->author_photo=='')
            <img src="{{ asset("td.png")}}" alt="Image" class="img-fluid">
            @else
            <img src="{{ asset("images/user/$row->author_photo")}}" alt="Image" class="img-fluid">
            @endif
            </figure>
            <span class="d-inline-block mt-1">By <a href="#">{{$row->name_author}}</a></span>
            <span>&nbsp;-&nbsp; Dernière mise à jour {{ date('M,d Y',strtotime($row->updated_at)) }}</span>
          </div>
          
          <p>{{str_limit(strip_tags($row->contenue),200)}}</p>
          <a href='{{url("article/$row->id/$row->id_author_article")}}'><button type="button" class="btn btn-outline-primary" >Voir plus</button></a>
        </div>
        </div>
      </div>
      @endforeach







  
  </div>

  <div class="row text-center pt-5 ">
    <div class="col-md-12 col-lg-12">
      
        {{ $re->links() }}
      
    </div>
  </div>
</div>
</div>

@endif
@endsection

