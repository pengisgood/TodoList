var myApp = angular.module("myApp", ['mongolabResourceHttp']);

myApp.constant('MONGOLAB_CONFIG', {API_KEY:'7lOuCyzkW57WlJLk9Zsu0VFCNpDi_1-J', DB_NAME:'todolistdb'});

myApp.factory('Project', function($mongolabResourceHttp) {
    return $mongolabResourceHttp('projects');
});

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

function TodoListCtrl($scope, projects, Todos) {
    $scope.project = projects;
    $scope.email = "";
    $scope.confirmedEmail = "";

    $scope.todos = Todos;
    $scope.originItem = {};
    $scope.updatedItem = {};

    $scope.add = function () {
        $scope.originItem = {};
        $scope.updatedItem = {text:"", done:false, lastUpdated: Date.now()};
    };

    $scope.edit = function (item) {
        $scope.originItem = item;

        $scope.updatedItem.text = item.text;
        $scope.updatedItem.done = item.done;
        $scope.updatedItem.lastUpdated = item.lastUpdated;
    }

    $scope.update = function (item) {
        if (angular.equals(item, $scope.originItem)) {
            return;
        }
        var index = $scope.todos.indexOf($scope.originItem);

        //add
        if(index === -1) {
            var newItem = {};
            newItem.text = item.text;
            newItem.done = item.done;
            newItem.lastUpdated = item.lastUpdated;
            $scope.todos.push(newItem);
            return;
        }

        //edit
        $scope.todos[index].text = item.text;
        $scope.todos[index].done = item.done;
        $scope.todos[index].lastUpdated = Date.now();
    }

    $scope.save = function() {
        $scope.project.$save(success, error);
    }

    $scope.delete = function (item) {
        var index = $scope.todos.indexOf(item);
        $scope.todos.splice(index, 1);
    }

    $scope.formatDate = function (date, format) {
        return $filter('date')(date, format);
    }
};