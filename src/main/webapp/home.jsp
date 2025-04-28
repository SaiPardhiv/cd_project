<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Art Gallery</title>
<style>
        /* Resetting default browser styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Container styles */
        .container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
            background-color: white;
        }

        .left-container, .right-container {
            width: 35%;
            background-color: white;
        }

        /* Left container text styles */
        .left-container {
            text-align: center;
            margin-left: 140px;
        }

        .left-container h1 {
            font-weight: bold;
            font-size: 44px; /* Increase font size */
        }

        /* Right container text styles */
        .right-container {
            color: darkgrey;
            font-size: 14px; 
            margin-right: 170px;
        }

        .right-container p {
            line-height: 1.6;
        }

        .explore-button {
            background-color: black;
            color: white;
            padding: 10px 20px;
            border: none; /* Ensure no border around the button */
            text-align: center;
            cursor: pointer;
            margin-top: 20px;
        }

        .explore-button:hover {
            background-color: grey;
        }

        .explore-button:focus {
            outline: none;
        }

        /* Image Grid Styles */
        .image-grid {
            display: flex;
            flex-wrap: wrap; /* Allow images to wrap into multiple rows */
            justify-content: center; /* Center the images */
            margin: 50px auto;
            gap: 100px; /* Space between images */
        }

        .image-grid img {
            width: 30%; /* Decreased size of images */
            height: auto; /* Maintain the aspect ratio */
            object-fit: cover; /* Make sure images fill the container */
        }

        /* Text section beside last image */
        .text-section {
            width: 48%; /* Same as the image width */
            color: darkgrey;
            font-size: 16px;
            text-transform: uppercase;
            line-height: 1.8;
            display: flex;
            flex-direction: column;
            justify-content: center;
            padding: 20px;
            margin-top: 10px;
        }

        .about-us-btn {
            background-color: black;
            color: white;
            padding: 10px 20px;
            border: none;
            text-align: center;
            cursor: pointer;
            margin-top: 20px;
        }

        .about-us-btn:hover {
            background-color: grey;
        }
    </style>
</head>
<body>
<%@include file="mainnavbar.jsp" %><br/><br/>
 <div class="container">
        <!-- Left Container -->
        <div class="left-container">
            <h1>Welcome to ArtVerse, where creativity meets expression in every stroke.</h1>
        </div>
        
        <!-- Right Container -->
        <div class="right-container">
            <p>
                STEP INTO A REALM WHERE ARTISTRY KNOWS NO BOUNDS, WHERE EVERY CANVAS HOLDS A UNIVERSE OF STORIES WAITING TO BE TOLD. DISCOVER THE MAGIC OF ARTVERSE, YOUR PREMIER DESTINATION FOR EXPLORING THE DEPTHS OF CREATIVITY. BEGIN YOUR JOURNEY NOW AND UNLOCK A WORLD OF INSPIRATION.
            </p>
            <a href="browsearts1" style="text-decoration: none;">
    <button class="explore-button">Explore More</button>
</a>
        </div>
    </div>
    <br/><br/>

    <!-- Image Grid Section -->
    <div class="image-grid">
        <img src="https://webneel.com/wallpaper/sites/default/files/images/03-2014/10-art-wallpaper.1280.jpg" alt="Image 1">
        <img src="https://webneel.com/daily/sites/default/files/images/daily/10-2018/17-nature-scenery-oil-painting-trees-arteet.jpg" alt="Image 2">
        <img src="https://thewowstyle.com/wp-content/uploads/2015/01/image.painting-art.jpg" alt="Image 3">
        <img src="https://wallpaper-house.com/data/out/10/wallpaper2you_460761.jpg" alt="Image 4">
        <div class="text-section">
            <p>
                Explore the vibrant world of art and creativity. This space allows you to dive into various artistic expressions that inspire and engage.
            </p>
            <p>
                At ArtVerse, we believe that art transcends boundaries. Our gallery showcases a diverse collection of artworks from emerging and established artists, inviting you to experience the beauty and depth of human expression.
            </p>
            <a href="about" style="text-decoration: none;">
    <button class="about-us-btn">About Us</button>
</a>
        </div>
        
    </div>
    <br/><br/><br/>
    
</body>
</html>