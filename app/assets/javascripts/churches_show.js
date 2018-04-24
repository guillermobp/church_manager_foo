let datatable_priests_columns = [
  { 'data': 'Id' },
  { 'data': 'RowNumber' },
  { 'data': 'Select' },
  { 'data': 'FullName' },
  { 'data': 'DisplayName' },
  { 'data': 'Active' },
  { 'data': 'Actions' },
];

let datatable_priests_column_defs = [
  { 'targets': [0, 2], 'visible': false},
  { 'targets': [0, 1, 2, 5, 6], 'orderable': false },
  { 'targets': [0, 1, 2, 5, 6], 'searchable': false }
];

let datatable_priests_options = {
  'dom': 't',
  'autoWidth': false,
  'columns': datatable_priests_columns,
  'columnDefs': datatable_priests_column_defs,
  'order': [[3, 'asc'], [4, 'asc']] // FullName, DisplayName
};

function on_ajax_error(e) {
  swal({
    title: 'Error',
    text: 'An error occured trying to save the data',
    type: 'error'
  });
}

function row_action_on_ajax_success(e) {
  let data = $(e.target).data();
  if (data.command && 'delete' === data.command) {
    $(e.target).parents('table').DataTable().row($(e.target).parents('tr')).remove().draw();
  }
}

function church_region_id_on_change(e) {
  let rid = $(e.target).val();
  $('select#church_province_id').empty().load(`/regions/${rid}/provinces`, () => {
    $('select#church_province_id').change();
  });
}

function church_province_id_on_change(e) {
  let rid = $('#church_region_id').val();
  let pid = $(e.target).val();
  $('select#church_commune_id').empty().load(`/regions/${rid}/provinces/${pid}/communes`);
}

function datatable_on_draw(e) {
  $(e.target).DataTable().column(1).nodes().each((cell, i) => {
    cell.innerHTML = (i + 1);
  });
}

function modal_on_show(e) {
  let data = $(e.relatedTarget).data();
  $('.modal-content', e.target).load(data.url);
}

function modal_on_hidden(e) {
  $('.modal-content', e.target).html('');
}

$(document).on('turbolinks:load', () => {

  // Init events
  $('form')
  .on('ajax:error', on_ajax_error);

  $('select#church_region_id')
  .on('change', church_region_id_on_change);

  $('select#church_province_id')
  .on('change', church_province_id_on_change);

  $('table')
  .on('draw.dt', datatable_on_draw);

  $('.modal')
  .on('show.bs.modal', modal_on_show)
  .on('hidden.bs.modal', modal_on_hidden);

  $('table#contacts a')
  .on('ajax:success', row_action_on_ajax_success)
  .on('ajax:error', on_ajax_error);

  // Init controls
  $('table#priests')
  .DataTable(datatable_priests_options);

});
