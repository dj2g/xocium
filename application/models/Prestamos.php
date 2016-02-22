<?php

class Prestamos extends CI_Model
{
    public $descripcion;
    public $monto;
    public $fecha;
    public $estado;
    public $tipo_cuota;
    public $cant_tipocuota;
    private $table = "prestamo";

    public function __construct()
    {
        // Call the CI_Model constructor
        parent::__construct();
        $this->load->model("Prestamo_Clientes");
        $this->load->model("Garantias");
        $this->load->model("Cuotas");
    }

    public function getPrestamos(){
        $sql="SELECT
                    (cliente.nombres||' '||cliente.apellidos||'-'||cliente.dni) as cliente,
                    prestamo.fecha,
                    prestamo.monto,
                    detalle_cliente_prestasmo.id as id_detalle,
                    prestamo.id as idprestamo
                    FROM
                    cliente
                    INNER JOIN detalle_cliente_prestasmo ON detalle_cliente_prestasmo.idcliente = cliente.id
                    INNER JOIN prestamo ON detalle_cliente_prestasmo.idprestamo = prestamo.id";
        $query = $this->db->query($sql);
        $resultado = $query->result();
        return $resultado;
    }

     public function insert()
    {
        $this->descripcion = $this->input->post('cliente_txt');
        $this->monto = $this->input->post('prestamo') + ($this->input->post('prestamo') * $this->input->post('tasa_interes') / 100);
        $this->fecha = $this->input->post('fecha');
        $this->estado = "D";
        $this->tipo_cuota = $this->input->post("cuotas");
        $this->cant_tipocuota = $this->input->post('nrocuotas');
        $insertado=$this->db->insert($this->table, $this);
        if(!$insertado){
            Throw new Exception("El prestamo no fue insertado");
        }
        $lastid=$this->db->insert_id();
        //FIN PRESTAMO
        $data = ['fecha' => $this->input->post('fecha'), 'idcliente' => $this->input->post("idcliente"), 'idprestamo' => $lastid, 'garante' => $this->input->post("garante"), 'dni_garante' => $this->input->post("garante_dni"), "direccion_garante" => $this->input->post("garante_direccion")];
        $idprestamo_cliente = $this->Prestamo_Clientes->insert($data);
        //FIN PRESTAMO_CLIENTE
        if (isset($_POST["nameganratias"])) {
            for ($i = 0; $i < count($this->input->post("nameganratias")); $i++) {
                $datos = ["idcliente_prestamo" => $idprestamo_cliente, "descripcion" => $this->input->post("nameganratias")[$i], "monto" => $this->input->post("preciogarantias")[$i], "fecha" => $this->input->post('fecha')];
                $this->Garantias->insert($datos);
            }
        }
        //FIN GARANTIAS
        $diasEspera = 1;
        $datainter = explode("-", $this->input->post("cuotas"));
        $intervalodias = $datainter[1];
        $cuota = ($this->input->post('prestamo')    +($this->input->post('prestamo') * $this->input->post('tasa_interes') / 100)) / $this->input->post('nrocuotas');
        $dias = date('Y-m-d', strtotime('+' . $diasEspera . ' days', strtotime($this->input->post('fecha'))));
        for ($i = 0; $i < $this->input->post('nrocuotas'); $i++) {
            $data = ['fecha' => $dias, 'idprestamo' => $lastid, 'num_cuota' => $this->input->post("nrocuotas"), 'monto' => $cuota, "intervalodias" => $intervalodias];
            $this->Cuotas->insert($data);
            $dias = date('Y-m-d', strtotime('+' .$intervalodias . ' days', strtotime($dias)));
        }
        //FIN CUOTAS
        return "OK";
    }

    public function update()
    {
        $this->nombres = $_POST['nombres'];
        $this->apellidos = $_POST['apellidos'];
        $this->dni = $_POST['dni'];
        $this->direccion = $_POST['direccion'];
        $this->coorx = $_POST['coorx'];
        $this->coory = $_POST['coory'];
        $this->monto = $_POST['monto'];

        $this->db->update('cliente', $this, ['id' => $_POST['id']]);
        return "OK";
    }

    public function delete($id)
    {
        $this->db->delete($this->table, ['id' => $id]);
        return json_encode(["Result" => "OK"]);
    }



}