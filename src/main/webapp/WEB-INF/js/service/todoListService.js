var myApp = angular.module("myApp.services", []);

myApp.service('todoListService', [function () {
    return {fakeData: [
        {text: 'study angular js', done: false, lastUpdated: Date.now()},
        {text: 'practice refactor', done: false, lastUpdated: Date.now()},
        {text: 'study java', done: true, lastUpdated: Date.now()},
        {text: 'practice English', done: false, lastUpdated: Date.now()},
        {text: 'play ping pong', done: true, lastUpdated: Date.now()},
        {text: 'practice typing', done: false, lastUpdated: Date.now()}]
    };
}]);