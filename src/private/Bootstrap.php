<?php
namespace MyApp;

class Bootstrap
{
    static public function getApp()
    {
        // Instantiate the app
        $app      = new \stdClass();
        $app->run = function () {
            echo 'It Works!!';
        };
        return $app;
    }

}
