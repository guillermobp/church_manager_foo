function button_on_click(e) {
  let data = $(e.target).data()
  if ('toggle' === data.command && 'form' === data.toggle && data.target) {
    let $my_card = $(data.target).closest('div.card');
    $('div.side-fields').not($my_card).addClass('d-none');
    $my_card.toggleClass('d-none');
  }
  if ('set' === data.command && data.target) {
    let first_name = $(`${data.target}_first_name`).val();
    let last_name = $(`${data.target}_last_name`).val();
    $(data.target).text(`${first_name} ${last_name}`);
    $(e.target).parents('.side-fields').addClass('d-none');
  }
}

function nin_on_keydown(e) {
  return (
    // After k|K no more characters are accepted!
    !(e.target.value.length &&
      e.target.value[e.target.value.length - 1].toLowerCase() === 'k' &&
      !(e.which === 8 || e.which === 9))

    && // Cannot start with 0 or k|K!
    !(!e.target.value.length && (e.which === 96 || e.which === 75))

    && // These are OK!
    !([
      // Number
      96, 97, 98, 99, 100, 101, 102, 103, 104, 105,
      // k|K
      75,
      // Delete & tab
      8, 9
    ].indexOf(e.which) < 0)
  );
}

function nin_on_keyup(e) {
  let foo = e.target.value.replace('-', '');
  let last = foo.length - 1;
  let before_last = last - 1;
  if (last > 0) {
    foo = `${foo.substring(0, last)}-${foo[last]}`;
  }
  e.target.value = foo.toUpperCase();
}

$(document).on('turbolinks:load', () => {

  // Init events
  $('button')
  .on('click', button_on_click);

  $('.national-identification-number')
  .on('keydown', nin_on_keydown)
  .on('keyup', nin_on_keyup);

  // Init controls
  $('select').select2();

});
