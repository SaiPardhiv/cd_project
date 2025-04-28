<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot</title>
    <style>
        /* Navbar container style */
        p{
        font-size: 20px;
        }
        .navbar {
            display: flex;
            justify-content: center; /* Center the navbar items */
            background-color: #f8f9fa; /* Light background */
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1); /* Grey box-shadow */
            padding: 10px 0; /* Vertical padding */
            margin-bottom: 20px; /* Bottom margin to create space from content */
        }

        /* Navbar link styles */
        .navbar a {
            text-decoration: none; /* Remove underline from links */
            color: darkgrey; /* Set text color to black */
            margin: 0 15px; /* Horizontal margin for spacing between links */
            font-size: 15px; /* Font size for the links */
            padding: 5px 10px; /* Padding inside the link */
            border-radius: 5px; /* Optional: rounded corners */
            transition: background-color 0.3s, color 0.3s; /* Smooth transition on hover */
        }

        /* Navbar link hover effect */
        .navbar a:hover {
            background-color: #ddd; /* Light grey background on hover */
            color: #333; /* Darker text color on hover */
        }
    </style>
</head>
<body>
   <p align="center">ArtVerse - Virtual Art Gallery</p><br/>
    <div class="navbar">
        <a href="/">Home</a>
        <a href="artistreg">Register</a>
        <a href="artistlogin">Login</a>
    </div>

</body>
</html>
