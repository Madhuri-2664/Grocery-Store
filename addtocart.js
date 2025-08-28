const product = [
    {
        id: 0,
        image: 'image/1658326507295grocery/product-1.png',
        title: 'orange',
        price: 120,
        stock: 5,
    },
    {
        id: 1,
        image: 'image/1658326507295grocery/product-2.png',
        title: 'onion',
        price: 60,
        stock: 5,
    },
    {
        id: 2,
        image: 'image/1658326507295grocery/product-3.png',
        title: 'Fresh chicken',
        price: 230,
        stock: 5,
    },
    {
        id: 3,
        image: 'image/1658326507295grocery/product-4.png',
        title: 'cabbage',
        price: 100,
        stock: 5,
    },
    {
        id: 4,
        image: 'image/1658326507295grocery/product-5.png',
        title: 'potato',
        price: 100,
        stock: 5,
    },
    {
        id: 5,
        image: 'image/1658326507295grocery/product-6.png',
        title: 'Avocado',
        price: 100,
        stock: 5,
    },
    {
        id: 6,
        image: 'image/1658326507295grocery/product-7.png',
        title: 'Avocado',
        price: 100,
        stock: 5,
    },
    {
        id: 7,
        image: 'image/1658326507295grocery/product-8.png',
        title: 'Avocado',
        price: 100,
        stock: 5,
    },
    {
        id: 8,
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSae0ftLwvOWOenhuuj0TVEhYUplH7QGDmRlg&usqp=CAU',
        title: 'tomato',
        price: 100,
        stock: 5,
    },
    {
        id: 9,
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6TJuDvCDMaKKxKqmEXIXdjsmPZpTip-ZgvA&usqp=CAU',
        title: 'cucumber',
        price: 100,
        stock: 5,
    },
    {
        id: 10,
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI1X7tfM0kzLxgaxcBJsyZgbb4nRlWjxDQkA&usqp=CAU',
        title: 'bottle Guard',
        price: 100,
        stock: 5,
    },
    {
        id: 11,
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsv3A6vifvpEFgu9YHUcDTkh_SYeHSJm8GWA&usqp=CAU',
        title: 'BitterGuard',
        price: 100,
        stock: 5,
    },
    {
        id: 12,
        image: 'https://media.istockphoto.com/id/485168349/vector/single-pomegranate-fruit.jpg?s=1024x1024&w=is&k=20&c=HXWM6IUghaVEFDpdTOSFwiGmeb8vr2T_wSSiIpj6U-o=',
        title: 'Pomegranate',
        price: 100,
        stock: 5,
    },
    {
        id: 13,
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgDusEoBM-Dc88-NzFM4eycSecbbPPnPciHw&usqp=CAU',
        title: 'Mango',
        price: 100,
        stock: 5,
    },
    {
        id: 14,
        image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsv3A6vifvpEFgu9YHUcDTkh_SYeHSJm8GWA&usqp=CAU',
        title: 'BitterGuard',
        price: 100,
        stock: 5,
    }
];


const categories = product;

document.getElementById('root').innerHTML = categories.map((item, index) => {
    var { image, title, price } = item;
    return (
        `<div class='box'>
            <div class='img-box'>
                <img class='images' src=${image}></img>
            </div>
            <div class='bottom'>
                <p>${title}</p>
                <h2>$ ${price}.00</h2>
                <div class="quantity">
                    <input type="number" min="1" value="1" id="quantity${index}">
                </div>
                <button onclick='addtocart(${index})'>Add to cart</button>
            </div>
        </div>`
    );
}).join('');

var cart = [];

function addtocart(index) {
    const quantity = parseInt(document.getElementById(`quantity${index}`).value);
    const selectedItem = { ...categories[index], quantity };
    if(quantity > selectedItem.stock){
        alert('out of Stock');
        return;
    }
    selectedItem.stock -= quantity;

    cart.push(selectedItem);

    displaycart();
}

function delElement(index) {
    const selectedItem = cart[index];
    selectedItem.stock += selectedItem.quantity;
    cart.splice(index, 1);
    displaycart();
}

function displaycart() {
    let total = 0;
    document.getElementById("count").innerHTML = cart.length;
    if (cart.length == 0) {
        document.getElementById('cartItem').innerHTML = "Your cart is empty";
        document.getElementById("total").innerHTML = "$ " + 0 + ".00";
    } else {
        document.getElementById("cartItem").innerHTML = cart.map((item, index) => {
            var { image, title, price, quantity } = item;
            total += price * quantity;
            document.getElementById("total").innerHTML = "$ " + total + ".00";
            return (
                `<div class='cart-item'>
                    <div class='row-img'>
                        <img class='rowimg' src=${image}>
                    </div>
                    <p style='font-size:12px;'>${title}</p>
                    <h2 style='font-size: 15px;'>$ ${price}.00 x ${quantity} = $ ${price * quantity}.00</h2>

                    <i class='fa-solid fa-trash' onclick='delElement(${index})'></i>
                </div>`
            );
        }).join('');
    }
}

function buyNow() {
    // Check if the cart is not empty
    if (cart.length > 0) {
        // Create a URL query string containing the IDs of the items in the cart
        const queryString = cart.map(item => `id=${item.id}&quantity=${item.quantity}`).join('&');

        // Redirect to myorders.html with the cart items in the query string
        window.location.href = `myorders.jsp?${queryString}`;
    } else {
        // Show an alert if the cart is empty
        alert('Your cart is empty. Please add items before proceeding.');
    }
}
