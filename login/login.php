<?php
        include('conexao2.php'); /*arquivo de conexão com o bando de dados*/

        if(isset($_POST['button'])) {
            $nome_usuario = $_POST['nome_usuario'];
            $senha = $_POST['senha'];
        
            $sql = "SELECT * FROM usuario WHERE nome_usuario = ? AND senha = ?";
           
            $stmt = $conn->prepare($sql);
            $stmt->bind_param('ss', $nome_usuario, $senha);
            $stmt->execute();
            $resultado = $stmt->get_result();
        
            if (mysqli_num_rows($resultado) === 1) {
                header("Location: menu.html");
            } else {
                echo "Informações incorretas. Verifique seu usuário e senha";
                /*echo "<script>document.querySelector('#form-text').innerText = 'E-mail ou senha inválidos'</script>";*/
            }
        }
        
        mysqli_close($conn);
    ?>
