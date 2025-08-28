<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Orders</title>
    <style>
        /* Add your CSS rules here */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        
        .sidebar {
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
            padding: 20px;
        }
        
        .head {
            text-align: center;
            border-bottom: 1px solid #ccc;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
        
        .head p {
            font-size: 24px;
            margin: 0;
            color: #333;
        }
        
        .order-item {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }
        
        .order-item p {
            font-size: 16px;
            margin: 0;
            color: #333;
        }
        
        /* Order item container */
.order-item {
    border: 1px solid #ccc;
    border-radius: 5px;
    padding: 10px;
    background-color: #fff;
}

/* Product image */

/* Product image styling */
.rowimg {
    width: 110px; /* Increase the width to make the image larger */
    border-radius: 5px;
    margin-right: 15px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
    
}

/* Product title */
.order-item p {
    font-size: 40px;
    margin: 0;
    color: #333;
    margin-left: 10%;
}

/* Product price */
.order-item h2 {
    font-size: 40px;
    margin: 0;
    color: #333;
    margin-left: 15%;
}

/* Place order button */
.order-item button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 20px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
    margin-left: 10%;
}

.order-item button:hover {
    background-color: #45a049; /* Darker green */
}
    </style>
</head>
<body>
    <section>
        <nav>
            <!-- Navigation bar code -->
        </nav>
    </section>
    <div class="container">
        <div class="sidebar" id="sidebar">
            <div class="head">
                <p>Orders</p>
            </div>
            <div id="orderItems"></div>
        </div>
    </div>

    <script>
const product = [
    {
        id: 0,
        image: 'image/1658326507295grocery/product-1.png',
        title: 'orange',
        price: 120,
    },
    {
        id: 1,
        image: 'image/1658326507295grocery/product-2.png',
        title: 'onion',
        price: 60,
    },
    {
        id: 2,
        image: 'image/1658326507295grocery/product-3.png',
        title: 'Fresh chicken',
        price: 230,
    },
    {
        id: 3,
        image: 'image/1658326507295grocery/product-4.png',
        title: 'cabbage',
        price: 100,
    },
       {
        id: 4,
        image: 'image/1658326507295grocery/product-5.png',
        title: 'potato',
        price: 100,
    },
       {
        id: 5,
        image: 'image/1658326507295grocery/product-6.png',
        title: 'Avcoda',
        price: 100,
    },
    {
        id: 6,
        image: 'image/1658326507295grocery/product-7.png',
        title: 'Avcoda',
        price: 100,
    },
    {
        id: 7,
        image: 'image/1658326507295grocery/product-8.png',
        title: 'Avcoda',
        price: 100,
    }
];
       window.onload = function() {
    const queryString = window.location.search;
    const urlParams = new URLSearchParams(queryString);
    const orderItemsDiv = document.getElementById('orderItems');

    // Check if there are items in the query parameter
    if (urlParams.has('id')) {
        const itemIds = urlParams.getAll('id');

        // Filter the product array based on the IDs passed
        const orderedItems = product.filter(item => itemIds.includes(item.id.toString()));

        // Display the ordered items
        orderItemsDiv.innerHTML = orderedItems.map(item =>
        `<form action="placeOrder.jsp" method="post">
            <div class='order-item'>
                <div class='row-img'>
                    <img class='rowimg' src='${item.image}'>
                </div>
          
                <input type="hidden" name="username" value="${sessionScope.name1}">
                    <input type="hidden" name="productId" value="${item.id}">
                    <input type="hidden" name="productName" value="${item.title}"><p>$ ${item.title}</p>
                    <input type="hidden" name="price" value="${item.price}"><h2>$ ${item.price}.00</h2>
                <button type="submit">place order</button>
            </div>
            </form>` 
        ).join('');
    } else {
        orderItemsDiv.innerHTML = "<p>No items found.</p>";
    }
};
</script>

</body>
</html>