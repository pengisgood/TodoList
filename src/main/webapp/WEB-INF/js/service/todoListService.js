var myApp = angular.module("myApp.services", []);

myApp.service('todoListService', ['$http', function ($http) {

    this.getFakeData = function () {
        return [
            {text: 'study angular js', done: false, lastUpdated: Date.now()},
            {text: 'practice refactor', done: false, lastUpdated: Date.now()},
            {text: 'study java', done: true, lastUpdated: Date.now()},
            {text: 'practice English', done: false, lastUpdated: Date.now()},
            {text: 'play ping pong', done: true, lastUpdated: Date.now()},
            {text: 'practice typing', done: false, lastUpdated: Date.now()}
        ];
    };

    this.find = function (email, onSuccess) {
        console.log("retrieving by " + email);
        $http.get('/retrieve/' + email)
            .success(function (data) {
                onSuccess(data.todos);
            })
            .error(function (data) {
                console.log("=========================");
                console.log("retrieving data failed!");
                console.log("=========================");
            });
    };

    this.save = function (data, onSuccess) {
        console.log("saving data: " + data);
        $http.put('/save/' + data.email, data)
            .success(function (data) {
                onSuccess(data);
            })
            .error(function (data) {
                console.log("=========================");
                console.log("saving data failed!");
                console.log("=========================");
            });

    };

    this.update = function (data, onSuccess) {

    };

    this.remove = function (key, onSuccess) {

    };

}])
;