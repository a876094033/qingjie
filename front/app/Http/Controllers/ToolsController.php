<?php

namespace App\Http\Controllers;

/**
 * @Controller(prefix="/")
 */
class ToolsController extends Controller
{
    /**
     * @Get("/sendsms/{phone}/{type}")
     */
    public function sendSms($phone, $type = 'register')
    {
        return true;
    }
}
