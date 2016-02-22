<?php
class Clientes extends CI_Model {
    public $nombres;
    public $apellidos;
    public $dni;
    public $direccion;
    public $coorx;
    public $coory;
    public $monto;
    private $table="cliente";

    public function __construct()
    {
        // Call the CI_Model constructor
        parent::__construct();
    }

    public function getCliente()
    {
        $query = $this->db->get($this->table);
        return $query->result();
    }

    public function lista()
    {
        $valor = $this->input->post("query");
        $sql="SELECT id,(nombres||' '||apellidos||'-'||dni)as texto,monto FROM cliente
		where nombres||' '||apellidos||'-'||dni like '%".$valor."%'";
        $query=$this->db->query($sql);
        $resultado=$query->result();
        $result = array();
        foreach ($resultado as $p) {
            $array = array();
            $array['id'] = $p->id;
            $array['texto'] = $p->texto;
            $array['monto'] = $p->monto;
            $result[] = $array;
        }
      return  $this->output
            ->set_content_type('application/json')
            ->set_output(json_encode($result));

    }

    public function Deudores()
    {
        $valor = $this->input->post("query");
        $sql="SELECT
                detalle_cliente_prestasmo.id,
                detalle_cliente_prestasmo.idprestamo,
                prestamo.descripcion
                FROM
                detalle_cliente_prestasmo
                INNER JOIN prestamo ON detalle_cliente_prestasmo.idprestamo = prestamo.id
                WHERE
                detalle_cliente_prestasmo.estado = 'D'
                AND prestamo.descripcion like '%".$valor."%'";
        $query=$this->db->query($sql);
        $resultado=$query->result();
        $result = array();
        foreach ($resultado as $p) {
            $array = array();
            $array['id'] =$p->id;
            $array['texto'] =trim($p->descripcion);
            $array['monto'] =$p->idprestamo;
            $result[] = $array;
        }
      return  $this->output
            ->set_content_type('application/json')
            ->set_output(json_encode($result));

    }
    public function insert()
    {
        $this->nombres    = $this->input->post("nombres");
        $this->apellidos  = $this->input->post("apellidos");
        $this->dni    = $this->input->post("dni");
        $this->direccion  = $this->input->post("direccion");
        $this->coorx  = $this->input->post("coorx");
        $this->coory  = $this->input->post("coory");
        $this->monto  = $this->input->post("monto");
       // $this->date     = time();

        $this->db->insert($this->table, $this);
        return "OK";
    }
    public function update()
    {
        $this->nombres    = $this->input->post("nombres");
        $this->apellidos  = $this->input->post("apellidos");
        $this->dni    = $this->input->post("dni");
        $this->direccion  = $this->input->post("direccion");
        $this->coorx  = $this->input->post("coorx");
        $this->coory  = $this->input->post("coory");
        $this->monto  = $this->input->post("monto");

        $this->db->update('cliente', $this,['id' => $this->input->post("id")]);
        return "OK";
    }

    public function delete($id){
        $this->db->delete('cliente',['id' => $id]);
        return  $this->returnJson(array());
    }

    public function cliente($id){
       $query = $this->db->get_where('cliente',['id' => $id]);
        return $query->result();
    }


}