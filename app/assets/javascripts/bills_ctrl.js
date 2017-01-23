/* global angular */

(function() {
  angular.module("app").controller("billsCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get('/api/v1/bills').then(function(response) {
        $scope.bills = response.data;
        $scope.orderAttribute = 'introduced_on';
        $scope.isOrderDescending = true;
      });
    };
        
    window.$scope = $scope;
  });
})();