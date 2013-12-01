var myApp = angular.module("myApp", []);

myApp.factory("Todos", function () {
    return [
        {text: 'study angular js', done: false},
        {text: 'practice refactor', done: false},
        {text: 'study java', done: true},
        {text: 'practice English', done: false},
        {text: 'play ping pong', done: true} ,
        {text: 'practice typing', done: false}
    ];
});

function TodoListCtrl($scope, Todos) {
    $scope.todos = Todos;
    $scope.newTodo = "";


    $scope.add = function () {
        if ($scope.newTodo !== "") {
            $scope.todos.push({text: $scope.newTodo, done: false});
        }
        $scope.newTodo = "";
    };

    $scope.edit = function (item) {
        var index = $scope.todos.indexOf(item);
        var updatedItem = $scope.todos.splice(index, 1);
        updatedItem[0].done = !updatedItem[0].done;
        $scope.todos.push(updatedItem[0]);
    }

    $scope.delete = function (item) {
        var index = $scope.todos.indexOf(item);
        $scope.todos.splice(index, 1);
    }
};