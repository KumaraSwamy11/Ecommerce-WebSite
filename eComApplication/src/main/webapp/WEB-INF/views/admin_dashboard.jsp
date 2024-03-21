<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Dashboard</title>
    <jsp:include page="component/allcss.jsp" />  
    
</head>
<body>
      
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="/"><i class="fa-solid fa-shop"></i> Fasion-Hub</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/admin/changePassword">Change Password</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/admin/logout">Logout</a>
        </li>
        </ul>
        
    </div>
  </div>
</nav>
<center>
<h1>Welcome, Admin!</h1></center>

</body>
</html>
