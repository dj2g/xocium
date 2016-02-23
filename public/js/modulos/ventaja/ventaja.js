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
                        visibility : 'hidden',
                        input: function (data) {
                            return '<input type="file" name="img" id="img" />';
                        }
                    },
                estado:{
                    type:'hidden',
                    visibility : 'hidden'
                }

            },function(event, data){
                var bval = true;
                    bval = bval && $("#Edit-nombre_ventaja").required();
                    bval = bval && $("#Edit-descripcion").required();
                    bval = bval && $("#img").required();
                    if (bval){
                        return true;
                    }
                    return false;
                }

            ); 



    

