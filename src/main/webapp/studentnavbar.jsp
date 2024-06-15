<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand bg-light text-light border shadow" href="#">
            <span><img src="imslogo.jpg" class="img-fluid rounded-circle d-block mx-auto" style="max-height: 50px; max-width: 100%;" alt="IMS Logo"></span>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item"><a class="nav-link" href="studentdashboard.jsp"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
                <li class="nav-item active"><a class="nav-link" href="studentProfile.jsp"><i class="fas fa-user"></i> Profile</a></li>
                <li class="nav-item"><a class="nav-link" href="studentCourses.jsp"><i class="fas fa-book"></i> Courses</a></li>
                <li class="nav-item"><a class="nav-link" href="studentAttendance.jsp"><i class="fas fa-calendar-alt"></i> Attendance</a></li>
            </ul>
            <ul class="navbar-nav ms-auto shadow border border-danger">
                <li class="nav-item"><a class="nav-link" href="studentLogin.jsp">Logout </a></li>
            </ul>
        </div>
    </div>
</nav>

</body>
</html>
