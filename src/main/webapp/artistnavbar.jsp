<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(120deg, #f6d365, #fda085);
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #333;
            padding: 20px;
            font-size: 2.5rem;
            font-weight: bold;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .navbar {
            display: flex;
            justify-content: center;
            background-color: #333;
            padding: 10px 0;
            border-bottom: 3px solid #fda085;
        }

        .navbar a {
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            text-align: center;
            font-size: 1.1rem;
            transition: background-color 0.3s, transform 0.2s;
            margin: 0 10px;
        }

        .navbar a:hover {
            background-color: #fda085;
            color: #333;
            transform: scale(1.1);
            border-radius: 5px;
        }

        /* Add a little spacing around the content */
        body {
            padding-top: 20px;
        }
    </style>
</head>
<body>
    <h2>Art Gallery</h2>
    <div class="navbar">
        <a href="artisthome">Home</a>
         <a href="updateartist">Update Profile</a>
          <a href="artistprofile">View Profile</a>
           <a href="insertart">Upload Art</a>
           <a href="viewallarts">Display Arts</a>
          
        <a href="artistlogout">Logout</a>
        
    </div>
</body>
</html>