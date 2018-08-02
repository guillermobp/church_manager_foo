//= require sweetalert2
//= require rails-ujs
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require dataTables/jquery.dataTables
//= require select2-full
//= require jquery_extensions
//= require churches_show
//= require baptisms

$(document).on('turbolinks:load', () => {
  let controller = $('body').data('controller');
  let action = $('body').data('action');

  if ($('table').length) {
    let datatable_options;

    if ('baptisms' === controller && 'index' === action) {
      datatable_options = {
        dom: 'ftip',
        columns: [
          { 'data': 'row_number' },
          { 'data': 'name_for_display' },
          { 'data': 'nin_for_display' },
          { 'data': 'date' },
          { 'data': 'actions' }
        ]
      };
    }

    $('table').DataTable(datatable_options);
  }
});
