var app = angular.module('filter--app', ['angularUtils.directives.dirPagination']);

app.controller('filter__controller', function ($scope, $http) {
    // DECLARATION 
    $scope.loading = true;
    $scope.AGES = DECLARATION.fetchAge();
    $scope.EXPERIENCES = DECLARATION.fetchExperience();
    $scope.SALARIES = DECLARATION.fetchSalary();
    $scope.GENDERS = DECLARATION.fetchGender();
    /**
     * sort epert 
     */
    $scope.sort = function (keyname, name) {
        $scope.sortKey = keyname;   //set the sortKey to the param passed
        $scope.sortName = name;
        $scope.reverse = !$scope.reverse; //if true make it false and vice versa
    }

    REQUEST.GET("/filter/expert/by-skill-id/" + APP_CACHE.get("SKILL_ID"), $http, function (response) {
        $scope.loading = false;
        $scope.EXPERTS = response.data.DATA;
        $scope.COUNTERS = response.data.COUNTER;
    }, function (error) {
        REQUEST.ERROR(error)
        $scope.loading = false;
    })

    /**
     * Retieving data by using rest template 
     */
    REQUEST.GET("/component/skill/category/findall", $http, function (response) {
        $scope.loading = false;
        $scope.SKILL_CATEGORIES = response.data.DATA;
    }, function (error) {
        REQUEST.ERROR(error)
        $scope.loading = false;
    })

    REQUEST.GET("/component/location/findall", $http, function (response) {
        $scope.loading = false;
        $scope.LOCATIONS = response.data.DATA;
    }, function (error) {
        REQUEST.ERROR(error)
        $scope.loading = false;
    })

    REQUEST.GET("/component/language/findall", $http, function (response) {
        $scope.loading = false;
        $scope.LANGUAGES = response.data.DATA;
    }, function (error) {
        REQUEST.ERROR(error)
        $scope.loading = false;
    })

    REQUEST.GET("/component/position/findall", $http, function (response) {
        $scope.loading = false;
        $scope.POSITIONS = response.data.DATA;
    }, function (error) {
        REQUEST.ERROR(error)
        $scope.loading = false;
    })

    // fucntion > > >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   >>>> >>>

    $scope.onSkillChange = function (element, state) {
        $scope.loading = false;
        console.log(element, state)
        if ($(element).is(':checked')) {
            alert();
        }
        ;
        REQUEST.GET("/component/expert/find-by-skill-id/" + element.ID, $http, function (response) {
            $scope.loading = false;
            $scope.EXPERTS = response.data.DATA;
            $scope.COUNTERS = response.data.COUNTER;
        }, function (error) {
            REQUEST.ERROR(error)
            $scope.loading = false;
        })
    }

    $scope.onViewDetailClick = function (element) {
        APP_CACHE.set("EXPERT_ID", element.item.ID);
        alert(APP_CACHE.get("EXPERT_ID"));
    }
    /**
     * Watch block
     */

    $scope.$watch('skill_category_id', function (element) {
        // change skill by it caategory        
        $scope.SKILLS = element.SKILLS;
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
        $span = $(element).children().first().children().first();
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
