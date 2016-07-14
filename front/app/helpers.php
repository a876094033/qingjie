<?php

if (!function_exists('generate_string')) {

    function generate_string($size = 20, $type = 1)
    {
        $return = '';
        $size = ($size - 1) ? (int) $size : 1;
        switch ($type) {
            case 1:
                $str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz';
                break;
            case 2:
                $str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
                break;
            case 3:
                $str = '1234567890';
                break;
            default :
                $str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz';
                break;
        }
        for ($i = 0; $i < $size; $i++) {
            $return .= $str[rand(0, $size)];
        }

        return $return;
    }

}

if (!function_exists('get_area')) {
    function get_area($cityCode) {
        $return = '-';
        if ($info = DB::table('area')->where('city_code', $cityCode)->first()) {
            $return = $info->name;
        }
        
        return $return;
    }
}

if (!function_exists('sex')) {
    function sex($key) {
        if ($key == 'MAN') {
            $return = '男';
        } elseif ($key == 'WOMEN') {
            $return = '女';
        } else {
            $return = '保密';
        }
        
        return $return;
    }
}