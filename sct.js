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
    