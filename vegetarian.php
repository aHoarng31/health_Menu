<?php require_once('config.php'); ?>
<!DOCTYPE html> 
<html lang = "en"> 
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

  <title>Document</title>
  <style>

      * {
        margin: 0;
        padding: 0;

      }

      .bm {
        /* background-image: url(images/sharing-1.jpeg);
        background-size: cover;
        background-repeat: no-repeat;
        height: 100vh */
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content; center;
        background-image: url(images/vegetarian-diet-plan-732x549-thumbnail-732x549.jpeg);
        background-position:center;
        background-size: cover;
        background-repeat: no-repeat;

      }

    #content {

      min-height: 100vh;
      disply: flex;
      align-items: center;
      justify-content: center;
      /* background-image: url(imges/sharing-1.jpg); */
      /* background-size: cover; */
      color: white;
      
      
    }     

    .jumbotron{
        background-color: black;
        opacity: .75;
        
    }

    
    .container {
        background-color: black;
    }
   
    .navbar-nav > li > .dropdown-menu { 
      
      opacity: 0.85;
    }
    

  

  </style>
</head>
    <body> 
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
  <i class="fas fa-home" style="font-size:24px;color:white" aria-hidden="true"></i>
  <a class="navbar-brand" href="#">Foodie</a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="highprotine.php">High Protient Meal</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Vegetarian</a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="vegetarianRecipe.php">Recipes</a>
          <a class="dropdown-item" href="vegetarian.php">Nutrition</a>
          <a class="dropdown-item" href="vegetarianMealType.php">Meal Type</a>
          <a class="dropdown-item" href="vegetarianDifficulty.php">Beginner(Advance)</a>
        </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0" method="GET" action="search.php">
      <input class="form-control mr-sm-2" type="search" placeholder="Name of Menu" aria-label="Search" name="Name">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" value="submit">Search</button>
    </form>
  </div>
</nav>
    
        <div class="bm" id="content">
<div class="jumbotron jumbotron-fluid">
  <div class="container">
  <h1 class="display-4">Let's Enjoy the Food</h1>
  <p class="lead">Select Your Favorite Menu</p> 
            <hr class="my-4"> 
            <form method="GET" action="vegetarian.php"> 
                <select name="emp" onchange='this.form.submit()'> 
                    <option selected>Menu</option> 

                    <?php 
                    $connection = mysqli_connect(DBHOST, DBUSER, DBPASS, DBNAME); 
                    if ( mysqli_connect_errno() )  
                    { 
                        die( mysqli_connect_error() );   
                    } 
                    $sql = "SELECT Vegetarian_List.VEG_MEAL_NAME AS Meal_Name, Nutrition.Calores AS Calories, Nutrition.Fat 
                    AS Fat, Nutrition.Protein AS Protein, Nutrition.Carbohydrates As Carbohydrates 
                    FROM VEGETARIAN_LIST LEFT OUTER JOIN Nutrition ON Nutrition.Meal_Name = Vegetarian_List.VEG_MEAL_NAME"; 
                    if ($result = mysqli_query($connection, $sql))  
                    { 
                        // loop through the data 
                        while($row = mysqli_fetch_assoc($result)) 
                        { 
                            echo '<option value="'.$row['Meal_Name'].'">'; 
                            echo $row['Meal_Name'];  
                            echo "</option>"; 
                        } 
                        // release the memory used by the result set 
                        mysqli_free_result($result);  
                    }  
                    ?>
                </select> 
                <?php 
                if ($_SERVER["REQUEST_METHOD"] == "GET")  
                { 
                    if (isset($_GET['emp']) )  
                    { 
                ?> 
                <p>&nbsp;</p> 
                <table class = "table table-striped">
                    <thead> 
                        <tr> 
                            <th scope="col">Meal_Name</th> 
                            <th scope="col">Calories</th> 
                            <th scope="col">Fat</th> 
                            <th scope="col">Protein</th>  
                            <th scope="col">Carbohydrates</th>  
                        </tr> 
                    </thead> 
                    <?php            
                        if ( mysqli_connect_errno() )  
                        { 
                            die( mysqli_connect_error() );   
                        } 
                        $sql = "SELECT * 
                        FROM NUTRITION
                        WHERE NUTRITION.MEAL_NAME Like '{$_GET['emp']}'"; 
                         

                        if ($result = mysqli_query($connection, $sql))  
                        { 
                            while($row = mysqli_fetch_assoc($result)) 
                            { 
                    ?> 
                    <tr> 
                        <td class = "T"><?php echo $row['MEAL_NAME'] ?></td> 
                        <td><?php echo $row['CALORES'] ?></td> 
                        <td><?php echo $row['FAT'] ?></td> 
                        <td><?php echo $row['PROTEIN'] ?></td> 
                        <td><?php echo $row['CARBOHYDRATES'] ?></td> 
                    </tr> 
                    <?php 
                            } 
                            // release the memory used by the result set 
                            mysqli_free_result($result);  
                        }  
                    }// end if (isset) 
                    } // end if ($_SERVER) 
                    ?> 
                
                </table> 
            </form> 
  </div>
</div>
</div>

    

    
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  
    </body> 
</html> 