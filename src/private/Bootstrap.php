<?php
/**
 * Main project bootstrap
 *
 * PHP version 5.6
 *
 *
 * @category   myApp
 * @package    Bootstrap
 * @subpackage Main
 * @author     Moises Barquin <moises.barquin@gmail.com>
 * @copyright  Moises Barquin 2016
 * @version    GIT: $Id$
 */
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
