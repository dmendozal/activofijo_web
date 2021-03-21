<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Activos Fijos - @yield('title')</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="shortcut icon" type="image/x-icon" href="{{asset('assets/images/favicon.ico')}}">
    <link rel="stylesheet" href="{{ asset('assets/css/vendor/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{ asset('assets/css/vendor/material-design-iconic-font.min.css')}}">
    <link rel="stylesheet" href="{{ asset('assets/css/vendor/font-awesome.min.css')}}">
    <link rel="stylesheet" href="{{ asset('assets/css/vendor/themify-icons.css')}}">
    <link rel="stylesheet" href="{{ asset('assets/css/vendor/cryptocurrency-icons.css')}}">
    <link rel="stylesheet" href="{{ asset('assets/css/plugins/plugins.css')}}">
    <link rel="stylesheet" href="{{ asset('assets/css/helper.css')}}">
    <link rel="stylesheet" href="{{ asset('assets/css/style.css')}}">
    <link id="cus-style" rel="stylesheet" href="{{asset('assets/css/style-primary.css')}}">

</head>

<body id="sidebar">

    <div class="main-wrapper" id="mainprincipal">

        <!-- Parte superio de la pagina -->
        <!-- Header Section Start -->
        <div class="header-section">
            <div class="container-fluid">
                <div class="row justify-content-between align-items-center">

                    <!-- Header Logo (Header Left) Start -->
                    <div class="header-logo col-auto">
                        <img src="{{asset('assets/images/logo.jpg')}}" style="height: 80px;width: auto" />
                        <center>
                            <h6 id="tituloSidebar">Facultad de Administracion de Empresas</h6>
                        </center>
                        {{-- <a href="index.html">
                    <img src="assets/images/Escudo_FICCT.jpg" alt=""  height="50%" width="50%">
                </a> --}}
                    </div><!-- Header Logo (Header Left) End -->

                    <!-- Header Right Start -->
                    <div class="header-right flex-grow-1 col-auto">
                        <div class="row justify-content-between align-items-center">

                            <!-- Side Header Toggle & Search Start -->
                            <div class="col-auto">
                                <div class="row align-items-center">

                                    <!--Side Header Toggle-->
                                    <div class="col-auto"><button class="side-header-toggle"><i
                                                class="zmdi zmdi-menu"></i></button></div>

                                    <!--Header Search-->
                                    <div class="col-auto">

                                        <div class="header-search">

                                            <button class="header-search-open d-block d-xl-none"><i
                                                    class="zmdi zmdi-search"></i></button>

                                            <div class="header-search-form">
                                                <form action="#">
                                                    <input type="text" placeholder="Search Heres">
                                                    <button><i class="zmdi zmdi-search"></i></button>
                                                </form>
                                                <button class="header-search-close d-block d-xl-none"><i
                                                        class="zmdi zmdi-close"></i></button>
                                            </div>

                                        </div>
                                    </div>

                                </div>
                            </div><!-- Side Header Toggle & Search End -->

                            <!-- Header Notifications Area Start -->
                            <div class="col-auto">

                                <ul class="header-notification-area">

                                    <!--Language-->
                                    <li class="adomx-dropdown position-relative col-auto">
                                    <div id="visita"></div>

                                        <!-- Dropdown -->
                                        <ul class="adomx-dropdown-menu dropdown-menu-language">
                                            <li><a href="#"><img src="assets/images/flags/flag-1.jpg" alt="">
                                                    English</a></li>
                                            <li><a href="#"><img src="assets/images/flags/flag-2.jpg" alt="">
                                                    Japanese</a></li>
                                            <li><a href="#"><img src="assets/images/flags/flag-3.jpg" alt=""> Spanish
                                                </a></li>
                                            <li><a href="#"><img src="assets/images/flags/flag-4.jpg" alt="">
                                                    Germany</a></li>
                                        </ul>

                                    </li>

                                    <!--Mail-->
                                    <li class="adomx-dropdown col-auto">
                                        <a class="toggle" href="#"><i class="zmdi zmdi-comment-edit"></i><span
                                                class="badge"></span></a>

                                        <!-- Dropdown -->
                                        <div class="adomx-dropdown-menu dropdown-menu-mail">
                                            <div class="head">
                                                <h4 class="title">Elija tipo de letra que guste</h4>
                                            </div>
                                            <div class="body custom-scroll">
                                                <ul>
                                                    <li>
                                                        <h5 class="title"> Tamaño de letra</h5>
                                                        <select id="selectTam" class="form-control" onclick="_cambiarTamaño()">
                                                            <option value="8" onclick="_cambiarTamaño()">8</option>
                                                            <option value="10" onclick="_cambiarTamaño()">10</option>
                                                            <option value="12" onclick="_cambiarTamaño()">12</option>
                                                            <option value="14" onclick="_cambiarTamaño()">14</option>
                                                            <option value="16" onclick="_cambiarTamaño()">16</option>
                                                            <option value="18" onclick="_cambiarTamaño()">18</option>
                                                            <option value="20" onclick="_cambiarTamaño()">20</option>
                                                            <option value="24" onclick="_cambiarTamaño()">24</option>
                                                            <option value="28" onclick="_cambiarTamaño()">28</option>
                                                            <option value="32" onclick="_cambiarTamaño()">32</option>
                                                        </select>   
                                                    </li>   
                                                    <li>
                                                        <a href="#" onclick="_cambiarLetra(1)">
                                                            <div class="content">
                                                                <h6>Cursiva</h6>
                                                                <p style="font-family: cursive">There are many variations of passages of Lorem Ipsum
                                                                    available. </p>
                                                            </div>
                                                            <span class="reply"><i
                                                                    class="zmdi zmdi-mail-reply"></i></span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" onclick="_cambiarLetra(2)">
                                                            <div class="content">
                                                                <h6>Arial</h6>
                                                                <p style="font-family: Arial">There are many variations of passages of Lorem Ipsum
                                                                    available. </p>
                                                            </div>
                                                            <span class="reply"><i
                                                                    class="zmdi zmdi-mail-reply"></i></span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" onclick="_cambiarLetra(3)">
                                                            <div class="content">
                                                                <h6>Times New Roman</h6>
                                                                <p style="font-family: 'Times New Roman', Times, serif">There are many variations of passages of Lorem Ipsum
                                                                    available. </p>
                                                            </div>
                                                            <span class="reply"><i
                                                                    class="zmdi zmdi-mail-reply"></i></span>
                                                        </a>
                                                    </li>

                                                    <li>
                                                        <a href="#" onclick="_cambiarLetra(4)">
                                                            <div class="content">
                                                                <h6>Curriew</h6>
                                                                <p style="font-family: 'Courier New', Courier, monospace">There are many variations of passages of Lorem Ipsum
                                                                    available. </p>
                                                            </div>
                                                            <span class="reply"><i
                                                                    class="zmdi zmdi-mail-reply"></i></span>
                                                        </a>
                                                    </li>

                                                    
                                                    <li>
                                                        <a href="#" onclick="_cambiarLetra(5)">
                                                            <div class="content">
                                                                <h6>Italic</h6>
                                                                <p style="font-family: 'Italic'">There are many variations of passages of Lorem Ipsum
                                                                    available. </p>
                                                            </div>
                                                            <span class="reply"><i
                                                                    class="zmdi zmdi-mail-reply"></i></span>
                                                        </a>
                                                    </li>
                                             
                                                </ul>
                                            </div>
                                        </div>

                                    </li>

                           
                                    
                                    <li class="adomx-dropdown col-auto">
                                        <a class="toggle" href="#">
                                            <span class="user">
                                                <span class="avatar">
                                                    <img src="{{asset(Auth::User()->foto)}}" alt="">
                                                    <span class="status"></span>
                                                </span>
                                                <span class="name">{{Auth::User()->name}}</span>
                                            </span>
                                        </a>

                                        <!-- Dropdown -->
                                        <div class="adomx-dropdown-menu dropdown-menu-user">
                                            <div class="head">
                                                <h5 class="name"><a href="#">{{Auth::User()->name}}
                                                        {{Auth::User()->apellido}}</a></h5>
                                                <a class="mail" href="#">{{Auth::User()->email}}</a>
                                            </div>
                                            <div class="body">
                                                <ul>
                                                    <li><a href="{{route('usuarios.show',Auth::User()->id)}}"><i
                                                                class="zmdi zmdi-account"></i>Perfil</a></li>
                                                </ul>
                                                <ul>
                                                    <li><a href="{{ route('logout') }}" onclick="event.preventDefault();
                                                document.getElementById('logout-form').submit();">
                                                            <i class="zmdi zmdi-lock-open"></i>Cerrar Sesion</a></li>
                                                    <li>
                                                        <form id="logout-form" action="{{ route('logout') }}"
                                                            method="POST" style="display: none;">
                                                            @csrf
                                                        </form>
                                                    </li>
                                                </ul>
                                                <ul>

                                                </ul>
                                            </div>
                                        </div>

                                    </li>

                                </ul>

                            </div><!-- Header Notifications Area End -->

                        </div>
                    </div><!-- Header Right End -->

                </div>
            </div>
        </div><!-- Header Section End -->
        @include('partials.menu')
        <!-- Parte del contenido de la pagina-->
        <div class="content-body">
            <div class="row mbn-30">
                @yield('content')
            </div>
        </div>
        @include('partials.footer')
    </div>
    @include('partials.script')
</body>

</html>