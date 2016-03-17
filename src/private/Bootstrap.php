<?php
namespace MyApp;

class Bootstrap
{
    static public function getApp()
    {

        return new self;
    }

    public function run () {
        echo 'It Works!!!';
    }
}
