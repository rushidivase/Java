<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
<style>
/* Custom CSS for hover dropdown */
.nav-item:hover .dropdown-menu {
    display: block;
}

/* Ensure dropdown menu stays visible on hover */
.dropdown-menu {
    display: none;
    position: absolute;
    z-index: 1000;
}
</style>
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
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="adminDashboard.jsp"><i class="fas fa-tachometer-alt"></i> Dashboard</a></li>
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user-graduate"></i> Students</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="addnewstudent.jsp"><i class="fas fa-user-plus"></i> Add Student</a></li>
                            <li><a class="dropdown-item" href="displaystudentslist.jsp"><i class="fas fa-users"></i> Display Students</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-book"></i> Courses</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="addnewcourse.jsp"><i class="fas fa-plus-circle"></i> Add New Course</a></li>
                            <li><a class="dropdown-item" href="coursedetails.jsp"><i class="fas fa-info-circle"></i> Display Course Details</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-dollar-sign"></i> Fees</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="feesdetails.jsp"><i class="fas fa-file-invoice-dollar"></i> Fee Details</a></li>
                            <li><a class="dropdown-item" href="managefeedata.jsp"><i class="fas fa-tasks"></i> Manage Fee Data</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-calendar-alt"></i> Attendance</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="studentattendance.jsp"><i class="fas fa-clipboard-list"></i> Student Attendance</a></li>
                            <li><a class="dropdown-item" href="leavestudent.jsp"><i class="fas fa-calendar-times"></i> Student Leave Request</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-bars"></i> More</a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="faculty.jsp"><i class="fas fa-chalkboard-teacher"></i> Faculty</a></li>
                            <li><a class="dropdown-item" href="library.jsp"><i class="fas fa-book-open"></i> Library</a></li>
                        </ul>
                    </li>
                    <li class="nav-item border shadow"><a class="nav-link" href="adminLogin.jsp">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
