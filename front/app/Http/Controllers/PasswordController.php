<?php

namespace App\Http\Controllers;

/**
 * @Controller(prefix="/password")
 */
class PasswordController extends Controller
{
    /**
     * @Get("", as="password_index")
     */
    public function index()
    {
        return view('user.password.index');
    }
}
