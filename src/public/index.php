<?php
require __DIR__ . '/../vendor/autoload.php';

session_start();

$app = \MyApp\Bootstrap::getApp();

// Run app
$app->run();
