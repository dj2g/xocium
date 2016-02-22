var nombre=$("#nombre");
var razon_social=$("#razon_social");
var ruc=$("#ruc");
var direccion=$("#direccion");
var telefono=$("#telefono");
var rpm=$("#rpm");
var rpc=$("#rpc");
var ciudad=$("#ciudad");
var departamento=$("#departamento");
var descripcion=$("#descripcion");
var rec_titulo=$("#rec_titulo");
var rec_descripcion=$("#rec_descripcion");
var email=$("#email");
var mision=$("#mision");
var vision=$("#vision");
//var img1=$("#img1");
var save=$("#save");
var edit=$("#edit");
var form1=$("#form1");
var guardar =function(){
var bval = true;
    bval = bval && nombre.required();
    bval = bval && razon_social.required();
    bval = bval && ruc.required();
    bval = bval && direccion.required();
    bval = bval && telefono.required();
    bval = bval && rpm.required();
    bval = bval && rpc.required();
    bval = bval && ciudad.required();
    bval = bval && departamento.required();
    bval = bval && descripcion.required();
    bval = bval && rec_titulo.required();
    bval = bval && rec_descripcion.required();
    bval = bval && email.required();
    bval = bval && mision.required();
    bval = bval && vision.required();
    //bval = bval && img1.required();
    if(bval){
            form1.submit();
    }
}

var editar =function(){
   // $('link[rel="stylesheet"]').attr('disabled', 'disabled');
$("#nombre,#razon_social,#ruc,#direccion,#telefono,#rpm,#rpc,#ciudad,#departamento,#descripcion,#rec_titulo,#rec_descripcion,#email").removeAttr('disabled');
    save.attr({'style':' '});
    edit.attr({'style':'display:none;'});
}





