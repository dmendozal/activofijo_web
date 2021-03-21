<!-- Sidebar de la pagina -->

<div class="side-header show">
    <button class="side-header-close"><i class="zmdi zmdi-close"></i></button>
    <!-- Side Header Inner Start -->
    <div class="side-header-inner custom-scroll">

        <nav class="side-header-menu" id="side-header-menu">
            <ul>
                <li><a href="{{ route('home')}}"><i class="ti-home"></i> <span>Dashboard</span></a></li>


                </li>
                @permission('modulo_usuario.acceso')
                <li class="has-sub-menu"><a href="#"><i class="ti-package"></i> <span>Modulo Usuarios</span></a>
                    <ul class="side-header-sub-menu">
                        <li><a href="{{route('permisos.index')}}"><span>Gestionar Permisos</span></a></li>
                        <li><a href="{{route('roles.index')}}"><span>Gestionar Roles</span></a></li>
                        <li><a href="{{route('usuarios.index')}}"><span>Gestionar Usuarios</span></a></li>
                    </ul>
                </li>
                @endpermission
                @permission('modulo_activo.acceso')
                <li class="has-sub-menu"><a href="#"><i class="ti-package"></i> <span>Modulo Activos</span></a>
                    <ul class="side-header-sub-menu">
                        <li><a href="{{ route('asignacion.index')}}"><span>Gestionar Asignacion</span></a></li>
                        <li><a href="{{ route('activo.index')}}"><span>Gestionar Activo</span></a></li>
                        <li><a href="{{ route('estado.index')}}"><span>Gestionar Estado</span></a></li>
                        <li><a href="{{ route('ubicacion.index')}}"><span>Gestionar Ubicacion</span></a></li>
                        <li><a href="{{ route('bien.index')}}"><span>Gestionar Bien</span></a></li>
                        <li><a href="{{ route('mantenimiento.index')}}"><span>Gestionar Mantenimiento</span></a></li>
                        <li><a href="{{ route('empresa.index')}}"><span>Gestionar Empresas</span></a>
                    </ul>
                </li>
                @endpermission

                <li class="has-sub-menu"><a href="#"><i class="ti-stamp"></i> <span>Reportes y Estadisticas</span></a>
                    <ul class="side-header-sub-menu">
                    <li><a href="{{url('estadisticas')}}"><span>Estadisticas activos por ambientes</span></a></li>
                    <li><a href="{{url('estadisticasPorcostos')}}"><span>Estadisticas costos por ambientes</span></a></li>
                    <li><a href="{{url('reporte')}}"><span>Reportes</span></a></li>
 
                    </ul>
                </li>


            </ul>
        </nav>

    </div>
</div>
