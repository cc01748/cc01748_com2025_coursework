// Ready document
$(document).ready(function() {
    // When "go_to" button is clicked - redirect to vieworder with order number stored in the URL
    $("#go_to_button").click(function() {
        var url = $('#order_number').prop('innerHTML');
        
        window.location = 'vieworder?=' + url;
    });
});