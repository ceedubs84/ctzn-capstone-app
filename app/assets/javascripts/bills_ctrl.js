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

    $scope.addUserBill = function(inputBillId, inputOfficialTitle, inputUserId) {
      var params = {
        billId: inputBillId,
        officialTitle: inputOfficialTitle,
        userId: inputUserId,
      };
      $http.post('/api/v1/user_bills', params).then(function(response) {
        $scope.userBills.push(response.data);
      }, function(error) {
        $scope.errors = error.data.errors;
      });
    };
        
    window.$scope = $scope;
  });
})();