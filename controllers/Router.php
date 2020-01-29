<?php
class Router{
    public $route;
    public function __construct($route){

        $session_options= array(
            'cookie_lifetime' => 20,
            'read_and_close'  => true,
        );

        if(!isset($_SESSION)){
            session_start($session_options);
        }

        if(!isset($_SESSION['ok'])){
            $_SESSION['ok']=false;
        }
        if($_SESSION['ok']){
            $this->route=isset($_GET['r']) ? $_GET['r'] : 'home';
            $controller =new ViewController();
            switch ($this->route){
                case 'home':
                    $controller->load_view('home');
                    break;
                case 'pagos':

                    $controller->load_view('pagos');
                    break;
                case 'dashboard':

                    $controller->load_view('dashboard');
                    break;
                case 'salir':
                    $user_session= new SessionController();
                    $user_session->logout();
                    break;
                default:
                    $controller->load_view('error404');
                    break;
            }

        }else{
            if(!isset($_POST['dni'])){
                $login_form=new ViewController();
                $login_form->load_view('login');
            }else{
                $user_session=new SessionController();
                $session=$user_session->login($_POST['dni']);
                if (empty($session)){
                    $login_form=new ViewController();
                    $login_form->load_view('login');
                    header ('Location: ./?error=El DNI '. $_POST['dni'].' es incorrecto');
                }else{
                    $_SESSION['ok']=true;
                    foreach ($session as $row){
                        $_SESSION['dni']=$row['dni'];
                        $_SESSION['nombre']=$row['nombre'];
                        $_SESSION['apellido']=$row['apellido'];
                        $_SESSION['tipousuario']=$row['tipousuario'];
                        $_SESSION['estado']=$row['estado'];
                    }
                    header ('Location:./');
                }
            }

        }
    }
}
