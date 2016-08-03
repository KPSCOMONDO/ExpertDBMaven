var app = angular.module("home__app", []);
app.controller("home__controller", function ($scope, $http) {
    
    $http.get("http://localhost:9998/api/skill/findall").then(function (response) {
        $scope.skills = response.data.DATA;
    });
});