var LOG_IN_HANDLER = new Log_In()
/*
................................................
Log In $& Password handlers
................................................
 */

function Log_In() {
    var self = this;

    this.init = function () {
        self.GoTo_Home();
        self.GoTo_SignUp();
        //self.GoTo_ForgotPassword();
        //self.ChangeForm();
    }

    //---------------------------------------
    //LogIn Get
    //---------------------------------------
    this.GoTo_Home = function () {

        //$(".LogInButton").click(function (event) {
        //    // Ir al Home si el login es exitoso
        //    window.location.href = "../ASPX/HomePage.aspx";
        //    return false;
        //});
    }

    //---------------------------------------
    //SignUp Button Handler
    //---------------------------------------
    this.GoTo_SignUp = function () {

        // Click Function
        $(".toggle").click(function (event) {
            // Ir al Home si el login es exitoso
            window.location.href = "../ASPX/SignUp.aspx";
            return false;
            //console.log("Pasando a la siguiente pagina");
        });
    }
} // End of Script

