/* global angular */

(function() {
  angular.module("app").controller("actionsCtrl", function($scope, $http) {
    $http.get('http://localhost:3000/api/v1/checkpoint_actions').then(function(response) {
      $scope.checkpointActions = response.data;
      $scope.orderAttribute = 'date';
      $scope.isOrderDescending = true;
    });

    $scope.toggleComplete = function(status) {
      status.complete = !status.complete;
      console.log('status');
    };

    $scope.addCheckpointAction = function(inputActionId, inputDescription, inputDate, inputUserBillId)
      var params = {
        action_id: inputActionId,
        description: inputDescription,
        date: inputDate,
        user_bill_id: inputUserBillId,
        user_id: currentUserId,
      };
      $http.post('/api/v1/checkpoint_actions', params).then(function(response) {
        $scope.checkpointActions.push(response.data);
      }, function(error) {
        $scope.errors = error.data.errors;
      });
    };
    
    window.$scope = $scope;
  });
})();