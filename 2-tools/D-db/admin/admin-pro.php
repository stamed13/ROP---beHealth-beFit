<?php
    session_start();

    error_reporting(E_ERROR);// E_ALL, E_WARNING

    require_once ('../../E-login/helper/config.php');
    require_once ('../../E-login/helper/Helper.php');

    //triedy
    $classes = [
        "actual" => "actual",
    ];

    function selectSQL($conn, $sql){
        $row = mySQLall($conn, $sql);


        if (mysqli_query($conn, $sql)) {
            echo "<div> USPECH!!! </div>";
        } else {
            echo "<div> CHYBA!!! </div>";
        }
  
        mysqli_close($conn);

        debug($row, "SELECT");
    }

    function insertSQL($conn, $sql){
        //$row = mySQLall($conn, $sql);


        if (mysqli_query($conn, $sql)) {
            echo "<div> USPECH!!! </div>";
        } else {
            echo "<div> CHYBA!!! </div>";
        }
  
        mysqli_close($conn);

        //debug($row, "SELECT");
    }

    function updateSQL($conn, $sql){
        //$row = mySQLall($conn, $sql);
        //$sql = "UPDATE advice SET name='Tesim sa, cvicis rovnomerne na vsetky partie' WHERE id=6";


        if (mysqli_query($conn, $sql)) {
            echo "<div> USPECH!!! </div>";
        } else {
            echo "<div> CHYBA!!! </div>";
        }
  
        mysqli_close($conn);

        //debug($row, "SELECT");
    }

    function deleteSQL($conn, $sql){
        //$row = mySQLall($conn, $sql);
        //$sql = "UPDATE advice SET name='Tesim sa, cvicis rovnomerne na vsetky partie' WHERE id=6";


        if (mysqli_query($conn, $sql)) {
            echo "<div> USPECH!!! </div>";
        } else {
            echo "<div> CHYBA!!! </div>";
        }
  
        mysqli_close($conn);

        //debug($row, "SELECT");
    }

    function dropSQL($conn, $sql){
        //$row = mySQLall($conn, $sql);
        //$sql = "UPDATE advice SET name='Tesim sa, cvicis rovnomerne na vsetky partie' WHERE id=6";


        if (mysqli_query($conn, $sql)) {
            echo "<div> USPECH!!! </div>";
        } else {
            echo "<div> CHYBA!!! </div>";
        }
  
        mysqli_close($conn);

        //debug($row, "SELECT");
    }

    function commitChanges($conn){
        //prikazy
        $sql = "INSERT INTO advice (idAdvice, name) VALUES (1, 'Máš normálnu váhu.')";
        mysqli_query($conn, $sql);
        $sql = "INSERT INTO advice (idAdvice, name) VALUES (2, 'Máš nadváhu.')";
        mysqli_query($conn, $sql);
        $sql = "INSERT INTO advice (idAdvice, name) VALUES (3, 'Máš nízku váhu.')";
        mysqli_query($conn, $sql);
        $sql = "INSERT INTO advice (idAdvice, name) VALUES (4, 'Máš obezitu.')";
        mysqli_query($conn, $sql);
        $sql = "INSERT INTO advice (idAdvice, name) VALUES (5, 'Tesim sa, ze cvicis dost casto.')";
        mysqli_query($conn, $sql);
        $sql = "INSERT INTO advice (idAdvice, name) VALUES (6, 'Tesim sa, cvicis rovnomerne na vsetky partie.')";
        mysqli_query($conn, $sql);
        $sql = "INSERT INTO advice (idAdvice, name) VALUES (7, 'Máš obezitu.')";
        mysqli_query($conn, $sql);
        $sql = "INSERT INTO advice (idAdvice, name) VALUES (8, 'Máš obezitu.')";
        mysqli_query($conn, $sql);
        $sql = "INSERT INTO advice (idAdvice, name) VALUES (9, 'Máš obezitu.')";
        mysqli_query($conn, $sql);
        $sql = "INSERT INTO advice (idAdvice, name) VALUES (10, 'Máš obezitu.')";
        mysqli_query($conn, $sql);

        //
        mysqli_close($conn);
    }
    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" href="../../B-media/real-icon3.png" type="image/x-icon" />
    <link rel="stylesheet" href="../../A-styles/global.css">
    <link rel="stylesheet" href="styles/header-pro.css">
    <link rel="stylesheet" href="../../A-styles/content.css">
    <link rel="stylesheet" href="../../A-styles/footer.css">
    <link rel="stylesheet" href="styles/admin-pro.css">

    <title>DB admin</title>
