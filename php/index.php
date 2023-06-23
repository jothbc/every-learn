<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "biblioteca";

// Cria a conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica a conexão
if ($conn->connect_error) {
  die("Conexão falhou: " . $conn->connect_error);
} 
echo "Conectado com sucesso";

$resultado = $conn->query('SELECT * FROM livro');

while($row = mysqli_fetch_assoc($resultado)){
  echo "ID: " . $row["id"]. " - Título: " . $row["titulo"]. " - Autor: " . $row["autor"]. "<br>";
}
