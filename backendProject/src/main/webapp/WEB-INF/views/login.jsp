<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 폼</title>
<script src="/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#submit').on('click',function(e){
		var data = {
				id: $('#id').val(),
				pw: parseInt($('#pw').val())
			}
        if(data.id == ""){
            e.preventDefault();
            alert('아이디를 입력해주세요');
        }else{
        	$('#id').val('');
        	$('#pw').val('');
        	$.ajax({
    			url : "login",
    			type : "post",
    			data : data,
    			dataType : 'json',
    			success : function(server){
    				alert(server.result);
    			},
    			error : function(error){
    				alert("Error");
    			}
    		})
        }
    });
});

</script>
<style>
  h1{
      text-align: center;
  }
  .button_wrap{
      margin-top: 25px;   
      text-align: center;
  }
  .input_wrap{
      display: flex; 
      justify-content: center;
      margin-bottom: 10px;
  }
  .text{
      float: left;
      position:absolute;
  }
  #submit{
      margin-right: 5px;
  }
  #cancel{
      margin-left: 5px;
  }
</style>
</head>
<body>
<h1>로그인</h1>
<hr>

<span class="text">아이디</span><span class="input_wrap"><input type=text id="id"></span>
<span class="text"> 비밀번호</span><span class="input_wrap"><input type=password id="pw"></span>
<div class="button_wrap">
    <input type="button" id="submit" value="로그인"> 
    <input type="button" id="cancel" value="취  소">
</div>

</body>
</html>