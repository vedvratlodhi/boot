hey i am jsp file
<table border="1px">
	<tr>
	 <td>id</td>
	 	 <td>name</td>
	 	 <td>duration</td>
	 	 	 <td>fees</td>
	</tr>
	<tr id="tab">
	</tr>

</table>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
		$.ajax({ url: "rest",
	        context: document.body,
	        success: function(result){
	           console.log(result);
	           var tabd="";
	           $.each(result, function(key, value){
	        	   console.log(key + " : " + value);
	        	   tabd += '<td>'+ value +'</td>';
	           });
	       	$('#tab').html(tabd);
	        }});
	});
</script>
