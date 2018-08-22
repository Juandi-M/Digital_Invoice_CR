function onlyOne(checkbox) {
    var checkboxes = document.getElementsByName('percent')
    checkboxes.forEach((item) => {
        if (item !== checkbox) item.checked = false
    })
}

//function Validate() {
//    var rb = document.getElementById("<%=listaDeImpuesto.ClientID%>");
//    var radio = rb.getElementsByTagName("input");
//    var isChecked = false;
//    for (var i = 0; i < radio.length; i++) {
//        if (radio[i].checked) {
//            isChecked = true;
//            break;
//        }
//    }
//    if (!isChecked) {
//        alert("Please select an option!");
//    }

//    return isChecked;
//}