<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class SearchController extends Controller
{
    function search(){

       
         if( isset($_GET['query']) && strlen($_GET['query']) > 1){

             $search_text = $_GET['query'];
             $videos = DB::table('video')->where('Name','LIKE','%'.$search_text.'%')->paginate(2);
             $videos->appends($request->all());
             return view('search',['videos'=>$videos]);
            
         }else{
             return view('search');
         }
        return view('search');
       
    }

    function find(Request $request){
            $request->validate([
              'query'=>'required|min:2'
           ]);
  
           $search_text = $request->input('query');
           $videos = DB::table('video')
                      ->where('Name','LIKE','%'.$search_text.'%')
                      ->paginate(2);
            return view('search',['videos'=>$videos]);

    }
}
