<?php

require_once __DIR__."\..\bd\MySQL.php";

class navegador{

    private int $idNavegador;
    
    public function __construct(private string $nome){
    }

    public function setIdNavegador(int $idNavegador):void{
        $this->idNavegador = $idNavegador;
    }

    public function getIdNavegador():int{
        return $this->idNavegador;
    }

    public function setNome(string $nome):void{
        $this->nome = $nome;
    }

    public function getNome():string{
        return $this->nome;
    }


    public static function find($idNavegador):navegador{
        $conexao = new MySQL();
        $sql = "SELECT * FROM navegadores WHERE idNavegador = {$idNavegador}";
        $resultado = $conexao->consulta($sql);
        $u = new navegador($resultado[0]['nome']);
        $u->setIdNavegador($resultado[0]['idNavegador']);
        return $u;

    }

}