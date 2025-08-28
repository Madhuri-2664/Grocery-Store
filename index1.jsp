<!DOCTYPE html>
<html>
    <head>
        <title>Grocery store</title>
       

<!-- code for font awesome cdn-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script src="https://kit.fontawesome.com/92d70a2fd8.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500&display=swap" rel="stylesheet">





<meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
<style>
    .box1{
        float: left;
        width: 33.33%;
        padding: 5px;
        text-align: center;
    }
    .box1 #pic{
        float: left;
        width: 100%;
        height: 20px;
        padding: 1rem;
    }
 
  
</style>
    <body>
    
    <header class="header">
         <a href="#" class="logo"><i class="fa fa-shopping-basket" aria-hidden="true"></i>Grocery</a>
         
         <nav class="navbar">
             <a href="#Home">Home</a>
             <a href="#Features">Features</a>
             <a href="#container-fluid">Products</a>
             <a href="#Categories">Categories</a>
             <a href="#Review">Reviews</a>
             <a href="#footer">About Us</a>
             <a href="admin.jsp">Admin login</a>
             
             <a href="orders.jsp">MY ORDERS</a>
             <div class="user" id="user-btn"><i class="fa fa-user"></i>
                <%
                    String name = (String) session.getAttribute("individual2");
                    out.println(" " + name);
                %>
            </div>
           
         </nav>


 <div class="icons">
    <input  type="text" name="" id="find" placeholder="search here...." onkeyup="search()">
    <div class="fa fa-search" id="search-btn"></div>
 </div>
 


</header>

<section class="Home" id="Home">
    <div class="content" >
        <h3> Fresh and <span>Organic</span> Products For You</h3>
        <p>Weight Loss and Healthy Eating is a journey that begins at the grocery store.</p>

        <a href="start.html" class="btn">Shop Now</a>
    </div>
</section>

<section class="Features" id="Features">
    <h1 class="heading"> Our <span> Features</span></h1>

    <div class="box-container">
        <div class="box">
            <img src="image/1658326507295grocery/feature-img-1.png">
            <h3>Fresh and organic</h3>
            <p>Lorem,Ipsum Dolor Sit Amet Consectetur Adipisicing Elit.
                Desertunt,Earum!</p>
            <a href="#" class="btn">Read More</a>

        </div>

    <div class="box">
        <img src="image/1658326507295grocery/feature-img-2.png">
        <h3>Free Delivery</h3>
        <p>Lorem,Ipsum Dolor Sit Amet Consectetur Adipisicing Elit.
            Desertunt,Earum!
        </p>
        <a href="#" class="btn">Read more</a>

    </div>
    <div class="box">
        <img src="image/1658326507295grocery/feature-img-3.png">
        <h3>Payment</h3>
        <p>Lorem,Ipsum Dolor Sit Amet Consectetur Adipisicing Elit.
            Desertunt,Earum!
        </p>
        <a href="#" class="btn">Read more</a>

    </div>
    </div>
