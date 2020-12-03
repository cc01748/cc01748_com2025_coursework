// Simple function to ensure no fields are left empty in form when submitted
$('#submit_button').click(function(){
    $('input').each(function() {
        if(!$(this).val()){
            alert('Empty fields detected');
           return false;
        }
    });
});