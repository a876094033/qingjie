<?php

namespace App\Http\Controllers;

use DB;

/**
 * @Controller(prefix="/designer")
 */
class DesignerController extends Controller
{

    /**
     * @Get("/{id}", as="designer_view")
     */
    public function view($id)
    {
        $user = DB::table('user')->where('id', $id)->first();
        if ($user && $user['type'] == 'DESIGNER') {
            $designer = DB::table('user_designer')->where('user_id', $id)->first();

            if (empty($designer)) {
                $designer = [
                    'user_id' => $id,
                    'sort' => 0,
                    'created_at' => date('Y-m-d H:i:s', time()),
                    'updated_at' => date('Y-m-d H:i:s', time())
                ];
                DB::table('user_designer')->insert($designer);
            }

            $goods = DB::table('goods')->where('user_id', $id)->get();

            return view('designer.view', compact('user', 'goods', 'designer'));
        } else {
            return redirect()->back()->with('message', '请选择设计师');
        }
    }

}
