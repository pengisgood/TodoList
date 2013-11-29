<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.8/angular.min.js"></script>
<script type="text/javascript" src="js/controller/TodoListCtrl.js"></script>
<div class="col-lg-12" ng-app="myApp" ng-controller="TodoListCtrl">
    <div class="row">
        <div class="col-lg-6">
            <h1>Todo:</h1>
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Title</th>
                        <th>Last update</th>
                        <th>Operations</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr ng-repeat="item in todos | filter: 'false'">
                        <td>{{$index}}</td>
                        <td>{{item.text}}</td>
                        <td>2013-11-29 00:36:44</td>
                        <td>
                            <div class="btn btn-sm btn-info">Add</div>
                            <div class="btn btn-sm btn-primary">Edit</div>
                            <div class="btn btn-sm btn-danger">Delete</div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="col-lg-6">
            <h1>Done:</h1>
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Title</th>
                        <th>Last update</th>
                        <th>Operations</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr ng-repeat="item in todos | filter: 'true'">
                        <td>{{$index}}</td>
                        <td>{{item.text}}</td>
                        <td>2013-11-29 00:36:44</td>
                        <td>
                            <div class="btn btn-sm btn-primary">Edit</div>
                            <div class="btn btn-sm btn-danger">Delete</div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>