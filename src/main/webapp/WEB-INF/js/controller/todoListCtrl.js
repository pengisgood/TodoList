var myApp = angular.module('myApp', ['myApp.services']);

myApp.controller('TodoListCtrl', ['$scope', 'todoListService', function($scope, todoListService) {
    $scope.data = {};

    $scope.data.email = "";
    $scope.data.todos = {};

    $scope.currentItem = {};
    $scope.originItem = {};

    $scope.init = function() {
        $scope.data.todos = todoListService.getFakeData();
    };

    $scope.add = function () {
        $scope.originItem = {done:false};
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
        console.log("Succeed!!");
    };

    var error = function(){
        console.log("Failed!!");
    };

    $scope.save = function() {
        todoListService.save($scope.data, success);
    };

    $scope.retrieve = function() {
        todoListService.find($scope.data.email, updateTodos);
    };

    var updateTodos =function (value) {
        console.log(value);
        $scope.data.todos = value;
    };

}]);

