var SIGN_UP_HANDLER = new Sign_Up()
/*
................................................
Log In $& Password handlers
................................................
 */
function Sign_Up() {
    var self = this;

    this.init = function () {
        self.GoTo_LogIn();

        //self.GoTo_ForgotPassword();
        //self.ChangeForm();
    }
    //---------------------------------------
    //SignUp Button Handler
    //---------------------------------------
    this.GoTo_LogIn = function () {

        // Click Function
        $(".toggle").click(function (event) {
            // Ir al Home si el login es exitoso
            window.location.href = "../ASPX/LogInPage.aspx";
            return false;
        });
    }
} // End of Script

