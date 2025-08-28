<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Search</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="search-container">
        <input type="text" id="searchInput" onkeyup="filterProducts()" placeholder="Search products...">
    </div>

    <div class="product-slider" id="productSlider">
        <div class="wrapper">
            <div class="box1">
          <img src="C:/Users/krish/OneDrive/Documents/grocery/image/1658326507295grocery/product-1.png" >
            <h1 name="product 1">Fresh Orange</h1>
            <div class="price">$12.99/- -15.99/-</div>
              <div class="stars">
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
                <i class="fa fa-star"></i>
               </div>
            <a href="#" class="btn" >Add to cart</a>
            
        </div>
        <div class="box1">
                <img  src="C:/Users/krish/OneDrive/Documents/grocery/image/1658326507295grocery/product-2.png" >
                <h1 name="product 2">Fresh Onion</h1>
                <div class="price">$4.99</div>
                
                <div class="stars">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                </div> 
<a href="#" class="btn" >Add to cart</a>
                </div>
                    <div class="box1">
                    <img  src="C:/Users/krish/OneDrive/Documents/grocery/image/1658326507295grocery/product-3.png" >
                    <h1 name="product 3">Fresh chicken</h1>
                    <div class="price">$70.99/- -90.99/-</div>
                    <div class="stars">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                    </div>
                    <a href="#" class="btn" >Add to cart</a>
                    </div>
                </div>
    </div>

    <script src="script.js"></script>
</body>
</html>
