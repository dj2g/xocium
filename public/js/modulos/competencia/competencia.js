
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
                        visibility : 'hidden',
                        type:'file'
                },
                estado:{
                    type:'hidden',
                    visibility : 'hidden'
                }

            },
                    function(event, data){
                            
                        var bval = true;
                            bval = bval && $("#Edit-descripcion").required();
                            bval = bval && $("#Edit-img").required();
                            if (bval){
                                return true;
                            }
                            return false;
                        }
            ); 

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