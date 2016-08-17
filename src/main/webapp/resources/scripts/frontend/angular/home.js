var app = angular.module("home__app", []);
app.controller("home__controller", function ($scope, $http) {
    $scope.LOGIN = APP_CACHE.get("LOGIN")
    //-----------------declarationion----------------- 
    $scope.loading = true;
    $scope.hash = "#";

    REQUEST.GET("/component/skill/category/skill/findall", $http, function (response) {
        $scope.SKILL_CATEGORIES = (response.data.DATA).reverse();
        $scope.loading = false;
    }, function (error) {
        REQUEST.ERROR(error)
        $scope.loading = false;
    })

    $scope.doFilter = function (element) {
        APP_CACHE.set("SKILL_ID", element.ID);
        $scope.loading = true;
        REQUEST.GET("/filter/expert/by-skill-id/" + APP_CACHE.get("SKILL_ID"), $http, function (response) {
            $scope.EXPERTS = response.data.DATA;
            $scope.COUNTERS = response.data.DATA.COUNTER;
            $scope.loading = false;
        }, function (error) {
            REQUEST.ERROR(error)
            $scope.loading = false;
        })
    }

    $scope.onViewDetailClick = function (element) {
        APP_CACHE.set("EXPERT_ID", element.ID);
    }

});