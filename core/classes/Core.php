<?php
class Core {
    protected $db, $result;
    private $rows;

    public function __construct() {
        $options = array (
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_PERSISTENT => true
        );
        try {
            $this->db = new PDO('mysql:host=localhost;dbname=postr;charset=utf8', 'root', '', $options);
        } catch (PDOException $e) {
            echo "An Error occurred ", $e;
        }
    }

    public function query($sql) {
        $this->rows = $this->db->query($sql)->fetchAll();
        return $this->rows;
    }
}