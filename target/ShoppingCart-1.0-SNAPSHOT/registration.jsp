<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Đăng ký tài khoản </title>
    <link rel="stylesheet" href="css/styleSignUp.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="container">
    <div class="title">Đăng kí tài khoản</div>
    <div class="content">
      <form action="registration" method="post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Họ và Tên</span>
            <input type="text" name = "fullName" placeholder="VD : Nam, Huy" required>
          </div>
          <div class="input-box">
            <span class="details">Tên đăng nhập</span>
            <input type="text" name = "username"placeholder="Tên tài khoản , vd huynguyen" required>
          </div>
          <div class="input-box">
            <span class="details">Địa chỉ email</span>
            <input type="text" name = "email" placeholder="Địa chỉ email, vd huynguyen@gmail.com" required>
          </div>
          <div class="input-box">
            <span class="details">Số điện thoại</span>
            <input type="text" name = "phone" placeholder="Số điện thoại, vd : 0312xxxxx" required>
          </div>
          <div class="input-box">
            <span class="details">Mật khẩu</span>
            <input type="text" name = "password" placeholder="Mật khẩu : xxxxxxxxxx" required>
          </div>
          <div class="input-box">
            <span class="details">Xác nhận mật khẩu</span>
            <input type="text" placeholder="Xác nhận lại mật khẩu" required>
          </div>
        </div>
        <div class="gender-details">
          <input type="radio" name="gender" value="nam" checked id="dot-1">
          <input type="radio" name="gender" value="nu" id="dot-2">
          <input type="radio" name="gender" value="none" id="dot-3">
          <span class="gender-title">Giới tính</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="gender">nam</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender">nữ</span>
          </label>
          <label for="dot-3">
            <span class="dot three"></span>
            <span class="gender">Không xác định</span>
            </label>
          </div>
        </div>
        <div class="button">
          <input type="submit" value="Đăng ký">
        </div>
        <div class="button">
          <a href="login.jsp" >QUAY LẠI TRANG LOGIN </a>
        </div>
      </form>
    </div>
  </div>

</body>
</html>
