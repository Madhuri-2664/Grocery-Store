<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="addtocart.css">
    <script src="https://kit.fontawesome.com/92d70a2fd8.js" crossorigin="anonymous"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>
<body>
    <div class="header">
        <p class="logo">All our products</p>
      
        <div class="cart" id="cart-btn"><i class="fa fa-shopping-cart"></i><p id="count">0</p></div>
        <div class="user" id="user-btn"><i class="fa fa-user"></i>
            <% 
                String name=(String)session.getAttribute("individual");
                out.println(" "+name);
                session.setAttribute("individual1",name);
            %>
            
        </div>
        <div class="navbar">
            <a href="orders.jsp" class="fas fa-shopping-bag" id="ord">  my orders</a>
        </div>
        <div class="us" id="us-btn">
            <a href="index1.html" class="log">LOG OUT</a>
        </div>
    </div>
       
    <div class="container">
        <div id="root"></div>
        <div class="sidebar">
            <div class="head"><p>My Cart</p></div>
            <div id="cartItem">Your cart is empty</div>
            <div class="foot">
                <h3>Total</h3>
                <h2 id="total">$ 0.00</h2>
                <div class="buy">
                    <button type="button" onclick="buyNow()">Buy Now</button>
                </div>
            </div>
        </div>
    </div>
        
    <script src="addtocart.js"></script>
</body>
</html>
