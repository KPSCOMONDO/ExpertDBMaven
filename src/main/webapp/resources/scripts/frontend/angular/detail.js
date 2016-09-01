var app = angular.module('detail--app', []);

app.controller('detail__controller', function ($scope, $http) {
    $scope.LOGIN = APP_CACHE.get("LOGIN")
    $scope.logOut = function () {
        APP_CACHE.set("LOGIN", false)
        $scope.LOGIN = false
    }
    $scope.loading = true;
    REQUEST.GET("/filter/expert/find-by-expert-id/" + APP_CACHE.get("EXPERT_ID"), $http, function (response) {
        if (($scope.EXPERTS = response.data.DATA)) {
            console.log($scope.EXPERTS)
            $scope.IMAGE_URL = CONFIGURATION.getDocument_url() + $scope.EXPERTS.IMAGEURL
        }
        $scope.loading = false;
    }, function (error) {
        $scope.loading = false;
        REQUEST.ERROR(error)
    })

    $scope.DONLOAD = function (element) {

        $scope.loading = true;
        console.log(element)
        REQUEST.DOWNLOAD(element.DOCUMENTID, function () {

        }, function (error) {
            REQUEST.ERROR(error)
            $scope.loading = false;
        })
    }
    $scope.sendEmail = function () {
        REQUEST.POST("/utility/sendmail", {
            "target": "sokchanny.sg@gmail.com", //$scope.TARGET,
            "subject": $scope.txtSubject,
            "text": $scope.txtText
        }, $http, function (data) {
            console.log("SUCCESS", data)
            DIALOG.success("ជោកជ័យ", "ការផ្ញើរសារទទួលបានជោគជ័យ")
            if (data.data.STATUS) {
                //REQUEST.SUCCESS(data)
            } else {
                //REQUEST.ERROR(data)
            }
        }, function (data) {
            console.log("FAIL", data)
        })
    }
    $scope.$watch('cbo_email', function (element) {
        if (element != undefined) {
            $scope.TARGET = element.EMAIL
        }
    });
});
