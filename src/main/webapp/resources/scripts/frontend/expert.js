var app = angular.module("expert__app", []);
app.controller("expert__controller", function ($scope, $http) {

    $http.get("http://localhost:9998/api/province/findall").then(function (response) {
        $scope.provinces = response.data.DATA;
    });
    $http.get("http://localhost:9998/api/skill/findall").then(function (response) {
        $scope.skills = response.data.DATA;
    });
    $http.get("http://localhost:9998/api/skill/findbycatid/"+ 1).then(function (response) {
        $scope.skills_by_cat_id = response.data.DATA;
    });
});