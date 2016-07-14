<?php

namespace App\Http\Controllers;

use DB;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

abstract class Controller extends BaseController
{
    use AuthorizesRequests,
        DispatchesJobs,
        ValidatesRequests;

    protected function getCategory($pids)
    {
        $return = [];
        if ($list = DB::table('category')->whereIn('parent_id', $pids)->get()) {
            foreach ($list as $val) {
                $ids[] = $val['id'];
                $return[$val['parent_id']][$val['id']] = [
                    'id' => $val['id'],
                    'name' => $val['name'],
                    'childs' => DB::table('category')->where('parent_id', $val['id'])->get()
                ];
            }
        }
        
        return $return;
    }

}