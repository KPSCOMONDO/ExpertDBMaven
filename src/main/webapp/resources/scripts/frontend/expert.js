var app = angular.module("expert__app", []);
app.controller("expert__controller", function ($scope, $http) {

    $http.get(BASE_URL + "/api/province/findall").then(function (response) {
        $scope.provinces = response.data.DATA;
    });
    $http.get(BASE_URL + "/api/skill/findall").then(function (response) {
        $scope.skills = response.data.DATA;
    });

    $http.get(BASE_URL + "/api/skill/skillcategory/findall").then(function (response) {
        $scope.skills_category = response.data.DATA;
    });
    $scope.$watch('cbo_skill_category', function (id) {
        $http.get(BASE_URL + "/api/skill/findbycatid/" + id).then(function (response) {
            $scope.skills_by_cat_id = response.data.DATA;
        });
    });
    $http.get(BASE_URL + "/api/language/findall").then(function (response) {
        $scope.languages = response.data.DATA;
    });
});