/* global angular */

(function() {
  angular.module("app").controller("actionsCtrl", function($scope) {
    $scope.toggleComplete = function(status) {
      status.complete = !status.complete;
      console.log('hello');
    };

    window.$scope = $scope;
  });
})();