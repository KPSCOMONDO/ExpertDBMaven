var app = angular.module("expert__app", []);
app.controller("expert__controller", function ($scope, $http) {
    $http.get(BASE_URL + "/filter/city/findall").then(function (response) {
        $scope.cities = response.DATA;
    });
    $http.get(BASE_URL + "/filter/skill/findall").then(function (response) {
        $scope.skills = response.DATA;
    });

    $http.get(BASE_URL + "/filter/skill/category/findall").then(function (response) {
        $scope.skills_category = response.DATA;
    });
    $scope.$watch('cbo_skill_category', function (id) {
        $http.get(BASE_URL + "/filter/skill/find-by-catid/" + id).then(function (response) {
            $scope.skills_by_cat_id = response.DATA;
        });
    });
    $http.get("http://localhost:9999/rest/filter/language/findall").then(function (response) {        
        $scope.languages = response.data.DATA;                  
    });
    
    $http.get("http://192.168.178.137:9898/api/expert/get-category", {
        headers: {'Authorization': 'Basic ZGV2OiFAIyQlYXBp'}
    }).then(function (response) {
        $scope.skills_categories = response.data.DATA;
        console.log($scope.skills_categories);
    });
    
    $http.get("http://localhost:9999/rest/filter/position/findall").then(function (response) {        
        $scope.positions = response.data.DATA;                  
    });
});