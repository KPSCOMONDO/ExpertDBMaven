var app = angular.module('location--app', ['angularUtils.directives.dirPagination']);

app.controller('location__controller', function ($scope, $http) {
    $scope.ITEMS = [{'ID': '', 'STATUS': false}]
    $scope.loading = true;
    $scope.FinallLocation = function () {
        $http.get(CONFIGURATION.getBase_url() + "/component/location/findall")
                .then(function (response) {
                    $scope.loading = false;
                    $scope.LOCATIONS = (response.data.DATA).reverse();
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
            $scope.updateLocation(element);
        }
        element.STATUS = !element.STATUS;
    }

    $scope.setItemStatus = function () {
        $.map($scope.LOCATIONS, function (item) {
            item.STATUS = false;
        })
    }

    /*
     * Create new 
     */
    $scope.createLocation = function () {
        $scope.loading = true;
        var formData = {
            "LOCATION STATUS": $scope.txtLocation,
            "DESCRIPTION": "Not Avaliable"
        }
        $http({
            method: 'POST',
            url: CONFIGURATION.getBase_url() + "/component/location/create",
            data: JSON.stringify(formData)
        }).then(function (response) {
            console.log(response)
            if (response.data.STATUS) {
                $scope.loading = false;
                $scope.FinallLocation();
            }
        })
    }
    /**
     * Update language
     * 
     */
    $scope.updateLocation = function (element) {
        $scope.loading = true;
        var formData = {
            "LOCATION ID": element.ID,
            "LOCATION": element.LOCATIONSTATUS
        }
        $http({
            method: 'PUT',
            url: CONFIGURATION.getBase_url() + "/component/location/update",
            data: JSON.stringify(formData)
        }).then(function (response) {
            console.log(response)
            if (response.data.STATUS) {
                $scope.loading = false;
                $scope.FinallLocation();
            }
        }, function (error) {
            console.log("EROOR:", error)
            $scope.loading = false;
        })
    }
    $scope.deleteLocation = function (element) {
        DIALOG.confirm("Delete!", element.DESCRIPTION + " is being deleted", function () {
            $http({
                method: 'DELETE',
                url: CONFIGURATION.getBase_url() + "/component/location/delete/" + element.ID
            }).then(function (response) {                
                if (response.data.STATUS) {
                    $scope.loading = false;
                    $scope.FinallLocation();
                    DIALOG.success("Deleted","")
                }else{
                    DIALOG.error("Error!", element.DESCRIPTION +" is used.")
                }
            }, function (error) {                
                $scope.loading = false;
                DIALOG.error("Error!", error.message)
            })
        })
    }
    $scope.FinallLocation();
});
