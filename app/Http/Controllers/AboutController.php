<?php

namespace App\Http\Controllers;

use App\About;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function about(){
        $abouts = About::get();
        return view('taicheng.about',compact('abouts'));
    }
}
