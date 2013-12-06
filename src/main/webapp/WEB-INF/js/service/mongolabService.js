var myApp = angular.module("myApp", ['mongolabResourceHttp']);


myApp.constant('MONGOLAB_CONFIG', {API_KEY:'7lOuCyzkW57WlJLk9Zsu0VFCNpDi_1-J', DB_NAME:'todolistdb'});

myApp.factory('mongolabService', function($mongolabResourceHttp) {
    return $mongolabResourceHttp('todos'); //parameter is collection name
});