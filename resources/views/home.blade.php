@extends('layouts.app')

@section('content')


<h5 id="search-results"></h5>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header" style="background-color: crimson;color: white;font-weight: bold;font-size:20px">Bienvenido</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    
                    Bienvenidos a la Página de la Carrera de Administración de Empresas de la Universidad Autónoma Gabriel René Moreno (U.A.G.R.M.).

                    Esperamos que puedas encontrar toda la información y documentos de tu interés. Por este medio te estaremos haciendo conocer sobre las novedades y eventos académicos de la Carrera, así que ¡no dejes de visitarnos!.
                    <br>
                    <strong>Lic. Eduardo Alandia Rodriguez</strong>
                    <br>
                    <strong>Director de Carrera</strong>
                    <br>
                    <strong>U.A.G.R.M.</strong>
                    

                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header" style="background-color: mediumblue;color: white;font-weight: bold;font-size:20px">Marco Institucional</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <h3>Misión</h3>
                    Formar profesionales capaces de crear y gerenciar empresas, altamente competitivos, emprendedores y con profundo sentido humano, en el marco de los principios y valores de la universidad; contribuyendo a la construcción de una sociedad con mejor calidad de vida.                    
                    <h3>Visión</h3>
                    Ser reconocida a nivel regional y nacional por la calificación de sus docentes, diversidad y pertinencia de sus programas de formación profesional, sustentados en un modelo curricular enfocado al desarrollo de competencias, a través de la educación integral que recibirán sus estudiantes, haciéndolos competitivos y abiertos al cambio, generando una presencia cultural que aporta al desarrollo del Departamento de Santa Cruz.


                </div>
            </div>
        </div>
    </div>
</div>

<div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header" style="background-color: crimson;color: white;font-weight: bold;font-size:20px">Contacto</div>
    
                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif
                        <strong> Dirección:</strong>
                        Ciudad Universitaria, Av. Busch entre 2º y 3º anillo, Módulo 255, 1er Piso.
                        <br>
                        <strong>Teléfono / Fax:</strong>
                        (591) 3- 3577783
                        <br>
                        <strong>Correo:</strong>
                        c_administracion@uagm.edu.com
                        <br>
                        <strong>Redes Sociales:</strong>
                        <a href="https://www.facebook.com/Carrera-de-Administraci%C3%B3n-de-Empresas-UAGRM-191184877648527/"> Carrera de Administración de Empresas - U.A.G.R.M.</a>
    
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header" style="background-color: mediumblue;color: white;font-weight: bold;font-size:20px">Numero de visitas</div>
                   <center><h3> {{$cantidad}} visitas.</h3></center>
                    <div class="gcse-search"></div>
                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
        <script>    
            $var=@json($cantidad);
            localStorage.setItem('cantidad',$var);
            console.log(localStorage.getItem('cantidad'));
        </script>
@endsection
