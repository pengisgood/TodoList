var myApp = angular.module("myApp", []);

myApp.service('itemService', [function () {
    this.initFakeData = function () {
        return [
            {text: 'study angular js', done: false, lastUpdated: Date.now()},
            {text: 'practice refactor', done: false, lastUpdated: Date.now()},
            {text: 'study java', done: true, lastUpdated: Date.now()},
            {text: 'practice English', done: false, lastUpdated: Date.now()},
            {text: 'play ping pong', done: true, lastUpdated: Date.now()},
            {text: 'practice typing', done: false, lastUpdated: Date.now()}
        ];
    }

}]);