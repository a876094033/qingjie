<?php

namespace App\Http\Controllers;

use DB;

/**
 * @Controller(prefix="/message")
 */
class MessageController extends Controller
{
    /**
     * @Get("", as="message_index")
     */
    public function index()
    {
        return view('message.index');
    }
    
    /**
     * @Get("/notice", as="message_notice")
     */
    public function notice()
    {
        $notices = DB::table('notice')->where('show_time', '<=', date('Y-m-d H:i:s', time()))->orderBy('id', 'DESC')->limit(10)->get();

        return view('message.notice', compact('notices'));
    }
    
    /**
     * @Get("/discount", as="message_discount")
     */
    public function discount()
    {
        $discounts = [1,2,3,4,5];
        
        return view('message.discount', compact('discounts'));
    }
    
    /**
     * @Get("/goods", as="message_goods")
     */
    public function goods()
    {
        $goods = [1,2,3,4,5];
        
        return view('message.goods', compact('goods'));
    }
    
    /**
     * @Get("/view/{id}", as="message_view")
     */
    public function view($id)
    {
        $info = DB::table('notice')->where('id', $id)->first();
        
        return view('message.view', compact('info'));
    }
}