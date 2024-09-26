<?php session_start()  ?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<?php include_once('includes/header.inc.php');
include_once('includes/menu.inc.php');
?>

<div class="row container">
    <form action="banco_de_dados/create.php" id="formCliente" method="post" class="col s12" onsubmit="critica()">
        <fieldset class="formulario" style="padding: 15px">
            <legend><img src="imagens/avatar-1.png" width="50"></legend>
            <h5 class="light center">Cadastro de Clientes</h5>

            <?php
            if (isset($_SESSION['msg'])) :
                echo $_SESSION['msg'];
                session_unset();
            endif;
            ?>

            <div class="row">
                <!-- Campo CPF -->
                <div class="input-field col s3">
                    <i class="material-icons prefix">fingerprint</i>
                    <input type="text" name="cpf" id="cpf" maxlength="20" required="" autofocus>
                    <label for="cpf">CPF</label>
                </div>

                <!-- Campo Nome -->
                <div class="input-field col s6">
                    <i class="material-icons prefix">account_circle</i>
                    <input type="text" name="nome" id="nome" maxlength="40" required="" autofocus>
                    <label for="nome">Nome do cliente</label>
                </div>
                
            </div>

            <div class="row">
                <!-- Campo email -->
                <div class="input-field col s12">
                    <i class="material-icons prefix">email</i>
                    <input type="text" name="email" id="email" maxlength="50" required="">
                    <label for="email">E-mail</label>
                </div>
            </div>

            <div class="row">

                <!-- Campo Celular -->
                <div class="input-field col s6">
                    <i class="material-icons prefix"></i>
                    <input type="text" name="celular" id="celular" maxlength="20" required="">
                    <label for="celular">Tel.Celular</label>
                </div>
            </div>    

            <!-- Botões -->
            <div class="input-field col s12">
                <input type="submit" value="Cadastrar" class="btn blue">
                <input type="reset" value="Limpar" class="btn red">
            </div>

        </fieldset>
    </form>
</div>

<?php include_once('includes/footer.inc.php');
?>
