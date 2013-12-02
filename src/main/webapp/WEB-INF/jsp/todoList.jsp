<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script type="text/javascript" src="js/controller/TodoListCtrl.js"></script>
<div class="col-lg-12" ng-controller="TodoListCtrl">
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
                        <td>{{$index+1}}</td>
                        <td>{{item.text}}</td>
                        <td>{{item.lastUpdated | date:"medium"}}</td>
                        <td>
                            <div class="btn btn-sm btn-primary" data-toggle="modal" data-target="#itemDetailsModal" ng-click="edit(item)">Edit</div>
                            <div class="btn btn-sm btn-danger" ng-click="delete(item)">Delete</div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <div class="btn btn-sm btn-info" data-toggle="modal" data-target="#itemDetailsModal" ng-click="add()">Add</div>
                            <div class="btn btn-large btn-success" data-toggle="modal" data-target="#" ng-click="">Save</div>
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
                        <td>{{$index+1}}</td>
                        <td>{{item.text}}</td>
                        <td>{{item.lastUpdated | date: "medium"}}</td>
                        <td>
                            <div class="btn btn-sm btn-primary" data-toggle="modal" data-target="#itemDetailsModal" ng-click="edit(item)">Edit</div>
                            <div class="btn btn-sm btn-danger" ng-click="delete(item)">Delete</div>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="modal fade" id="itemDetailsModal" tabindex="-1" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Item Details</h4>
                    </div>
                    <div class="modal-body">
                        <label class="control-label" for="title">Title</label>
                        <input class="form-control" ng-model="updatedItem.text" type="text" id="title"/>
                        <br>
                        <label class="control-label" for="status">Done</label>
                        <input class="form-control" type="text" id="status" ng-model="updatedItem.done">
                        <br>
                        <label class="control-label" for="lastUpdate">Last update</label>
                        <input class="form-control" disabled type="text" id="lastUpdate" ng-value="formatDate(updatedItem.lastUpdated,'medium')">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-info" data-dismiss="modal" ng-click="update(originItem)">Close</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal" ng-click="update(updatedItem)">Save</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>