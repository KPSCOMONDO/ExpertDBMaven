var app = angular.module("home__app", []);
app.controller("home__controller", function ($scope, $http) {
    
    $http.get(BASE_URL + "/api/skill/findall").then(function (response) {
        $scope.skills = response.data.DATA;
    });
    $scope.$watch('demo_category', function (value) {
        //alert();
    });
});