    <!-- JS
============================================ -->

    <!-- Global Vendor, plugins & Activation JS -->
    <script src="{{asset('assets/js/vendor/modernizr-3.6.0.min.js')}}"></script>
    <script src="{{asset('assets/js/vendor/jquery-3.3.1.min.js')}}"></script>
    <script src="{{asset('assets/js/vendor/popper.min.js')}}"></script>
    <script src="{{asset('assets/js/vendor/bootstrap.min.js')}}"></script>
    <!--Plugins JS-->
    <script src="{{asset('assets/js/plugins/perfect-scrollbar.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/tippy4.min.js.js')}}"></script>
    <!--Main JS-->
    <script src="{{asset('assets/js/main.js')}}"></script>
    <script src="https://unpkg.com/lunr/lunr.js"></script>


    <script> 
      document.getElementById('mainprincipal').style.fontFamily=localStorage.getItem('tipo');
      document.getElementById('mainprincipal').style.fontSize=localStorage.getItem('tamaño')+"px";
      localStorage.getItem('isDark')==null?document.getElementById('sidebar').className="side-header-"+localStorage.getItem('colorSidebar')+"  header-top-"+localStorage.getItem('colorTop'):document.getElementById('sidebar').className=localStorage.getItem('isDark');
      document.getElementById('visita').innerHTML="Numero de Visitas: "+localStorage.getItem('cantidad');
      document.getElementById('tituloSidebar').style.color=localStorage.getItem('colorTitulo');
      document.getElementById('visita').style.color=localStorage.getItem('colorTitulo');

      localStorage.getItem('isDark')==null?document.getElementById('isDarkio').checked.checked='false':document.getElementById('isDarkio').checked='true';

    function _cambiarLetra($numero){
         switch($numero){
             case 1:localStorage.setItem('tipo','cursive');
                    document.getElementById('mainprincipal').style.fontFamily='cursive';
                    break;
             case 2:localStorage.setItem('tipo','Arial');
                    document.getElementById('mainprincipal').style.fontFamily='Arial';
                    break;    
            case 3:localStorage.setItem('tipo','Times New Roman');
                    document.getElementById('mainprincipal').style.fontFamily='Times New Roman';
                    break;    
            case 4:localStorage.setItem('tipo','Courier New');
                    document.getElementById('mainprincipal').style.fontFamily='Courier New';
                    break; 
            case 5:localStorage.setItem('tipo','Italic');
                    document.getElementById('mainprincipal').style.fontFamily='Italic';
                    break;              
         }

    }   
    
    function _cambiarTamaño(){
        $var=document.getElementById('selectTam').value;
        localStorage.setItem('tamaño',$var);
        document.getElementById('mainprincipal').style.fontSize=$var+"px";
        console.log($var);
    }

    function _cambiarSidebar($color){
        switch($color){
            case 1:localStorage.setItem('colorSidebar','light');
            break;
            case 2:localStorage.setItem('colorSidebar','dark');
            break;            
            case 3:localStorage.setItem('colorSidebar','primary');
            break;            
            case 4:localStorage.setItem('colorSidebar','secundary');
            break;            
            case 5:localStorage.setItem('colorSidebar','indigo');
            break;
            case 6:localStorage.setItem('colorSidebar','purple');
            break;
            case 7:localStorage.setItem('colorSidebar','pink');
            break;
            case 8:localStorage.setItem('colorSidebar','red');
            break;
            case 9:localStorage.setItem('colorSidebar','brown');
            break;
            case 10:localStorage.setItem('colorSidebar','orange');
            break;
            case 11:localStorage.setItem('colorSidebar','green');
            break;
            case 12:
                if(localStorage.getItem('isDark')==null){
                    localStorage.setItem('isDark','skin-dark');
                }else{
                    localStorage.removeItem('isDark');
                }
            break;
        }   
    }    
    function _cambiarHeader($color){
        switch($color){
            case 1:localStorage.setItem('colorTop','light');
            document.getElementById('tituloSidebar').style.color='black';
            document.getElementById('visita').style.color='black';
                localStorage.setItem('colorTitulo','black');
            break;
            case 2:localStorage.setItem('colorTop','dark');
                document.getElementById('tituloSidebar').style.color='white';
                document.getElementById('visita').style.color='white';
                localStorage.setItem('colorTitulo','white');
            break;            
            case 3:localStorage.setItem('colorTop','primary');
            document.getElementById('tituloSidebar').style.color='white';
            document.getElementById('visita').style.color='white';
                localStorage.setItem('colorTitulo','white');
            break;            
            case 4:localStorage.setItem('colorTop','secundary');
            document.getElementById('tituloSidebar').style.color='white';
            document.getElementById('visita').style.color='white';
                localStorage.setItem('colorTitulo','white');
            break;            
            case 5:localStorage.setItem('colorTop','indigo');
            document.getElementById('tituloSidebar').style.color='white';
            document.getElementById('visita').style.color='white';
                localStorage.setItem('colorTitulo','white');
            break;
            case 6:localStorage.setItem('colorTop','purple');
            document.getElementById('tituloSidebar').style.color='white';
            document.getElementById('visita').style.color='white';
                localStorage.setItem('colorTitulo','white');
            break;
            case 7:localStorage.setItem('colorTop','pink');
            document.getElementById('tituloSidebar').style.color='white';
            document.getElementById('visita').style.color='white';
                localStorage.setItem('colorTitulo','white');
            break;
            case 8:localStorage.setItem('colorTop','red');
            document.getElementById('tituloSidebar').style.color='white';
            document.getElementById('visita').style.color='white';
                localStorage.setItem('colorTitulo','white');
            break;
            case 9:localStorage.setItem('colorTop','brown');
            document.getElementById('tituloSidebar').style.color='white';
            document.getElementById('visita').style.color='white';
                localStorage.setItem('colorTitulo','white');
            break;
            case 10:localStorage.setItem('colorTop','orange');
            document.getElementById('tituloSidebar').style.color='white';
            document.getElementById('visita').style.color='white';
                localStorage.setItem('colorTitulo','white');
            break;
            case 11:localStorage.setItem('colorTop','green');
            document.getElementById('tituloSidebar').style.color='white';
            document.getElementById('visita').style.color='white';
                localStorage.setItem('colorTitulo','white');
            break;
        }   
    }
    
    </script>
    <!--Moment-->
    <script src="{{asset('assets/js/plugins/moment/moment.min.js')}}"></script>

    <!--Daterange Picker-->
    <script src="{{asset('assets/js/plugins/daterangepicker/daterangepicker.js')}}"></script>
    <script src="{{asset('assets/js/plugins/daterangepicker/daterangepicker.active.js')}}"></script>

    <!--Echarts-->
    <script src="{{asset('assets/js/plugins/chartjs/Chart.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/chartjs/chartjs.active.js')}}"></script>

    <!--VMap-->
    <script src="{{asset('assets/js/plugins/vmap/jquery.vmap.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/vmap/maps/jquery.vmap.world.js')}}"></script>
    <script src="{{asset('assets/js/plugins/vmap/maps/samples/jquery.vmap.sampledata.js')}}"></script>
    <script src="{{asset('assets/js/plugins/vmap/vmap.active.js')}}"></script>

    <script src="{{asset('assets/js/plugins/datatables/datatables.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/datatables/datatables.active.js')}}"></script>

    <script src="{{asset('assets/js/plugins/select2/select2.full.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/select2/select2.active.js')}}"></script>
    <script src="{{asset('assets/js/plugins/nice-select/jquery.nice-select.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/nice-select/niceSelect.active.js')}}"></script>
    <script src="{{asset('assets/js/plugins/bootstrap-select/bootstrap-select.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/bootstrap-select/bootstrapSelect.active.js')}}"></script>

    <script src="{{asset('assets/js/plugins/filepond/filepond.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/filepond/filepond-plugin-image-exif-orientation.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/filepond/filepond-plugin-image-preview.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/filepond/filepond.active.js')}}"></script>
    <script src="{{asset('assets/js/plugins/dropify/dropify.min.js')}}"></script>
    <script src="{{asset('assets/js/plugins/dropify/dropify.active.js')}}"></script>


    <script async src="https://cse.google.com/cse.js?cx=123:456"></script>
