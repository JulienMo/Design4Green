<?php
class pdoB4G{
    public static $user = "";
    public static $mdp = "";
    public static $bdd = "dbname=";
    public static $serveur = "";


    public static $monPdo;
    public static $monPdoPermis = null;

    public function __construct() {
        try {
            PdoPermis::$monPdo = new PDO(PdoPermis::$serveur.';'.PdoPermis::$bdd, PdoPermis::$user, PdoPermis::$mdp);
            PdoPermis::$monPdo->query("SET CHARARCTER SET utf8");
        } catch (PDOException $e) {
            print "Erreur de connexion PDO ";
            die();
        }
    }
    public function _destruct(){
        PdoPermis::$monPdo = null;
    }

    /**
    * Fonction statique qui crée l'unique instance de la classe
    *
    * Appel : $instancePdoPermis = PdoPermis::getPdoPermis();
    * @return l'unique objet de la classe PdoPermis
    */
    public  static function getPdoPermis()
    {
    if(PdoPermis::$monPdoPermis == null)
    {
        PdoPermis::$monPdoPermis= new PdoPermis();
    }
    return PdoPermis::$monPdoPermis;
    }
}
?>
