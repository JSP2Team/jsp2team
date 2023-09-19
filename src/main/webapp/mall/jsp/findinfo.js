/**
 * 
 */


 function  id_search() { 
	 	var frm = document.idfindscreen;

	 	if (frm.user_name.value.length < 1) {
		  alert("이름을 입력해주세요");
		  return;
		 }

		 if (frm.usertel.value.length != 11) {
			  alert("핸드폰번호를 정확하게 입력해주세요");
			  return;
		 }

	 frm.submit();  
}

function  pw_search() { 
	 	var frm = document.pwfindscreen;

		if (frm.userid.value.length < 1) {
		  alert("아이디를 입력해주세요");
		  return;
		 }
	 	if (frm.user_name.value.length < 1) {
		  alert("이름을 입력해주세요");
		  return;
		 }

		 if (frm.usertel.value.length != 11) {
			  alert("핸드폰번호를 정확하게 입력해주세요");
			  return;
		 }

	 frm.submit();  
}