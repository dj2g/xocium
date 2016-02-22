var mision=$("#mision");
var vision=$("#vision");
var save=$("#save");
var edit=$("#edit");

var guardar =function(){
var bval = true;
    bval = bval && mision.required();
    bval = bval && vision.required();
    if(bval){
            form1.submit();
    }
}

var editar =function(){
   // $('link[rel="stylesheet"]').attr('disabled', 'disabled');
$("#mision,#vision").removeAttr('disabled');
    save.attr({'style':' '});
    edit.attr({'style':'display:none;'});
}