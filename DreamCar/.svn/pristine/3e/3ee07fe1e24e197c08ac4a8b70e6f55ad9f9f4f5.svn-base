function ajaxFunction(){
	var xmlHttp;
	try{
		//�ִ��������IE7+��Firefox��Chrome��Safari �� Opera�������ڽ��� XMLHttpRequest ����
		xmlHttp = new XMLHttpRequest();
	}catch(e){
		try{
			//IE6.0
			xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
		}catch(e){
			try{
				//IE5.0������汾
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
			}catch(e){
				alert("...");
				throw e;
			}
		}
				}
				return xmlHttp;
			}
