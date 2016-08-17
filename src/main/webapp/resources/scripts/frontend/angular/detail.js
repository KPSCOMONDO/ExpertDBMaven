var app = angular.module('detail--app', []);

app.controller('detail__controller', function ($scope, $http) {
    $scope.loading = true;

    REQUEST.GET("/filter/expert/find-by-expert-id/" + APP_CACHE.get("EXPERT_ID"), $http, function (response) {
        $scope.EXPERTS = response.data.DATA;
        $scope.loading = false;
    }, function (error) {
        REQUEST.ERROR(error)
        $scope.loading = false;
    })

});