</section>
<section class="container-fluid" id="container-fluid">
    <h1 class="heading"> Our <span>Products</span></h1>

    <div class="swiper container">
        <div class="swiper-wrapper">
    <div class="swiper-slide product">
    <img src="image/1658326507295grocery/product-1.png">
    <h3>Fresh Orange</h3>
    <div class="price">$100.00 - <del>$120.00</del></div>
    <div class="stars">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
    </div>
    </div>
    <div class="swiper-slide product">
    <img src="image/1658326507295grocery/product-2.png">
    <h3>Fresh Onion</h3>
    <div class="price">$100.00 - <del>$120.00</del></div>
    <div class="stars">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
    </div>
    </div>
    <div class="swiper-slide product">
    <img src="image/1658326507295grocery/product-3.png">
    <h3>Fresh chicken</h3>
    <div class="price">$100.00 - <del>$120.00</del></div>
    <div class="stars">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
    </div>
    
    
    </div>
    </div>
    </div>
    <div class="swiper container">
        <div class="swiper-wrapper">
        <div class="swiper-slide product">
    <img src="image/1658326507295grocery/product-4.png">
    <h3>cabbage</h3>
    <div class="price">$100.00 - <del>$120.00</del></div>
    <div class="stars">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star-half"></i>
    </div>
    
    </div>
    <div class="swiper-slide product">
    <img src="image/1658326507295grocery/product-5.png">
    <h3>Fresh Potato</h3>
    <div class="price">$100.00 - <del>$120.00</del></div>
    <div class="stars">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star-half"></i>
    </div>
    </div>
    <div class="swiper-slide product">
    <img src="image/1658326507295grocery/product-6.png">
    <h3>Avocada</h3>
    <div class="price">$100.00 - <del>$120.00</del></div>
    <div class="stars">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star-half"></i>
    </div>
    
    </div>
    </div>
    </div>
    <div class="swiper container">
        <div class="swiper-wrapper">
    <div class="swiper-slide product">
    <img src="image/1658326507295grocery/product-7.png">
    <h3>Carrot</h3>
    <div class="price">$100.00 - <del>$120.00</del></div>
    <div class="stars">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
    </div>
    
    </div>
    
      <div class="swiper-slide product">
    <img src="image/1658326507295grocery/product-8.png">
    <h3>Lemon</h3>
    <div class="price">$100.00 - <del>$120.00</del></div>
    <div class="stars">
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
        <i class="fa fa-star"></i>
    </div>
    
    </div>

    <div class="swiper-slide product">
        <img src="image\1658326507295grocery\milk.jpg">
        <h3>Fresh Milk</h3>
        <div class="price">$100.00 - <del>$120.00</del></div>
        <div class="stars">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
        </div>
        </div>
    </div>
    </div>
</section>

<section class="Categories" id="Categories">
    <h1 class="heading">Product<span>Categories</span></h1>
    <div class="box-container">
    <div class="box">
        <img src="image\1658326507295grocery\cat-1.png">
        <h3>Vegetables</h3>
        <p>Upto 45% Offer</p>
        <a href="ven.html" class="btn">Shop Now</a>
    </div>
    <div class="box">
        <img src="image\1658326507295grocery\cat-2.png">
        <h3>Fresh Fruits</h3>
        <p>Upto 45% Offer</p>
        <a href="fruit.html" class="btn">Shop Now</a>
    </div>
    <div class="box">
        <img src="image\1658326507295grocery\cat-3.png">
        <h3>Dairy Products</h3>
        <p>Upto 45% Offer</p>
        <a href="#" class="btn">Shop Now</a>
    </div>
    <div class="box">
        <img src="image\1658326507295grocery\cat-4.png">
        <h3>Fresh meat</h3>
        <p>Upto 45% Offer</p>
        <a href="#" class="btn">Shop Now</a>
    </div>
    </div>
</section>

<section class="Review" id="Review">
    <h1 class="heading">Customer's <span>Review</span></h1>
    <div class="reviewslider">
        <div class="wrapper">
            <div class="box1">
              <img src="image\1658326507295grocery\pic-1.png">
              <p>The products very good</p>
              <h3> John deo </h3>
              <div class="stars">
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
              </div>
             </div>
          <div class="box1">
          <img src="image\1658326507295grocery\pic-2.png">
          <p>Excellent Products</p>
          <h3> Sophia </h3>
          <div class="stars">
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
          </div>
      </div>
      <div class="box1">
              <img src="image\1658326507295grocery\pic-3.png">
              <p>The products Quality is very Good</p>
              <h3> Joseph </h3>
              <div class="stars">
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
                  <i class="fa fa-star"></i>
              </div>
       </div>

       
   </div>
</div>
</section>
<section class="footer" id="footer">
        <div class="contact-container">
            <h1>Contact Us</h1>
            <form id="contact-form">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
    
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
    
                <label for="phone">Phone:</label>
                <input type="tel" id="phone" name="phone">
    
                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="5" required></textarea>
    
                <button type="submit">Submit</button>
            </form>
    
            </div>
 </section>
      <script src="js/script.js">
       
        
      </script> 
      <script src="https://kit.fontawesome.com/92d70a2fd8.js" crossorigin="anonymous"></script>
      <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
     
      </body>

</html>
<!DOCTYPE html>
