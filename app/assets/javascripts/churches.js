$(document).on('turbolinks:load', () => {

  $("form").on("ajax:success", (e, data, status, xhr) => {
    swal("Update", "The data has been updated successfully!", "success");
  }).on("ajax:error", () => {
    swal("Update", "An error occured trying to save the data", "error");
  });

  $("select#church_region").on("change", (e) => {
    var region_id = $(e.target).val();

    $("select#church_province").empty();

    $.get(`/regions/${region_id}/provinces`)
      .then((provinces) => { $("select#church_province").html(provinces) })
      .always(() => { $("select#church_province").change() });
  });

  $("select#church_province").on("change", (e) => {
    var region_id = $("#church_region").val();
    var province_id = $(e.target).val();

    $("select#church_commune").empty();

    $.get(`/regions/${region_id}/provinces/${province_id}/communes`)
      .then((communes) => { $("select#church_commune").html(communes) });
  });

  $("#modal-contact").on("show.bs.modal", (e) => {
    var id = $(e.relatedTarget).data("id");
    $.get(`/contacts/${id}`)
      .then((response) => { $("#modal-contact .modal-body").html(response) });
  });

  $(".modal.priest-details").on("show.bs.modal", (e) => {
    var id = $(e.relatedTarget).data("id");
    $.get(`/priests/${id}`).then((response) => { $(".modal.priest-details .modal-body").html(response) })
  });

});
