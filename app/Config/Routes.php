<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Kontroler::loadCategories');

$routes->get('Components/(:any)', 'Kontroler::loadComponents/$1');

$routes->get('Parameters/(:num)', 'Kontroler::loadParameters/$1');