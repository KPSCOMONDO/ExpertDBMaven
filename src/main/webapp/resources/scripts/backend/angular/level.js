var app = angular.module('level--app', ['angularUtils.directives.dirPagination']);

app.controller('level__controller', function ($scope, $http) {
    $scope.ITEMS = [{'ID': '', 'STATUS': false}]
    $scope.loading = true;
    $scope.txtELanguage = []
    $scope.FinallLanguage = function () {
        $http.get(CONFIGURATION.getBase_url() + "/component/level/findall")
                .then(function (response) {
                    $scope.loading = false;
                    $scope.LEVELS = (response.data.DATA).reverse();
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
        console.log(element)
        if (element.STATUS) {
            $scope.updateLevel(element);
        }
        element.STATUS = !element.STATUS;
    }

    $scope.setItemStatus = function () {
        $.map($scope.LEVELS, function (item) {
            item.STATUS = false;
        })
    }

    /*
     * Create new 
     */
    $scope.createLevel = function () {
        if ($scope.txtLevel) {
            $scope.loading = true;
            var formData = {
                "LANGUAGE STATUS": $scope.txtLanguage
            }
            $http({
                method: 'POST',
                url: CONFIGURATION.getBase_url() + "/component/language/create",
                data: JSON.stringify(formData)
            }).then(function (response) {
                console.log(response)
                if (response.data.STATUS) {
                    $scope.loading = false;
                    $scope.FinallLanguage();
                }
            })
        }
    }
    /**
     * Update language
     * 
     */
    $scope.updateLevel = function (element) {
        if ($scope.txtELanguage) {
            $scope.loading = true;
            var formData = {
                "LEVEL ID": element.ID,
                "LEVEL STATUS": element.LEVELSTATUS,
                "LEVEL RANGE": element.LEVELRANGE
            }
            $http({
                method: 'PUT',
                url: CONFIGURATION.getBase_url() + "/component/level/update",
                data: JSON.stringify(formData)
            }).then(function (response) {
                console.log(response)
                if (response.data.STATUS) {
                    $scope.loading = false;
                    $scope.FinallLanguage();
                }
            }, function (error) {
                console.log("EROOR:", error)
                $scope.loading = false;
            })
        }
    }
    $scope.deleteLevel = function (element) {
        $http({
            method: 'DELETE',
            url: CONFIGURATION.getBase_url() + "/component/language/delete/" + element.ID
        }).then(function (response) {
            console.log(response)
            if (response.data.STATUS) {
                $scope.loading = false;
                $scope.FinallLanguage();
            }
        }, function (error) {
            console.log("EROOR:", error)
            $scope.loading = false;
        })
    }
    $scope.FinallLanguage();
});
