var app = angular.module('language--app', ['angularUtils.directives.dirPagination']);

app.controller('language__controller', function ($scope, $http) {
    $scope.loading = true;
    $scope.FinallLanguage = function () {
        $http.get(CONFIGURATION.getBase_url() + "/component/language/findall")
                .then(function (response) {
                    $scope.loading = false;
                    $scope.LANGUAGES = (response.data.DATA).reverse();
                    console.log("Language:", $scope.LANGUAGES)
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
            $scope.updateLanguage(element);
        }
        element.STATUS = !element.STATUS;
    }

    $scope.setItemStatus = function () {
        $.map($scope.LANGUAGES, function (item) {
            item.STATUS = false;
        })
    }

    /*
     * Create new 
     */
    $scope.createLanguage = function () {
        $scope.loading = true;
        var formData = {
            "LANGUAGE STATUS": $scope.txtLanguage
        }
        $http({
            method: 'POST',
            url: CONFIGURATION.getBase_url() + "/component/language/create",
            data: JSON.stringify(formData)
        }).then(function (response) {
            if (response.data.STATUS) {
                $scope.loading = false;
                $scope.FinallLanguage();
            }
        })
    }
    /**
     * Update language
     * 
     */
    $scope.updateLanguage = function (element) {
        $scope.loading = true;
        var formData = {
            "LANGUAGE ID": parseInt(element.ID),
            "LANGUAGE": element.LANGUAGE.toString()
        }
        $http({
            method: 'PUT',
            url: CONFIGURATION.getBase_url() + "/component/language/update",
            data: JSON.stringify(formData)
        }).then(function (response) {
            if (response.data.STATUS) {
                $scope.loading = false;
                $scope.FinallLanguage();
            }
        }, function (error) {
            $scope.loading = false;
        })
    }
    $scope.deleteLanguage = function (element) {
        DIALOG.confirm("Deleting!", element.LANGUAGE + " is being deleted.",
                function () {
                    $http({
                        method: 'DELETE',
                        url: CONFIGURATION.getBase_url() + "/component/language/delete/" + element.ID
                    }).then(function (response) {
                        if (response.data.STATUS) {
                            $scope.loading = false;
                            $scope.FinallLanguage();
                            DIALOG.success("Deleted","")
                        } else {
                            DIALOG.error("Error","Cannot delete "+ element.LANGUAGE + ",\nbecause it is used by other record")
                        }
                    }, function (error) {
                        DIALOG.error("Error!", error.message)
                        $scope.loading = false;
                    })

                    console.log("Del Language:", element)
                })
    }
    $scope.FinallLanguage();
});
