
jtableCreate('Tabla de Ventajas','ventaja',{
                id_ventaja: {
                    key: true,
                    list: false
                },
                nombre_ventaja: {
                    title: 'Ventaja',
                    width: '20%'
                },
                descripcion: {
                    type:'textarea',
                    title: 'Descripcion',
                    width: '80%'
                },
                img: {
                title: 'Customers File',
                list: false,
                create: true,
                edit: true,
                input: function (data) {
                return '<input type="text"id="FileUpload" name="FileUpload"></input>';
                }
                },
                estado:{
                    type:'hidden',
                    visibility : 'hidden'
                }

            }); 

var nombre_ventaja=$("#Edit-nombre_ventaja");
var descripcion=$("#Edit-descripcion");
var form=$("#");
var save=function(){
    var bval = true;
    bval = bval && nombre_ventaja.required();
    bval = bval && descripcion.required();
     if(bval){
            
    }
}

