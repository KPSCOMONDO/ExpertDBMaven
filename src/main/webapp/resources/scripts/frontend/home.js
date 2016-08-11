var app = angular.module("home__app", []);
app.controller("home__controller", function ($scope, $http) {
    $scope.ID_CAT = '#CAT';
    $scope.ID_SKILL = '#SK';
    $scope.ID_CAT_ = 'CAT';
    $scope.ID_SKILL_ = 'SK';
    $http.get(BASE_URL + "/home/category/findall").then(function (response) {
        $scope.skills_categories = response.data.DATA;
    });

//    $scope.doFilter = function (element) {
//        $http.get("http://192.168.178.137:8081/api/expert/find-by/skill-id/{skillId}?paramSkillId=" + element.item.ID,
//        { headers: {'Authorization': 'Basic ZGV2OiFAIyQlYXBp'}})
//                .then(function (response) {
//                    $scope.experts = response.data.DATA;
//                    console.log($scope.experts);
//                });
//    }

    $scope.doFilter = function (element) {
        $http.get(BASE_URL+"/expert/find-by-skill-id/" + element.item.ID)
                .then(function (response) {
                    $scope.experts = response.data.DATA;
                    console.log($scope.experts);
                });
    }
});
