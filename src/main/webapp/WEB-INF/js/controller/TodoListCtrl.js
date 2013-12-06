var myApp = angular.module("myApp");

myApp.factory("Todos", function () {
    return [
        {text: 'study angular js', done: false, lastUpdated: Date.now()},
        {text: 'practice refactor', done: false, lastUpdated: Date.now()},
        {text: 'study java', done: true, lastUpdated: Date.now()},
        {text: 'practice English', done: false, lastUpdated: Date.now()},
        {text: 'play ping pong', done: true, lastUpdated: Date.now()},
        {text: 'practice typing', done: false, lastUpdated: Date.now()}
    ];
});

myApp.controller('TodoListCtrl', function($scope, mongolabService, Todos) {
    $scope.data = new mongolabService();

    $scope.data.email = "pengisgood@gmail.com";
    $scope.data.confirmedEmail = "pengisgood@gmail.com";
    $scope.data.todos = Todos;

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
        console.log("saving");
        //$scope.data.$save(success, error);
    };

    $scope.retrieve = function() {
        console.log("retrieving");
//        $scope.data.$getById($scope.data.email);
    };
});

