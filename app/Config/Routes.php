<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Kontroler::loadTypesOfComponents');

$routes->get('VypisKomponetDanehoTypu/(:num)', 'Kontroler::loadComponentsOfCertainType/$1');

$routes->get('parametryKomponentu/(:num)', 'Kontroler::loadParametersOfComponents/$1');