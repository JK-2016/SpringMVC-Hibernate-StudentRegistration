
<!DOCTYPE html>
    <html>
    <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
    Registration
    </title>
    <style>
    /* The following tag selector body use the font-family and background-color properties for body of a page*/

    body {
    font-family: Calibri, Helvetica, sans-serif;
    background-color: pink;
    }
    /* Following container class used padding for generate space around it, and also use a background-color for specify the color lightblue as a background */
    .container {
    padding: 50px;
    background-color: lightblue;
    }
    /* The following tag selector input use the different properties for the text filed. */
    input[type=text] {
      width: 100%;
      padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
     border: none;
     background: #f1f1f1;
    }
    input[type=text]:focus {
    background-color: orange;
    outline: none;
    }
     div {
                padding: 10px 0;
    }
    hr {
      border: 1px solid #f1f1f1;
      margin-bottom: 25px;
    }
    /* The following tag selector button uses the different properties for the Button. */
    button {
      background-color: #4CAF50;
      color: white;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      padding: 16px 20px;
      width: 100%;
      opacity: 0.9;
    }
    /* The following tag selector hover uses the opacity property for the Button which select button when you mouse over it. */
    button:hover {
    opacity: 1;
    }
    </style>
    </head>
    <body>
    <form>
    <div class="container">
    <center>  <h1> Student Registration Form</h1> </center>
    <hr>
    <label for="id">
    Student Id:
    </label>
    <input type="text" id="id" name="id" placeholder= "Student Id" size="15" required />
    <label for="name">
    Name:
    </label>
    <input type="text" id="name" name="name" placeholder="Name" size="15" required />
    <label for="department">
    Department:
    </label>
    <input type="text" id="department" name="department" placeholder="Department" size="15"required />
	<label for="country">
    Country:
    </label>
    <input type="text" id="country" name="country" placeholder="Country" size="15"required />


    <button type="submit" value="submit">Submit</button>
    <button type="reset" value="submit">Reset</button>
    </form>
    </body>
    </html>