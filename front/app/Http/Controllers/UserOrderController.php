<?php

namespace App\Http\Controllers;

/**
 * @Controller(prefix="/user/order")
 */
class UserOrderController extends Controller
{
    /**
     * @Get("", as="user_order_index")
     */
    public function index()
    {
        return view('user.order.index');
    }
    
    /**
     * @Get("/waitpay", as="user_order_waitpay")
     */
    public function waitpay()
    {
        return view('user.order.waitpay');
    }
    
    /**
     * @Get("/pay", as="user_order_pay")
     */
    public function pay()
    {
        return view('user.order.pay');
    }
    
    /**
     * @Get("/comment", as="user_order_comment")
     */
    public function comment()
    {
        return view('user.order.comment');
    }
    
    /**
     * @Get("/reback", as="user_order_reback")
     */
    public function reback()
    {
        return view('user.order.reback');
    }
}
