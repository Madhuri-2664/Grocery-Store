<%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Product Page</title>
  <link rel="stylesheet" href="sts.css">

</head>
<body>
  <div class="cart-icon" id="cartIcon">Cart: 0</div>
  <div id="cartItems" style="display: none;">
    <h3>Cart Items:</h3>
    <table id="cartItemList">
      <tr>
        <th>Product Name</th>
        <th>Quantity</th>
      </tr>

      
    </table>
  </div>

  <div class="product">
    <img src="">
    <h2>Product Name</h2>
    <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
    <p>Price: $10.00</p>
    <label for="quantity">Quantity:</label>
    <input type="number" id="quantity" value="1" min="1">
    <button id="addToCartButton">Add to Cart</button>
  </div>
  <script>
    document.addEventListener("DOMContentLoaded", function() {
      var addToCartButton = document.getElementById('addToCartButton');
      var productName = document.querySelector('.product h2').textContent;
      var price = 10.00; // Sample price, you can get it dynamically if needed

      addToCartButton.addEventListener('click', function() {
        var quantity = parseInt(document.getElementById('quantity').value);
        // Sending data to server
        fetch('product1.jsp', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/x-www-form-urlencoded'
          },
          body: 'addToCart=true&productName=' + encodeURIComponent(productName) + '&quantity=' + quantity + '&price=' + price
        }).then(function(response) {
          return response.text();
        }).then(function(data) {
          // Update cart icon
          var cartIcon = document.getElementById('cartIcon');
          cartIcon.textContent = "Cart: " + data;
          // Refresh cart items
          refreshCartItems();
        }).catch(function(error) {
          console.error('Error:', error);
        });
      });

      function refreshCartItems() {
        var cartItemList = document.getElementById('cartItemList');
        fetch('product1.jsp').then(function(response) {
          return response.text();
        }).then(function(data) {
          cartItemList.innerHTML = data;
        }).catch(function(error) {
          console.error('Error:', error);
        });
      }
    });
    

  </script>
</body>
</html>
