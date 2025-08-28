
var inputElement = document.getElementById("myInput");
var inputElem = document.getElementById("total");

const product = [
    {
        user: inputElement.value,
        id: 0,
        image: 'image/1658326507295grocery/product-1.png',
        title: 'orange',
        price: 120,
        stock: 5,
    },
    {
        user: inputElement.value,
        id: 1,
        image: 'image/1658326507295grocery/product-2.png',
        title: 'onion',
        price: 60,
        stock: 5,
    },
    {
        user: inputElement.value,
        id: 2,
        image: 'image/1658326507295grocery/product-3.png',
        title: 'Fresh chicken',
        price: 230,
        stock: 5,
    },
    {
        user: inputElement.value,
        id: 3,
        image: 'image/1658326507295grocery/product-4.png',
        title: 'cabbage',
        price: 100,
        stock: 5,
    },
       {
        user: inputElement.value,
        id: 4,
        image: 'image/1658326507295grocery/product-5.png',
        title: 'potato',
        price: 100,
        stock: 5,
    },
       {
        user: inputElement.value,
        id: 5,
        image: 'image/1658326507295grocery/product-6.png',
        title: 'Avcoda',
        price: 100,
        stock: 5,
    },
    {
        user: inputElement.value,
        id: 6,
        image: 'image/1658326507295grocery/product-7.png',
        title: 'Avcoda',
        price: 100,
        stock: 5,
    },
    {
        user: inputElement.value,
        id: 7,
        image: 'image/1658326507295grocery/product-8.png',
        title: 'Avcoda',
        price: 100,
        stock: 5,
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
        const orderedItems = product.filter(item => itemIds.includes(item.id.toString()
        ));
        
        // Display the ordered items

        orderItemsDiv.innerHTML = orderedItems.map(item =>
         
        `<form action="placeOrder.jsp" method="post">
            <div class='order-item'>
                <div class='row-img'>
                    <img class='rowimg' src='${item.image}'>
                </div>
                
                <input type="hidden" name="user" value="${item.user}">
            
                    
                    <input type="hidden" name="productId" value="${item.id}">
                    <!-- Add a hidden input field to receive the total -->
<input type="hidden" id="total" name="total" value="">

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