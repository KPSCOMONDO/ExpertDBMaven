var app = angular.module('skill--app', ['angularUtils.directives.dirPagination']);

app.controller('skill__controller', function ($scope, $http) {
    $scope.ITEMS = [{'ID': '', 'STATUS': false}]
    $scope.loading = true;
    $scope.FinallSkill = function () {
        $http.get(CONFIGURATION.getBase_url() + "/component/skill/findall")
                .then(function (response) {
                    $scope.loading = false;
                    $scope.SKILLS = (response.data.DATA).reverse();
                    $scope.setItemStatus();
                }, function (err) {
                    $scope.loading = false;
                });
    }
    $scope.sort = function (keyname, name) {
        $scope.sortKey = keyname;   //set the sortKey to the param passed
        $scope.sortName = name;
        $scope.reverse = !$scope.reverse; //if true make it false and vice versa
    }
    $scope.editClick = function (element) {
        element.STATUS = !element.STATUS;
    }

    $scope.setItemStatus = function () {
        $.map($scope.SKILLS, function (item) {
            item.STATUS = false;
        })
    }

    /*
     * Create new 
     */
    $scope.createLanguage = function () {
        if ($scope.txtLanguage) {
            var formData = {
                "SKILL STATUS": $scope.txtSkill,
                "CATEGORY ID":$scope.cboCategoryId
            }
            $http({
                method: 'POST',
                url: CONFIGURATION.getBase_url() + "/component/skill/create",
                data: JSON.stringify(formData)
            }).then(function (response) {
                console.log(response)
                if (response.data.STATUS) {
                    $scope.FinallSkill();
                }
            })
        }
    }

    $scope.FinallSkill();
});