</head>
<body>
    <?php
        //pripojenie header casti
        include('layout/header-pro.php');
    ?>
    
    <div id="content">
        <div id="database">
            <div id="main-title">Admin</div>

            <?php

            ?>

            <form action="" method="post">
                <div class="command <?php echo addClass( $_POST["select"], $classes["actual"] ); ?>">
                    <?php
                    if( $_POST["select"] ){
                        $sql = $_POST["queryS"];
    
                        echo "prikaz: ";
                        echo $sql;
    
                        selectSQL($conn, $sql);
                    }
                    ?>
                    <textarea name="queryS" class="query" placeholder="SELECT * FROM table"><?= $_POST["queryS"] ?></textarea>
                    <input class="submit" type="submit" name="select" value="Select">
                </div>
                
                <div class="command <?php echo addClass( $_POST["insert"], $classes["actual"] ); ?>">
                    <?php
                    if( $_POST["insert"] ){
                        $sql = $_POST["queryI"];
    
                        echo "prikaz: ";
                        echo $sql;
    
                        insertSQL($conn, $sql);
                    }
                    ?>
                    <textarea name="queryI" class="query" placeholder="INSERT INTO table () VALUES ()"><?= $_POST["queryI"] ?></textarea>
                    <input class="submit" type="submit" name="insert" value="Insert">
                </div>

                <div class="command <?php echo addClass( $_POST["update"], $classes["actual"] ); ?>">
                    <?php
                    if( $_POST["update"] ){
                        $sql = $_POST["queryU"];
    
                        echo "prikaz: ";
                        echo $sql;
    
                        updateSQL($conn, $sql);
                    }
                    ?>
                    <textarea name="queryU" class="query" placeholder="UPDATE table SET column='value' WHERE condition"><?= $_POST["queryU"] ?></textarea>
                    <input class="submit" type="submit" name="update" value="Update">
                </div>

                <div class="command <?php echo addClass( $_POST["delete"], $classes["actual"] ); ?>">
                    <?php
                    if( $_POST["delete"] ){
                        $sql = $_POST["queryD"];
    
                        echo "prikaz: ";
                        echo $sql;
    
                        deleteSQL($conn, $sql);
                    }
                    ?>
                    <textarea name="queryD" class="query" placeholder="DELETE FROM table WHERE condition"><?= $_POST["queryD"] ?></textarea>
                    <input class="submit" type="submit" name="delete" value="Delete">
                </div>

                <div class="command <?php echo addClass( $_POST["drop"], $classes["actual"] ); ?>">
                    <?php
                    if( $_POST["drop"] ){
                        $sql = $_POST["queryDD"];
    
                        echo "prikaz: ";
                        echo $sql;
    
                        dropSQL($conn, $sql);
                    }
                    ?>
                    <textarea name="queryDD" class="query" placeholder="DROP TABLE table"><?= $_POST["queryDD"] ?></textarea>
                    <input class="submit" type="submit" name="drop" value="Drop">
                </div>
                    
                <?php
                    if( $_POST["commit"] ){  
                        //commitChanges($conn, $sql);
                    }
                ?>
                <input id="commit" type="submit" name="commit" value="Commit">
            </form>

            <div>
                <?php

                ?>
            </div>
        </div>
    </div>

<?php
    //pripojenie footer casti
    include('layout/footer.php');
?>