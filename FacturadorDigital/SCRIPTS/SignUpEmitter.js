var SIGN_UP_HANDLER = new Sign_Up() //Declara Variable 

function Sign_Up() { // Crea funcion
    var self = this; // Declara funcion var (Variable) como self. La igual a *esto* (this). 

    this.init = function () { // *Esto* inicializa la funcion que envuelve todas las demas.
        self.ChangeForm(); // Se asigna el self al changeform() que es otra funcion.
    }

    //---------------------------------------
    //    SignUp display form juridico
    //---------------------------------------

    this.ChangeForm = function () { // Aqui la funcion ya se puede ejecturar y se va inicializar en orden jerarquico 
        $("input[name='SignUpType']:radio")//en el HTML
            .change(function () {
                $("#juridica").toggle($(this).val() == "1");
                console.log("Cambia a juridica")
                $("#fisica").toggle($(this).val() == "2");
                console.log("Cambia a Fisica")
            });
    }

}