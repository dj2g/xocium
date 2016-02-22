
jtableCreate('Tabla de Competencias','competencia',{
                id_competencia: {
                    key: true,
                    list: false
                },
                descripcion: {
                    title: 'Ventaja',
                    width: '20%'
                },
                img: {
                    type:'file',
                    visibility : 'hidden'
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