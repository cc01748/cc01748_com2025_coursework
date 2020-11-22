// Ready document
$(document).on("turbolinks:load",function() {
    // When "go_to" button is clicked - redirect to vieworder with order number stored in the URL
    $("#go_to_button").click(function() {
        var url = $('#order_number').text();
        window.location = 'vieworder?=' + url;
    });
});