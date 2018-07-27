function button_on_click(e) {
  let data = $(e.target).data()
  if ('toggle' === data.command && 'form' === data.toggle && data.target) {
    let $my_card = $(data.target).closest('div.card');
    $('div.side-fields').not($my_card).addClass('d-none');
    $my_card.toggleClass('d-none');
  }
}

$(document).on('turbolinks:load', () => {

  // Init events
  $('button')
  .on('click', button_on_click);

  // Init controls
  $('select:not(.plain-select)')
  .select2({
    width: '100%'
  });

  $('.national-identification-number').nin();
});
