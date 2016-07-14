<?php

namespace App\Http\Controllers;

use DB;
use Auth;

/**
 * @Controller(prefix="/user")
 * @Middleware("auth")
 */
class UserController extends Controller
{

    /**
     * @Get("", as="user_index")
     */
    public function index()
    {
        $collect = [
            'brand' => DB::table('user_attentions')->where('user_id', Auth::user()->id)->where('type', 'BRAND')->count(),
            'goods' => DB::table('user_attentions')->where('user_id', Auth::user()->id)->where('type', 'GOODS')->count(),
        ];
        $userinfo = DB::table('userinfo')->where('user_id', Auth::user()->id)->first();

        return view('user.index', compact('collect', 'userinfo'));
    }
    
    /**
     * @Get("/update", as="user_update")
     */
    public function update()
    {
        $userinfo = DB::table('userinfo')->where('user_id', Auth::user()->id)->first();
        
        return view('user.update', compact('userinfo'));
    }

}
