<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\assignments;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
		$get_assignments = assignments::where('stu_regno','10102')->get();
		return view('home', ['get_assignments'=>$get_assignments]);
    }
}
