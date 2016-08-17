var app = angular.module('position--app', ['angularUtils.directives.dirPagination']);

app.controller('position__controller', function ($scope, $http) {
    $scope.loading = true;
    $scope.FinallPosition = function () {
        $http.get(CONFIGURATION.getBase_url() + "/component/position/findall")
                .then(function (response) {
                    $scope.loading = false;
                    $scope.POSITIONS = (response.data.DATA).reverse();
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
            $scope.updatePosition(element);
        }
        element.STATUS = !element.STATUS;
    }

    $scope.setItemStatus = function () {
        $.map($scope.POSITIONS, function (item) {
            item.STATUS = false;
        })
    }

    /*
     * Create new 
     */
    $scope.createPosition = function () {
        $scope.loading = true;
        var formData = {
            "POSITION STATUS": $scope.txtPosition
        }
        $http({
            method: 'POST',
            url: CONFIGURATION.getBase_url() + "/component/position/create",
            data: JSON.stringify(formData)
        }).then(function (response) {
            if (response.data.STATUS) {
                $scope.loading = false;
                $scope.FinallPosition();
            }
        })
    }
    /**
     * Update position
     * 
     */
    $scope.updatePosition = function (element) {
        $scope.loading = true;
        var formData = {
            "POSITION ID": element.ID,
            "POSITION": element.POSITION
        }
        $http({
            method: 'PUT',
            url: CONFIGURATION.getBase_url() + "/component/position/update",
            data: JSON.stringify(formData)
        }).then(function (response) {
            if (response.data.STATUS) {
                $scope.loading = false;
                $scope.FinallPosition();
            }
        }, function (error) {
            $scope.loading = false;
        })
    }
    $scope.deletePosition = function (element) {
        DIALOG.confirm("Deleting!", element.POSITION + " is being deleted.",
                function () {
                    $http({
                        method: 'DELETE',
                        url: CONFIGURATION.getBase_url() + "/component/position/delete/" + element.ID
                    }).then(function (response) {
                        if (response.data.STATUS) {
                            $scope.loading = false;
                            $scope.FinallPosition();
                            DIALOG.success("Deleted", "")
                        } else {
                            DIALOG.error("Error", "Cannot delete " + element.POSITION + ",\nbecause it is used by other record")
                        }
                    }, function (error) {
                        DIALOG.error("Error!", error.message)
                        $scope.loading = false;
                    })
                })
    }
    $scope.FinallPosition();
});
