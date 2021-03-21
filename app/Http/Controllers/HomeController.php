<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\User;
use Illuminate\Support\Facades\Auth;
use App\Tracer;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->ispectore = true;
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        VisitasController::hit();
        $cantidad=VisitasController::cantidad();
        return view('home', compact('cantidad'));
    }

    public static function visitorCounter()
    {
        $archivo = public_path() . '/assets/visitorCounter.txt';
        $f = fopen($archivo, "r");
        $contador = 0;
        if ($f) {
            $contador = fread($f, filesize($archivo));
            $contador = $contador + 1;
            fclose($f);
        }

        $f = fopen($archivo, "w+");
        if ($f) {
            fwrite($f, $contador);
            fclose($f);
        }
        return $contador;
    }
}
