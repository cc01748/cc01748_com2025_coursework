//Function ensure no fields are left empty in form when submitted
$(document).ready(function() {

    $('#submit_button').click(function() {
        // Grab all values stored in form on click
        var user = $('#formGroupUser').val();
        var email = $('#formGroupEmail').val();
        var message = $('#formGroupMessage').val();
        // Check that user field is not empty
        if (user.length < 1) {
            alert("Username field empty");
            return false;
        }
        // Check that email field is not empty
        else if (email.length < 1) {
            alert("Email field empty");
            return false;
        }
        // Check that message field is not empty
        else if (message.length < 1) {
            alert("Message field empty");
            return false;
        }
        // If all test cases pass, post form
        else {
            
        };
    });
})
