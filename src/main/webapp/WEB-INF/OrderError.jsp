
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>Cmpe275_Term_Project_5 Error- Order</title>
<style>
#backgroundImage{z-index: 1;}

#backgroundImage:before {
   content: "";
   position: absolute;
   z-index: -1;
   top: 0;
   bottom: 0;
   left: 0;
   right: 0;
  background-image:url('../resources/images/banner.jpg');
 background-repeat: no-repeat;
    background-size:auto 100%;
    opacity: 0.4;
    filter:alpha(opacity=40);
    height:100%;
    width:100%;
 }


body {
  background-size: 100%;
    background-repeat:repeat-y;
	color: #000000;
	font-family: Papyrus, fantasy;
	font-weight: bold;

}
.bodycontent {
	margin: auto;
	margin-top: 50px;
	width: 60%;
	
}


.mybutton{
background-color: #DF6F12;
color:black;
border: 1px solid #DF6F12;
border-radius: 4px;
padding: 5px 12px;
font-size: 16px;
padding:5px;	
text-align:center;
}

.mybutton:hover {
    background-color: #031E2A;
    color: #7EB2C8;
}


#custom-bootstrap-menu.navbar-default {
    font-size: 17px;
    background-color: rgba(223, 111, 18, 1);
    border-bottom-width: 1px;
}
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a {
    color: rgba(0, 0, 0, 1);
    background-color: rgba(223, 111, 18, 1);
}
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a:hover,
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a:focus {
    color: rgba(51, 51, 51, 1);
    background-color: rgba(223, 111, 18, 1);
}
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a,
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a:hover,
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a:focus {
    color: rgba(0, 0, 0, 1);
    background-color: rgba(209, 93, 16, 1);
}
#custom-bootstrap-menu.navbar-default .navbar-toggle {
    border-color: #d15d10;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle:hover,
#custom-bootstrap-menu.navbar-default .navbar-toggle:focus {
    background-color: #d15d10;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle .icon-bar {
    background-color: #d15d10;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle:hover .icon-bar,
#custom-bootstrap-menu.navbar-default .navbar-toggle:focus .icon-bar {
    background-color: #df6f12;
}
</style>
</head>
<body id="backgroundImage" >
<!---navbar----->
<div id="custom-bootstrap-menu" class="navbar navbar-default navbar-fixed-top" role="navigation" style="background:#df6f12; height:70px;">
    <div class="container-fluid" style="margin-top:15px;font-size:20px;">
        <div class="collapse navbar-collapse navbar-menubuilder" >
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/OnlineOrdering/home">Home</a>
                </li>
                <li><a href="/OnlineOrdering/logout">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</div>
<!---navbar-----><br><br><br><br>
<div class="bodycontent"><br>
	<div style="margin-left:30%;"><h1><b>Error in Placing the order</b></h1></div>
	<br>
	<h2><b>${msg}, Orderid:</b><span id="id"><b>${orderid}</b></span></h2><br>
<div style="margin-left:35%;"><form method="POST" name="myform" action="">
<input type="hidden" id="orderId" name="orderId"><br />
	<input type="submit" class=mybutton value="Cancel Order" id="back" name="Cancel Order"
		onclick="selected(this.value)">&nbsp;&nbsp;&nbsp;&nbsp;
	<input type="submit" class=mybutton value="Modify Order" id="back" name="Modify Order"
		onclick="selected(this.value)">
		</form></div>
		</div>
		<script type="text/javascript">
	function selected(value){
		var orderid= ${orderid};
		var variable = value;	
		  if(variable == "Modify Order")
		  {
		   document.myform.action ="modifyOrder";
		  }
		  else
		  if(variable == "Cancel Order")
		  {
		    document.myform.action ="cancelOrder";
		  }
	
		  document.getElementById("orderId").value = orderid;
	}
	</script>
</body>
</html>