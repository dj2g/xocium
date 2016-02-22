<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth
{

    protected $CI;


    public function __construct()
    {

        $this->CI =& get_instance();

    }

    //creamos una token para nuestros formularios
    public function token()
    {
        $this->CI->load->library('session');
        $token = md5(uniqid(rand(),true));
        $this->CI->session->set_userdata(array('token'=>$token));
        return $token;

    }

    //funCIón para comprobar si el usuario está logueado
    public function is_logged()
    {
        return $this->CI->session->userdata('email') !== FALSE ? TRUE : FALSE;
    }

    //funCIón para registrar a los usuarios encriptando
    //los passwords con bcrypt
    public function register($email,$password)
    {

        $query = $this->CI->db->get_where('users', array('email' => $email));

        if($query->num_rows() == 1)
        {

            return TRUE;

        }else{

            $hash = $this->CI->bcrypt->hash_password($password);

            //comprobamos si el password se ha encriptado
            if ($this->CI->bcrypt->check_password($password, $hash))
            {

                $data = array('email' => $email, 'password' => $hash);
                $this->CI->db->insert('users',$data);

            }

        }

    }

    //funCIón para loguear a los usuarios
    public function login_user($email,$password)
    {

        $this->CI->db->where('email',$email);

        $query = $this->CI->db->get('users');

       //si el nombre de usuario coinCIde y sólo existe uno procedemos
        if($query->num_rows() == 1)
        {
            $user = $query->row();
           //en pass guardamos el hash del usuario que tenemos en la base
           //de datos para comprobarlo con el método check_password de Bcrypt
            $pass = $user->password;

          //esta es la forma de comprobar si el password del
          //formulario coinCIde con el codificado de la base de datos
          if($this->CI->bcrypt->check_password($password, $pass))
          {
                $query = $this->CI->db->get_where('users', array('email' => $email,'password' => $pass));

                if($query->num_rows() == 0)
                {

                    return FALSE;

                }else{

                    return TRUE;

                }
          }

       }

    }

    //funCIón para crear sesiones
    public function crear_sesiones($email,$password)
    {

        $data = array('email' => $email, 'password' => $this->CI->bcrypt->hash_password($password));

        $this->CI->session->set_userdata($data);

    }


    //funCIón para cerrar sesión
    public function logout()
    {

        $this->CI->session->unset_userdata(array('email', 'password'));
        $this->CI->session->sess_destroy();
        redirect(base_url('login','refresh'));

    }

}
/*
 * end libraries/auth.php
 */
