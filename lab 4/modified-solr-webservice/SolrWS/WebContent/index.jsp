<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    	               "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
 <script src="jquery-2.1.0.min.js"></script>  
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    	<title>GlassFish JSP Page</title>
    	
<script type="text/javascript">
 $( document ).ready(function() {

	    $('#uploadSolr').click(function(){
	    	var url = $("#jsonAddress").val();

	    	window.location = "jaxrs/generic/uploadJson2Solr/"+url;
	    });    
	    
	    $('#queryId').click(function(){ 
	    	var url = $("#crimeId").val();

	    	window.location = "jaxrs/generic/crimeId/"+url;	    
	    });    
 	});    
    
    

</script>    	
  </head>
  <body>
  <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#">Lab 4</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="active"><a href="index.jsp">Home</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
<br/>
<br/>
<div class="container">  
    <center><h1>Solr Exercise</h1></center>
    
    <div>
    <p>
    Please type the address of the json object you would like to add to Solr here: 
    </p>
    <input id="jsonAddress"/>
	<button id="uploadSolr">Upload to Solr</button>    	


    </div>
    <hr/>
    <div>
    <p>
    Please type the id number of type of crime you would like to lookup:
    <ol>
    <li>Auto theft</li>
    <li>Assault</li>
    <li>Burglary</li>
    <li>DUI</li>
    <li>Forgery</li>
    <li>Fraud</li>
    <li>Homicide</li>
    <li>Possession</li>
    <li>Property Damage</li>
    <li>Shoplifting</li>
    <li>Theft</li>
    <li>Trespassing</li>                                                                                                                                                                                                                        
    </ol> 
    </p>
    <input id="crimeId"/>
	<button id="queryId">Query crime type</button>    	


    </div>    
    
 	<script src="bootstrap/js/bootstrap.min.js"></script>
 </div>    
  </body>
</html> 
