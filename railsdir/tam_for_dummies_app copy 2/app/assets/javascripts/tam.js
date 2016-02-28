$(document).on("page:change", function() {
  $(".dropdown").on("shown.bs.dropdown", function() {
    $(".navlink.open").removeClass("open");
  });
  $(".dropdown").on("hidden.bs.dropdown", function() {
    $(".navlink").addClass("open");
  });
});

$(document).bind('DOMNodeInserted', function(event) {
  if (event.target.nodeName == 'VIDEO') {
    if (event.target.id == 'video_tam') {
      $("#video_tam")[0].onplay = function () {
        $('#off-air-img').addClass('hidden');
        $('#on-air-img').removeClass('hidden');
      };
    };
  };
});
