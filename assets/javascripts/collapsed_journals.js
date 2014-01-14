function showJournalDetails()
{
  $(".toggle-journal-details").toggle();

  $(".journal").show();
  $(".journal .details").show();
}

function hideJournalDetails()
{
  $(".toggle-journal-details").toggle();

  $(".journal").hide();
  $(".journal.has-notes").show();
  $(".journal .details").hide();
}

function checkHash(location)
{
  var note_id = location.hash.substr(1);
  if (note_id == "") {
    return false;
  }

  var note_node = document.getElementById(note_id);

  if (note_node) {
    $(note_node.parentNode).show();
    $(note_node.childNodes).show();
    return true;
  } else {
    return false;
  }
}

function checkHashForLink()
{
  checkHash(this);
}

function initializeVisibility()
{
  $("#history").prepend($("#toggle-journal-details-div"));

  $("a.issue").on("click", checkHashForLink);

  $("#show-journal-details").show();

  $(".journal").hide();
  $(".journal.has-notes").show();
  $(".journal .details").hide();

  if (checkHash(window.location)) {
    window.location.href = window.location.href;
  }
}
