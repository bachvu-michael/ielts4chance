( function( $ ){
   
    $('#profile-info').submit(function(event){
        var form = this;
        event.preventDefault();
        var data = {
            loginId :$('#login-id').val(),
            email : $('#email').val(),
            fullname: $('#fullname').val(),
            address: $('#address').val(),
        }
        $.ajax({
        url      : '/login/profileInfoPost/'
        , method   : "POST"
        , data     : data
        , async : true
        , complete  : function( response ){
                if(response.responseText == "true"){
                    $.notify({
                        message: 'Save profile success' 
                    },{
                        type: 'success'
                    });
                }else{
                    $.notify({
                        message: 'Save profile error' 
                    },{
                        type: 'danger'
                    });
                }
            }
        });
        return false;
      });

      var password = document.getElementById("password")
    , confirm_password = document.getElementById("re-password");

    function validatePassword(){
        if(password.value != confirm_password.value) {
            confirm_password.setCustomValidity("Passwords Don't Match");
        } else {
            confirm_password.setCustomValidity('');
        }
    }
    password.onchange = validatePassword;
    confirm_password.onkeyup = validatePassword;

    $('#profile-password').submit(function(event){
        var form = this;
        event.preventDefault();
        var data = {
            password :$('#password').val(),
            rePassword : $('#re-password').val(),
        }
        $.ajax({
        url      : '/login/profilePasswordPost/'
        , method   : "POST"
        , data     : data
        , async : true
        , complete  : function( response ){
                if(response.responseText == "true"){
                    $.notify({
                        message: 'Save password success' 
                    },{
                        type: 'success'
                    });
                }else{
                    $.notify({
                        message: 'Save password error' 
                    },{
                        type: 'danger'
                    });
                }
            }
        });
        return false;
      });
} )( jQuery );