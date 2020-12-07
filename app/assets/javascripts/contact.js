//Function ensure no fields are left empty in form when submitted
$(document).ready(function() {
    $('#submit_button').click(function() {
        var user = $('#formGroupUser').val();
        var email = $('#formGroupEmail').val();
        var message = $('#formGroupMessage').val();
        if (user.length < 1) {
            alert("Username field empty");
            return false;
        };
        if (email.length < 1) {
            alert("Email field empty");
            return false;
        };
        if (message.length < 1) {
            alert("Message field empty");
            return false;
        }
    });
})