<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Course Details</title>
<%@ include file="navbar.jsp"%>
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
        padding: 5px 0;
        text-align: center;
        width: 100%;
        position: sticky;
        bottom: 0;
    }
</style>
</head>
<body>
    <div class="container text-center">
        <h2 class="mt-3 text-center">Faculty Details</h2>
        <div class="row row-cols-1 row-cols-md-2 g-4">
            <%-- Faculty 1 --%>
            <div class="col">
                <div class="card  shadow">
                    <div class="card-body">
                        <h5 class="card-title">Mr. Raj Chavan</h5>
                        <p class="card-text">Department: Java</p>
                        <p class="card-text">Experience: 10 years</p>
                    </div>
                </div>
            </div>
            
            <%-- Faculty 2 --%>
            <div class="col">
                <div class="card shadow">
                    <div class="card-body">
                        <h5 class="card-title">Mrs. Diksha Shukla</h5>
                        <p class="card-text">Department: Python</p>
                        <p class="card-text">Experience: 7 years</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row row-cols-1 row-cols-md-2 g-4 mt-3">
            <%-- Faculty 1 --%>
            <div class="col">
                <div class="card shadow">
                    <div class="card-body">
                        <h5 class="card-title">Mr. Mahesh Singh</h5>
                        <p class="card-text">Department: AI</p>
                        <p class="card-text">Experience: 6</p>
                    </div>
                </div>
            </div>
            
            <div class="col">
                <div class="card shadow">
                    <div class="card-body">
                        <h5 class="card-title">Mrs. Yogita Pawar</h5>
                        <p class="card-text">Department: FrontEnd</p>
                        <p class="card-text">Experience: 5 years</p>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
    <footer class="text-center text-dark mt-2 bg-light">
        <%@ include file="footer.jsp"%>
    </footer>
</body>
</html>
