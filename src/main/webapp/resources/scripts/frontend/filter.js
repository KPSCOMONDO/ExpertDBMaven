var app1 = angular.module('angularTable', ['angularUtils.directives.dirPagination']);

app1.controller('listdata', function ($scope, $http) {
    $http.get("http://localhost:8081/api/expert/find-by/skill-id/{skillId}?skillId=5,4,3,2,7", {
        headers: {'Authorization': "Basic ZGV2OiFAIyQlYXBp"
        }})
            .then(function (response) {
                $scope.loading = false;
                $scope.experts = response.data.DATA;
                $scope.counters = response.data.COUNTER;
                console.log($scope.experts);
            }, function (err) {
                $scope.loading = false;
            });
    /**
     * sort epert 
     */
    $scope.sort = function (keyname, name) {
        $scope.sortKey = keyname;   //set the sortKey to the param passed
        $scope.sortName = name;
        $scope.reverse = !$scope.reverse; //if true make it false and vice versa
    }


    // DECLARATION 
    $scope.loading = true;
    $scope.ages = AGES
    $scope.experiences = EXPERIENCES;
    $scope.salaries = SALARIES;
    $scope.genders = GENDERS;
    /**
     * Retieving data by using rest template 
     */
    $http({
        method: 'GET',
        url: BASE_URL + "/home/category/findall"
    }).then(function (response) {
        $scope.loading = false;
        $scope.skills_categories = response.data.DATA;
    }, function (response) {
        $scope.loading = false;
    });

    $http.get(BASE_URL + "/filter/city/findall").then(function (response) {
        // find all province 
        $scope.cities = response.data.DATA;
    });

    $http.get(BASE_URL + "/filter/language/findall").then(function (response) {
        // find all language 
        $scope.languages = response.data.DATA;
    });

    $http.get(BASE_URL + "/filter/position/findall").then(function (response) {
        // find all job position 
        $scope.positions = response.data.DATA;
    });
    // fucntion > > >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   >>>> >>>


    $scope.onSkillChange = function (element, state) {
        $scope.loading = false;
        console.log(element, state)
        if ($(element).is(':checked')) {
            alert();
        }
        ;
        $http.get(BASE_URL + "/home/expert/find-by-skill-id/" + element.item.ID)
                .then(function (response) {
                    $scope.loading = false;
                    $scope.experts = response.data.DATA;
                    $scope.counters = response.data.COUNTER;
                    console.log($scope.experts);
                }, function (err) {
                    $scope.loading = false;
                });
    }
    $http.get("http://localhost:8081/api/expert/find-by/skill-id/{skillId}?skillId=5,4", {
        headers: {'Authorization': "Basic ZGV2OiFAIyQlYXBp"
        }})
            .then(function (response) {
                $scope.loading = false;
                $scope.experts = response.data.DATA;
                $scope.counters = response.data.COUNTER;
                console.log($scope.experts);
            }, function (err) {
                $scope.loading = false;
            });



    /**
     * Watch block
     */

    $scope.$watch('skill_category_id', function (element) {
        // change skill by it caategory        
        $scope.skills = element.SKILLS;
    });
    // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>=======================================
});


$(document).ready(function () {
    onChange = function (element) {
        $span1 = $(element).children().first();
        $span2 = $(element).children().eq(1);
        if ($span1.text() === "More") {
            $span2
                    .removeClass("fa-sort-desc")
                    .addClass("fa-sort-asc")
            $span1.text("Less");
        } else {
            $span2
                    .removeClass("fa-sort-asc")
                    .addClass("fa-sort-desc");
            $span1.text("More");
        }
    }
    onCatClick = function (element) {
        $span = $(element).children().eq(1);
        if ($span.hasClass("fa-chevron-right")) {
            $span
                    .removeClass("fa-chevron-right")
                    .addClass("fa-chevron-down")
        } else {
            $span
                    .removeClass("fa-chevron-down")
                    .addClass("fa-chevron-right")
        }
    }
});
