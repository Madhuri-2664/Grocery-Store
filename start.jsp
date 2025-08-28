<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    *{
        margin: 0;
        padding: 0;
    }
    .hero{
        height: 100%;
        width: 100%;
        background-image: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url(back1.jpg);
        background-position: center;
        background-size: cover;
        position: absolute;
    }
.login-form
{
     
     width: 380px;
     position: relative;
     height: 480px;
     padding: 5px;
     background: #fff;
     margin: 6% auto;
     overflow: hidden;
}
.button-box{
     width: 220px;
     margin: 35px auto;
     position: relative;
     box-shadow: 0 0 20px 9px #ff61241f;
     border-radius: 30px;
}
.toggle-btn{
     padding: 10px 30px;
     cursor: pointer;
     background: transparent;
     border: 0;
     outline: none;
     position: relative;

}
#bt{
     position: absolute;
     width: 110px;
     height: 100%;
     background: linear-gradient(to right,#ff105f ,#ffad06);
     border-radius: 30px;
     transition: .5s;
}
.social-icons{
     margin: 30px auto;
     text-align: center;

}
.social-icons img{
        width: 30px;
        margin: 0 12px;
        box-shadow: 0 0 20px 0 #ff61241f;
        cursor: pointer;
     border-radius: 50%
}
.input-group{
     top: 180px;
     position: absolute;
     width: 280px;
     transition: .5s;
}
.input-field{
     width: 100%;
     padding: 10px 0;
     margin: 5px 0;
     border-left: 0;
     border-top: 0;
     border-right: 0;
     border-bottom: 1px solid #999;
     outline: none;
     background: transparent;
}
.submit-btn{
     width: 85%;
     padding: 10px 30px;
     cursor: pointer;
     display: block;
     margin: auto;
     background: linear-gradient(to right,#ff105f ,#ffad06);
     border: 0;
     outline: none;
     border-radius: 30px;
}
.chech-box{
     margin: 30px 10px 30px 0;

}
.chech-box span{
     color:#777;
     font-size: 12px;
     bottom: 68px;
     position: absolute;
}
#login{
    left: 50px; 
}
#register{
     left: 450px;
}
</style>
<body>
    <div class="hero">
        <div class="login-form">
            <div class="button-box">
                <div id="bt"></div>
                <button type="button" class="toggle-btn" onclick="login()">Log in</button>
                <button type="button" class="toggle-btn" onclick="register()">Register</button>
            </div>
            <div class="social-icons">
                <img src="image/1658326507295grocery\gp.png">
                <img src="image/1658326507295grocery\fb.png">
                <img src="image/1658326507295grocery\tw.png">
            </div>
            <form action="login.jsp" id="login" class="input-group">
                <input type="text" name="us" class="input-field" placeholder="user Id" required>
                <input type="text" name="pwd" class="input-field" placeholder="Enter password" required>
               <input type="checkbox" class="chech-box"><span>REMEMBER PASSWORD</span>
               <button type="submit" class="submit-btn">login</button>
        </form>
        <form action="Regform.jsp" id="register" class="input-group">
            <input type="text" name="ui" class="input-field" placeholder="user Id" required>
            <input type="email" name="ei" class="input-field" placeholder="Email Id" required>
            <input type="password" name="pw" class="input-field" placeholder="Enter password" required>
           <input type="checkbox" class="chech-box"><span>I agree the terms & conditions</span>
           <button type="submit" class="submit-btn">Register</button>
        </form>
            
        </div>
        


    </div>
    <script>
    var x=document.getElementById("login");
var y=document.getElementById("register");
var z=document.getElementById("bt");
function register(){
    x.style.left = "-400px";
    y.style.left = "50px";
    z.style.left = "110px";
}
function login(){
    x.style.left = "50px";
    y.style.left = "450px";
    z.style.left = "0px";
}

    </script>
</body>
</html>
