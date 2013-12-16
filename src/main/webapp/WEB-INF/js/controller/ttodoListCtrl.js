var myApp = angular.module('myApp', ['myApp.services', 'myApp.mongolabService']);

myApp.controller('TodoListCtrl', ['$scope', 'todoListService', 'mongolabService', function($scope, todoListService, mongolabService) {
    $scope.data = new mongolabService();

    $scope.data.email = "pengisgood@gmail.com";
    $scope.data.confirmedEmail = "pengisgood@gmail.com";
    $scope.data.todos = todoListService.fakeData;

    $scope.currentItem = {};
    $scope.originItem = {};

    $scope.add = function () {
        $scope.originItem = {};
        $scope.currentItem = {done:false, lastUpdated: Date.now()};
    };

    $scope.edit = function (item) {
        $scope.currentItem = angular.copy(item);
        $scope.originItem = item;
    };

    $scope.update = function (item) {
        if (angular.equals(item, $scope.originItem)) {
            return;
        }
        var index = $scope.data.todos.indexOf($scope.originItem);

        //add
        if(index === -1) {
            $scope.data.todos.push(item);
            return;
        }

        //edit
        item.lastUpdated = Date.now();
        $scope.data.todos[index] = item;
    };

    $scope.delete = function (item) {
        var index = $scope.data.todos.indexOf(item);
        $scope.data.todos.splice(index, 1);
    };

    var success = function(){
        console.log("save data succeed");
    };

    var error = function(){
        console.log("save data failed");
    };

    $scope.save = function() {
        console.log("saving...");
        //$scope.data.$save(success, error);
    };

    $scope.retrieve = function() {
        console.log("retrieving...");
//        $scope.data.$getById($scope.data.email);
    };
}]);

