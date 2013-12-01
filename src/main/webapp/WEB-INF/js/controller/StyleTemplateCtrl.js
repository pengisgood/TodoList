function StyleTemplateCtrl($scope) {
    $scope.styleTemplate = "slate";

    $scope.changeStyle = function(style) {
        $scope.styleTemplate = style;
    }
}