<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <!-- Liên kết đến tệp CSS Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-body">
                    <h3 class="card-title text-center">Login</h3>
                    <form method="post" action="LoginController">
                        <!-- Email input -->
                        <div class="mb-3">
                            <label for="email" class="form-label">Email:</label>
                            <input type="email" id="email" name="email" class="form-control" required
                                   value="<%= request.getAttribute("email") != null? request.getAttribute("email") : ""%>">
                        </div>

                        <!-- Password input -->
                        <div class="mb-3">
                            <label for="password" class="form-label">Password:</label>
                            <input type="password" id="password" name="password" class="form-control" required
                            value="<%= request.getAttribute("password") != null? request.getAttribute("password") : ""%>"/>
                        </div>

                        <!-- Submit button -->
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary">Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    // Thêm đoạn mã JavaScript để reset mật khẩu
    document.addEventListener("DOMContentLoaded", function() {
        document.querySelector("form").addEventListener("submit", function(event) {
            if (!isValidPassword()) {
                console.log(document.getElementById("email"))
                event.preventDefault(); // Ngăn form gửi đi
                document.getElementById("password").value = ""; // Reset mật khẩu
            }
        });

        function isValidPassword() {
            // Thực hiện kiểm tra độ mạnh của mật khẩu tại đây
            return true; // Thay đổi điều kiện kiểm tra mật khẩu thực tế
        }
    });
</script>
</body>
</html>
