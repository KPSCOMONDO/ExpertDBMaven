var app = angular.module("home__app", []);
app.controller("home__controller", function ($scope, $http) {
    //-----------------declarationion----------------- 
    $scope.loading = true;
    $scope.hash="#";
    /**
     *  get data data by using rest 
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

    /*
     * Filter expert by its skill id 
     */
    $scope.doFilter = function (element) {
        $scope.loading = true;
        $http.get(BASE_URL + "/home/expert/find-by-skill-id/" + element.item.ID)
                .then(function (response) {
                    $scope.loading = false;
                    $scope.experts = response.data.DATA;
                    $scope.counters = response.data.COUNTER;
                }, function (err) {
                    $scope.loading = false;
                });
    }
});