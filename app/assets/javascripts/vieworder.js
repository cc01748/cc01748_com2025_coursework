// Ready document
$(document).on("turbolinks:load",function() {
    // Grab current URL - split it on the order number stored in URL 
    var currentUrl = window.location.href;
    var urlLength = currentUrl.length;
    var orderNumber = currentUrl.substring(38, urlLength);
    
    $('#order_number').text(orderNumber);
});