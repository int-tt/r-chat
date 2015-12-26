var $form = $("#new-message");
var $ta = $("#message-text");

$(document).on("keypress", "#message-text", function(e) {
    if (e.keyCode == 13) { // Enterが押された
        if (e.shiftKey) { // Shiftキーも押された
            $.noop();
        } else if ($ta.val().replace(/\s/g, "").length > 0) {
            e.preventDefault();
            $form.submit();
        }
    } else {
        $.noop();
    }
});
