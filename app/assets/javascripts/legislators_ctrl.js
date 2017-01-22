/* global angular */

(function() {
  angular.module("app").controller("legislatorsCtrl", function($scope, $http) {
    $http.get('http://localhost:3000/api/v1/legislators').then(function(response) {
      $scope.legislators = response.data;
      $scope.orderAttribute = 'lastName';
      $scope.isOrderDescending = true;
    });

    $scope.addLegislator = function(inputBioguideId)
      var params = {
        bioguide_id: inputBioguideId,
        user_id: currentUserId,
      };
      $http.post('/api/v1/legislators', params).then(function(response) {
        $scope.legislators.push(response.data);
      }, function(error) {
        $scope.errors = error.data.errors;
      });
    };
    
    window.$scope = $scope;
  });
})();