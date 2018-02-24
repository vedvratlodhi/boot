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
 <button data-toggle="collapse" id="next"  style="display:none">get next data </button>




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
<input id="lower" value="0" type="hidden"/>
<input id="upper" value="0" type="hidden"/>
</body> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
//$(document).ready(function()
		$('#button').click(function() {
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
	       	$('#button').hide();
	      	$('#next').show();
	      	$('#lower').val(10);
	        $('#upper').val(10);
	        }});
	});
		//$('#next').click(function() {
			$(window).scroll(function() {
				  if ($(window).scrollTop() >= $(document).height() - $(window).height() - 10) {
				//alert("rest2?lower="+$('#lower').val()+"&upper="+$('#upper').val());
			$.ajax({ url: "rest2?lower="+$('#lower').val()+"&upper="+$('#upper').val(),
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
		       	var low =parseInt($('#lower').val()) +10;
		       	var up = parseInt($('#upper').val()) + 10;
		       	$('#lower').val(low);
		       //	$('#upper').val(up)
		        }});
				  }
		});
</script>
</html>

