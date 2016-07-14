<?php

namespace App\Http\Controllers;

use DB;

/**
 * @Controller(prefix="/")
 */
class IndexController extends Controller
{
    /**
     * [index 后台首页]
     * @Get("/", as="index_index")
     */
    public function index()
    {
        $category = DB::table('category')->where('parent_id', 0)->get();
        
        $childCategory = $this->getCategory(array_column($category, 'id'));

        $banners = DB::table('banner')->orderBy('sort', 'DESC')->orderBy('id', 'DESC')->get();

        $designers = DB::table('user')->where('type', 'DESIGNER')->where('sort', '>', 0)
                        ->orderBy('sort', 'DESC')->orderBy('id', 'DESC')->limit(5)->get();

        $goods = DB::table('goods')->where('status', 1)->where('sort', '>', 0)->orderBy('sort', 'DESC')->orderBy('id', 'DESC')->limit(20)->get();

        return view('index.index', compact('banners', 'designers', 'goods', 'childCategory', 'category'));
    }
    
}