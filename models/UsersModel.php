<?php 
class UsersModel extends Model {

	public function set( $propietario_data = array() ) {
		foreach ($propietario_data as $key => $value) {
			$$key = $value;
		}
		$this->query = "REPLACE INTO propietario(apellido,dni,estado,nombre,tipousuario)
                        VALUES ($apellido,$dni,$estado,$nombre,$tipousuario)";
		$this->set_query();
	}

	public function get( $dni = '' ) {
		$this->query = ($dni != '')
			?"SELECT * FROM propietario WHERE dni = $dni"
			:"SELECT * FROM propietario";
		
		$this->get_query();
		$num_rows = count($this->rows);
		$data = array();

		foreach ($this->rows as $key => $value) {
			array_push($data, $value);
		}

		return $data;
	}

	public function del( $dni = '' ) {
		$this->query = "DELETE FROM propietario WHERE dni = $dni";
		$this->set_query();
	}
	public function validate_user($dni){
	    $this->query="SELECT * FROM propietario where  dni=$dni";
        $this->get_query();
        $data = array();

        foreach ($this->rows as $key => $value) {
            array_push($data, $value);
        }

        return $data;
    }

}