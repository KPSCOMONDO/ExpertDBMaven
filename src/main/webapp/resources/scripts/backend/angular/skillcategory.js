var app = angular.module('skill-category--app', ['angularUtils.directives.dirPagination']);
app.controller('skill_category__controller', function ($scope, $http) {
    $scope.ITEMS = [{'ID': '', 'STATUS': false}]
    $scope.loading = true;
    $scope.FinallSkillCategory = function () {
        $http.get(CONFIGURATION.getBase_url() + "/component/skill/category/findall")
                .then(function (response) {
                    $scope.loading = false;
                    $scope.SKILLCATEGORIES = (response.data.DATA).reverse();
                    $scope.setItemStatus();
                }, function (err) {
                    $scope.loading = false;
                });
    }
    $scope.sort = function (keyname, name) {
        $scope.sortKey = keyname; //set the sortKey to the param passed
        $scope.sortName = name;
        $scope.reverse = !$scope.reverse; //if true make it false and vice versa
    }
    $scope.editClick = function (element) {
        if(element.STATUS){
            $scope.updateCategory(element)
        }
        element.STATUS = !element.STATUS;
    }

    $scope.setItemStatus = function () {
        $.map($scope.SKILLCATEGORIES, function (item) {
            item.STATUS = false;
        })
    }

    /*
     * Create new 
     */
    $scope.createSkillCategory = function () {
        var formData =
                {
                    "CATEGORY STATUS": "jjk",
                    "SKILLS": [],
                    "DESCRIPTION": "fuck"
                }

        $http({
            method: 'POST',
            url: CONFIGURATION.getBase_url() + "/skill/category/create",
            data: JSON.stringify(formData)
        }).then(function (response) {
            console.log(response)
            if (response.data.STATUS) {
                $scope.FinallSkillCategory();
            }
        })
    }
    $scope.updateCategory = function (element) {
        var formData =
                {
                    "CATEGORY STATUS": $scope.txtCategoryName,
                    "SKILLS": [],
                    "DESCRIPTION": $scope.txtCategoryName
                }

        $http({
            method: 'PUT',
            url: CONFIGURATION.getBase_url() + "/skill/category/create",
            data: JSON.stringify(formData)
        }).then(function (response) {
            console.log(response)
            if (response.data.STATUS) {
                $scope.FinallSkillCategory();
            }
        })
    }

    $scope.FinallSkillCategory();
});
