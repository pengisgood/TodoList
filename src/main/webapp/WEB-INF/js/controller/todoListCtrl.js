var myApp = angular.module('myApp', ['myApp.services', 'myApp.mongolabService']);

myApp.controller('TodoListCtrl', ['$scope', 'todoListService', 'mongolabService', function($scope, todoListService, mongolabService) {
    $scope.data = new mongolabService();

    $scope.data.email = "";
    $scope.data.confirmedEmail = "";
    $scope.data.todos = {};

    $scope.currentItem = {};
    $scope.originItem = {};

    $scope.init = function() {
        $scope.data.todos = todoListService.getFakeData();
    };

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
        todoListService.save($scope.data, success);
    };

    $scope.retrieve = function() {
        console.log("retrieving...");
        todoListService.find($scope.data.email, updateTodos);
    };

    var updateTodos =function (value) {
        $scope.data.todos = value;
    };

}]);

