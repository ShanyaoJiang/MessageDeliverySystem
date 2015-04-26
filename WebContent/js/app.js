'use strict';


// Declare app level module which depends on filters, and services
angular.module('jthink', ['jthink.filters', 'jthink.services', 'jthink.directives']).
  config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/login', {templateUrl: 'partials/login.html', controller: MyCtrl2});
    $routeProvider.when('/register', {templateUrl: 'partials/register.html', controller: MyCtrl2});
    $routeProvider.otherwise({redirectTo: '/login'});
  }]);

