<?php
include 'conexao.php';

session_start();
//varifica o formulário da tela login
// if($_SERVER["REQUEST_METHOD"]==='POST'){
    $nome_usuario = $_POST['nome_usuario'];
    $senha = $_POST['senha'];

    $sql = "SELECT * FROM login WHERE nome_usuario = ? AND senha = ?";

    $stmt = $conexao->prepare($sql);
    $stmt->bind_param('ss', $nome_usuario, $senha);
    $stmt->execute();
    $resultado = $stmt->get_result();

    if($resultado->num_rows === 1){
        //login foi efetuado com sucesso.
        $_SESSION['nome_usuario'] = $nome_usuario;
        header("Location: /login/pg-login.html");
        exit();
    }else{
        echo "credenciais inválidas. Verifique seu nome_usuario e senha";
}
    $conexao->close();
?>