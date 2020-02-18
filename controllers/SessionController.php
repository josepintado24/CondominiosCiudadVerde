<?php
class SessionController{
    private $session;

    public function  __construct(){
        $this->session=new PropietarioModel();
    }

    public function login($dni){
        return $this->session->validate_user($dni);
    }
    public function logout(){
            session_start();
            session_destroy();
            header('Location: ./');
    }
}
