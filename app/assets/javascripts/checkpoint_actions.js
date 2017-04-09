/* global $ */
$(function() {
  $('.open-modal').click(function() {
    var billId = $(this).data().billId;
    $("#modal-user-bill-id").val(billId);
    $('#myModal').modal();
  });
});

$scope.addCheckpointAction = function(inputActionId, inputDescription, inputDate, inputUserBillId, inputUserId) {
      var params = {
        action_id: inputActionId,
        description: inputDescription,
        date: inputDate,
        user_bill_id: inputUserBillId,
        userId: inputUserId,
      };
      $http.post('/api/v1/checkpoint_actions', params).then(function(response) {
        $scope.checkpointActions.push(response.data);
      }, function(error) {
        $scope.errors = error.data.errors;
      });
    };