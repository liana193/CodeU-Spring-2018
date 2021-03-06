<%--
  Copyright 2017 Google Inc.

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
--%>
<!DOCTYPE html>
<html>
<head>
  <title>Logout</title>
  <link rel="stylesheet" href="/css/main.css">
</head>
<body>

<nav>
    <a id="navTitle" href="/">Bagheera Band 33</a>
    <a href="/conversations">Conversations</a>
    <% if(request.getSession().getAttribute("user") != null){ %>
      <a>Hello <%= request.getSession().getAttribute("user") %>!</a>
    <% } else{ %>
      <a href="/login">Login</a>
    <% } %>
    <a href="/about.jsp">About</a>
  <a href="/activityfeed">Activity Feed</a>
  <% if((request.getSession().getAttribute("user") != null)){ %>
    	<a href="/logout">Logout</a> <% } %>
  </nav>
  

<div id="container">

   <% if(request.getAttribute("error") != null){ %>
        <h2 style="color:red"><%= request.getAttribute("error") %></h2>
    <% } %>
    
    <div
      style="width:75%; margin-left:auto; margin-right:auto; margin-top: 50px;">

	 <% if((request.getSession().getAttribute("user") != null)){ %>
	   <h1>Logout</h1>
	      <p> Are you sure you want to log out?</p> 
	      
	    <form action="/logout" method="POST">
	      <button type="submit" name="button" value="Yes" id="Yes">Yes</button>
	      <button type="submit" name="button" value="No" id=No">No</button>
	    </form>
    <% } else { %>
      <p><a href="/login">Login</a></p>
    <% } %>
    
    </div>
  </div>
</body>
</html>
