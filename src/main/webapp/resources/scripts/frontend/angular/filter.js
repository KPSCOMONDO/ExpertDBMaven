var app = angular.module('filter--app', ['angularUtils.directives.dirPagination']);

app.controller('filter__controller', function ($scope, $http) {
    $scope.LOGIN = APP_CACHE.get("LOGIN")
    $scope.logOut = function () {
        APP_CACHE.set("LOGIN", false)
        $scope.LOGIN = false
    }
    // DECLARATION 
    $scope.LOGIN = APP_CACHE.get("LOGIN")
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

    REQUEST.GET("/component/skill/category/skill/findall", $http, function (response) {
        $scope.SKILL_CATEGORIES = response.data.DATA;
    }, function (error) {
        REQUEST.ERROR(error)
    })

    REQUEST.GET("/component/location/findall", $http, function (response) {
        $scope.LOCATIONS = response.data.DATA;
    }, function (error) {
        REQUEST.ERROR(error)
    })

    REQUEST.GET("/component/language/findall", $http, function (response) {
        $scope.LANGUAGES = response.data.DATA;
    }, function (error) {
        REQUEST.ERROR(error)
    })

    REQUEST.GET("/component/position/findall", $http, function (response) {
        $scope.POSITIONS = response.data.DATA;
    }, function (error) {
        REQUEST.ERROR(error)
    })

    // fucntion > > >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>   >>>> >>>

    $scope.onSkillChange = function (element) {
        $scope.loading = false;
        REQUEST.GET("/filter/expert/by-skill-id/" + element.ID, $http, function (response) {
            $scope.EXPERTS = response.data.DATA;
            $scope.COUNTERS = response.data.DATA.COUNTER;
            $scope.loading = false;
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
        if (element != undefined) {
            $scope.SKILLS = element.SKILLS;
        }
    });
    // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>=======================================
});


$(document).ready(function () {
    onChange = function (element) {
        $span1 = $(element).children().first()
        $span2 = $(element).children().eq(1)
        if ($span2.hasClass("fa-sort-desc")) {
            $span2
                    .removeClass("fa-sort-desc")
                    .addClass("fa-sort-asc")
            $span1.text("បន្ថយ");
        } else {
            $span2
                    .removeClass("fa-sort-asc")
                    .addClass("fa-sort-desc");
            $span1.text("ច្រើនទៀត");
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
