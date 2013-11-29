<script type="text/javascript" src="js/libs/angular.js"></script>
<script type="text/javascript" src="js/controller/TodoListCtrl.js"></script>
<div class="col-lg-12" ng-app="myApp" ng-controller="TodoListCtrl">
    <div class="row">
        <div class="col-lg-6">
            <h1>Todo:</h1>

            <div ng-model="todos" class="table-responsive">
                <table class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Title</th>
                        <th>Last update</th>
                        <th>Operations</th>
                    </tr>
                    </thead>
                    <tbody ng-repeat="item in todos | filter:'false' ">
                    {{todos}}
                    <tr >
                        <td>{{$index}}</td>
                        <td>{{item.text}}</td>
                        <td>2013-11-29 00:36:44</td>
                        <td></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="col-lg-6">
            <h1>Done:</h1>
        </div>
    </div>


    <div class="col-lg-12">
        <div class="btn btn-primary">
            hehe
        </div>
        <div class="btn btn-info">
            haha
        </div>
    </div>
    <div class="col-lg-12">
        <div class="span6 btn btn-warning btn-large">
            Fluid 6
        </div>
        <div class="span6 btn btn-danger btn-large">
            Fluid 6
        </div>
    </div>
</div>