<?php
// Verifica se o formulário foi submetido
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Coleta os dados do formulário
    $nome = $_POST["nome"];

    // Conexão com o banco de dados (substitua com suas próprias credenciais)
    $hostname = "localhost";
    $username = "root";
    $password = "root";
    $dbname = "sa_bombeiros";

    $conn = new mysqli($hostname, $username, $password, $dbname);

    // Verifica se a conexão foi estabelecida com sucesso
    if ($conn->connect_error) {
        die("Erro na conexão com o banco de dados: " . $conn->connect_error);
    }

    // Consulta SQL para inserir os dados no banco de dados
    $sql = "INSERT INTO tabela (nome) VALUES ('$nome')";

    if ($conn->query($sql) === TRUE) {
        echo "Dados inseridos com sucesso.";
    } else {
        echo "Erro ao inserir os dados: " . $conn->error;
    }

    // Fecha a conexão com o banco de dados
    $conn->close();
}
?>