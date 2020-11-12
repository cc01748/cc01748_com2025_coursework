$(document).ready(function() {
    $("#go_to_button").click(function() {
        var url = $('#order_number').prop('innerHTML');
        
        window.location = 'vieworder?=' + url;
    });
});