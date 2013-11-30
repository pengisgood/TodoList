function StyleTemplateCtrl($scope) {
    $scope.styleTemplate = "cyborg";

    $scope.changeStyle = function(style) {
        $scope.styleTemplate = style;
    }
}