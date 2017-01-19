/* global $ */
$(function() {
  $('.open-modal').click(function() {
    var billId = $(this).data().billId;
    $("#modal-user-bill-id").val(billId);
    $('#myModal').modal();
  });
});