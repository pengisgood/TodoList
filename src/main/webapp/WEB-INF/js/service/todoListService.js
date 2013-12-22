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

    this.find = function (key, onSuccess) {
        console.log("finding by " + key);
        $http.get('/retrieve', key)
            .success(function (data) {
                onSuccess(data);
            })
            .error(function (data) {
                console.log(data);
            });
    };

    this.save = function (data, onSuccess) {

    };

    this.update = function (data, onSuccess) {

    };

    this.remove = function (key, onSuccess) {

    };

}])
;