<?php

namespace App\Http\Controllers;

/**
 * @Controller(prefix="/user/collect")
 * @Middleware("auth")
 */
class UserCollectController extends Controller
{
    /**
     * @Get("/brand", as="user_collect_brand")
     */
    public function brand()
    {
        $brands = [1,2,3,4,5];
        
        return view('user.collect.brand', compact('brands'));
    }
    
    /**
     * @Get("/goods", as="user_collect_goods")
     */
    public function goods()
    {
        $goods = [1,2,3,4,5];
        
        return view('user.collect.goods', compact('goods'));
    }
}
