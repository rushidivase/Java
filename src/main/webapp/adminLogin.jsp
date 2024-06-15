<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    .container {
        flex: 1;
    }

    footer {
        background-color: #f8f9fa;
        padding: 20px 0;
        text-align: center;
        width: 100%;
        position: fixed;
        bottom: 0;
        left: 0;
    }
</style>
</head>
<body>
    <div class="container mt-4">
        <div class="row justify-content-center">
            <div class="col-4">
                <div class="card mt-4">
                    <div class="card-body">
                        <h3 class="card-title text-center">Admin Login</h3>
                        <form action="loginServlet" method="post" class="login-form">
                            <div class="mb-3">
                                <label for="username" class="form-label">Username</label>
                                <input type="text" id="username" name="username" class="form-control" required>
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Password</label>
                                <input type="password" id="password" name="password" class="form-control" required>
                            </div>
                            <div class="d-grid">
                                <button type="submit" class="btn btn-primary">Login</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer class="text-center text-dark">
        <%@ include file="footer.jsp"%>
    </footer>
</body>
</html>
