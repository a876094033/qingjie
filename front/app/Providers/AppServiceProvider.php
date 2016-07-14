<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use \Config;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->share('styles', '/styles');
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {

        //
    }
}
