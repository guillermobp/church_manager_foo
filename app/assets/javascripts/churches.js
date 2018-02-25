$(document).on('turbolinks:load', () => {

  $('form').on('ajax:success', (e, data, status, xhr) => {
    swal('Update', 'The data has been updated successfully!', 'success');
  }).on('ajax:error', () => {
    swal('Update', 'An error occured trying to save the data', 'error');
  });

  $('select#church_region').on('change', (e) => {
    var rid = $(e.target).val();

    $('select#church_province')
    .empty()
    .load(`/regions/${rid}/provinces`, () => {
      $('select#church_province').change();
    });
  });

  $('select#church_province').on('change', (e) => {
    var rid = $('#church_region').val();
    var pid = $(e.target).val();

    $('select#church_commune')
      .empty()
      .load(`/regions/${rid}/provinces/${pid}/communes`);
  });

  $('#modal-contact').on('show.bs.modal', (e) => {
    var id = $(e.relatedTarget).data('id');
    $('#modal-contact .modal-body').load(`/contacts/${id}`);
  });

  $('.modal.priest-details').on('show.bs.modal', (e) => {
    var id = $(e.relatedTarget).data('id');
    $('.modal.priest-details .modal-body').load(`/priests/${id}`);
  });

});
