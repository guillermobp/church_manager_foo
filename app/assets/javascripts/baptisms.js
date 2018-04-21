function button_on_click(e) {
  let data = $(e.target).data()
  if ('toggle' === data.command && 'form' === data.toggle && data.target) {
    $('div.side-fields').not(data.target).addClass('d-none');
    $(data.target).toggleClass('d-none');
  }
  if ('set' === data.command && data.target) {
    let first_name = $(`${data.target}-first-name`).val();
    let last_name = $(`${data.target}-last-name`).val();
    $(data.target).val(`${first_name} ${last_name}`);
    $(e.target).parents('.side-fields').addClass('d-none');
  }
}

$(document).on('turbolinks:load', () => {
  $('button').on('click', button_on_click);
});
