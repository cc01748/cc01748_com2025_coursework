// Simple function to ensure no fields are left empty in form when submitted
$(document).ready(function() {
    $('#submit_button').click(function() {
        var user = $('#formGroupUser').val();
        var email = $('#formGroupEmail').val();
        var message = $('#formGroupMessage').val();
        if (user.length < 1) {
            alert("Username field empty");
        };
        if (email.length < 1) {
            alert("Email field empty");
        };
        if (message.length < 1) {
            alert("Message field empty");
        }
    });
})