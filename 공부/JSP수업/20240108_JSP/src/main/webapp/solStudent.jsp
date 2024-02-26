<%-- jsp 주석 :: 브라우저 상에서 드러나지 않음 --%>
<!-- html 주석 :: 브라우저 상에서 드러남-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- <%@ %> :: 지시어 태그 --%>    
<%-- <%@ page %> :: jsp 파일의 전체적인 속성 정의 --%>    
<%-- <%@ include file="파일명" %> :: 외부 파일을 특정위치에 포함 --%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <% %> :: 스크립트릿 태그 (자바의 대부분 문법 작성 o) --%>
	<%-- <%= %> :: 표현 태그 (자바로 선언된 변수/메소드값 반환) --%>
	<%-- <%! %> :: 선언 태그 (변수 및 메소드 선언, 전역 변수) --%>
<%!
	String name;
	int age;
	String major;
	String hobby[];
	String site;
%>

<%!	//선언태그로 메소드 작성해야 오류 뜨지않음.
	//메소드로, 영문으로 입력받은 value 값을 한글로 반환
	public String getMajor(String m){
		switch(m){
			case "computer":
				m="컴공과"; break;
			case "math":
				m="수학과"; break;
			case "teacher":
				m="교육과"; break;
		}
		return m;
 	}

	//취미
	public String getHobby(String h[]){
		String result="";
		if(h==null){
			result+="취미 없음";
		}
		else{
			for(int i=0;i<h.length;i++){
				switch(h[i]){
				case "running":
					result+="러닝"; break;
				case "reading":
					result+="독서"; break;
				case "cooking":
					result+="요리"; break;
				case "gaming":
					result+="게임"; break;
				}
				if(i!=h.length-1){
					result+=",";
				}
			}
		}
		return result;
	}
	//사이트
	public String getSite(String s){
		switch(s){
			case "naver":
			s="네이버";break;
			case "google":
			s="구글";break;
			case "daum":
			s="다음";break;
		}
		return s;
	}
%>

<%
	name = request.getParameter("name");
	age = Integer.parseInt(request.getParameter("age"));
	major = request.getParameter("major");
	hobby = request.getParameterValues("hobby");
	site = request.getParameter("site");
%>
	<p>이름: <%=name %></p>
	<p>나이: <%=age %></p>
	<p>전공: <%= getMajor(major) %> </p>
	<p>취미: <%= getHobby(hobby) %> </p>
	<p>애용하는사이트: <%= getSite(site) %> </p>
</body>
</html>