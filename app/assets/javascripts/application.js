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
  if ($('table').length) {
    $('table').DataTable();
  }
});
