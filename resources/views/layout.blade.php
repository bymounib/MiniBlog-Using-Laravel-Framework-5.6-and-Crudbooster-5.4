<!DOCTYPE html>
<html lang="en">
  <head>
    <title>{{$page_title}}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href='https://fonts.googleapis.com/css?family=Muli:300,400,700|Playfair+Display:400,700,900' rel="stylesheet">
	<link rel="stylesheet" type="text/css" href={{ asset("css/ajout.css") }}>
    <link rel="stylesheet" href={{ asset('fonts/icomoon/style.css') }}>
    <link rel="stylesheet" href={{ asset('css/bootstrap.min.css') }}>
    <link rel="stylesheet" href={{ asset('css/magnific-popup.css') }}>
    <link rel="stylesheet" href={{ asset('css/jquery-ui.css') }}>
    <link rel="stylesheet" href={{ asset('css/owl.carousel.min.css') }}>
    <link rel="stylesheet" href={{ asset('css/owl.theme.default.min.css') }}>
    <link rel="stylesheet" href={{ asset('css/bootstrap-datepicker.css') }}>
    <link rel="stylesheet" href={{ asset('fonts/flaticon/font/flaticon.css') }}>
    <link rel="stylesheet" href={{ asset('css/aos.css') }}>



    
    <link rel="stylesheet" href={{ asset('css/style.css') }}>
  </head>
  <body>
  <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
    
    <header class="site-navbar " role="banner">
      <div class="container-fluid">
        <div class="row align-items-center">
          
          <div class="col-12 search-form-wrap js-search-form">
            <form method="get" action="#">
              <input type="text" id="s" class="form-control" placeholder="Search...">
              <button class="search-btn" type="submit"><span class="icon-search"></span></button>
            </form>
          </div>
          
          <div class="col-4 site-logo">
          <a href='{{url("/accueil")}}' class="text-black h2 mb-0">MiniBlog</a>
          </div>

          <div class="col-8 text-right">
            <nav class="site-navigation" role="navigation">
              <ul class="site-menu js-clone-nav mr-auto d-none d-lg-block mb-0">
                <li><a href='{{url("/accueil")}}'>Accueil</a></li>
                  


                


                @guest
                <li><a href='{{url("/login")}}'>Se connecter</a></li>
                <li><a href='{{url("/register")}}'>Créer un compte</a></li>
                @else
                <li><a href='{{url("/profile/$id_cms_users")}}'>Profile</a></li>
                <li><a href='{{url("/mesarticles/$id_cms_users")}}'>Vos articles</a></li>

                <li><a href='{{url("/ajout/$id_cms_users/$art")}}'>Ajouter un article</a></li>
                
                <li><a href="{{ route('logout') }}"
                  onclick="event.preventDefault();
                                document.getElementById('logout-form').submit();">
                   Se déconnecter
               </a></li>
               <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                @csrf
            </form>

          @endguest
              </ul>
            </nav>
            <a href="#" class="site-menu-toggle js-menu-toggle text-black d-inline-block d-lg-none"><span class="icon-menu h3"></span></a></div>
          </div>

      </div>
    </header>



    
    @yield('content')
    


    
    
    
    <div class="site-footer" >
      <div class="container" >
        <div class="row mb-5">
          <div class="col-md-4">
            <h3 class="footer-heading mb-4">A propos</h3>
            <h6>Ce projet a été fait lors d'un stage d'été au sein de l'entreprise Dev Tweaks</h6>

          </div>
          <div class="col-md-3 ml-auto">
            <!-- <h3 class="footer-heading mb-4">Navigation</h3> -->
            <ul class="list-unstyled float-left">


              <li><a href='{{url("category/86")}}'>Sport </a></li>
              <li><a href='{{url("category/88")}}'>Technologie </a></li>
              <li><a href='{{url("category/more")}}'>Voir plus de categories </a></li>


            </ul>

            
          </div>
    
    
    
         
          
        
          <div class="col-12 text-center">
            <p>
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
              Copyright &copy; {{ date('Y')}} All rights reserved 
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
              </p>
          </div>
      
    
  </div>
</div>
</div>

  <script src={{ asset('js/jquery-3.3.1.min.js') }}></script>
  <script src={{ asset('js/jquery-migrate-3.0.1.min.js') }}></script>
  <script src={{ asset('js/jquery-ui.js') }}></script>
  <script src={{ asset('js/popper.min.js') }}></script>
  <script src={{ asset('js/bootstrap.min.js') }}></script>
  <script src={{ asset('js/owl.carousel.min.js') }}></script>
  <script src={{ asset('js/jquery.stellar.min.js') }}></script>
  <script src={{ asset('js/jquery.countdown.min.js') }}></script>
  <script src={{ asset('js/jquery.magnific-popup.min.js') }}></script>
  <script src={{ asset('js/bootstrap-datepicker.min.js') }}></script>
  <script src={{ asset('js/aos.js') }}></script>

  <script src={{ asset('js/main.js') }}></script>



  </body>
</html>