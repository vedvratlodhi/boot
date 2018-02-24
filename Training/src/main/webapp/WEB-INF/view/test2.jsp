<%@ include file="include/testnav.jsp" %>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>


<div class="container">
  <div class="jumbotron">
    <h1>Rest Controller</h1>      
    <p>List Of course in json format.</p>
  </div>
    <button data-toggle="collapse" id="button" data-target="#demo">Con click get Data</button>





<div id="demo" class="collapse">
<table   id="tab" class="table">
		<tr>
		 <th>id</th>
		 	 <th>name</th>
		 	 <th>duration</th>
		 	 	 <th>fees</th>
		</tr>


</table>
</div>
</div>
</body> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
//$(document).ready(function()
		$('button').click(function() {
		$.ajax({ url: "restl",
	        context: document.body,
	        success: function(result){
	          //console.log(result);
	           var tabd=""+$('#tab').html();
	           //alert(tabd);
	           tabd +='<tr>'
	           $.each(result, function(list,value){
	        	//console.log("data"+list )
	        		  $.each(value, function(key,data){
	        			  console.log(""+key +"  :" + data);
	        			  tabd +='<td>'+data+'</td>';
	        		  });
	        	tabd +='</tr>'
	        	    
	        	
	           });
	       	$('#tab').html(tabd);
	        }});
	});
</script>
</html>

