docker-php-init
========

Introduction
------------
This library is intended to be used with PHPUnit tool. DataPool is an iterable object which can be
returned to a standard @dataprovider tagged function or it can be used to get specific datasets from a big datapool.

* It allows keeping low weight indexed array values separated from tests logic.
* It can return specific datasets attending to its dataset index.
* It can encapsulate dataset as an array to avoid large parameters lists.

Installation
------------

You can install the component in the following ways:

* Use the official Github repository (https://github.com/mbarquin/datapool)
* Use composer : composer require mbarquin/datapool --dev

Usage
-----

The main use purpose is via heritage, the final class will only contains a definition
index and a dataArray, we can instance it into our test case as a dataprovider or as
a normal object which vill provide us with predefined test cases.
