<%@page import="com.model.UserVO"%>
<%@page import="com.model.CommunityVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.CommunityDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<head>
    <title>Editorial by HTML5 UP</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />


    <style>

        form textarea{
            border-radius:0; 
            resize:none;
            color:black !important;
        }
        
        form div#reply{
            display:flex;
            margin-bottom:3%;
        }
        
        input[type='submit']:not(#register), input[type='button'] {border-radius:0;}
        
        ul.actions li {
            padding: 0 0 0 0.2em;
        }
        
        input#board_title{
            border-radius: 0;
            border: none;
            text-align: left;
            font-size: 1.75em;
            font-weight: 500;
            line-height: 1.5;
            letter-spacing: 0.1em;
            padding:0;
        }
        
        input[type='file']{
            display:none;
        }
        
        div.files{
            text-align:center;
            margin-right: 3%;
        }
        
        textarea {
            font-size: 1em;
                  font-weight: 600;
                  letter-spacing: 0.1em;
        }
    </style>

</head>

<body class="is-preload">


<%
		CommunityDAO dao = new CommunityDAO();
		ArrayList<CommunityVO> al = dao.C_getList();
		System.out.print(al.size());
		UserVO vo = (UserVO)session.getAttribute("loginVO");
	%>
	

    <!-- Wrapper -->
    <div id="wrapper">

        <!-- Main -->
        <div id="main">
            <div class="inner">

                <!-- Header -->
                <header id="header">
                    <a href="CommunityList.jsp" class="logo"><strong>Community</strong></a>
                    <ul class="icons">
                        <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
                        <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
                        <li><a href="#" class="icon brands fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
                        <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
                        <li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
                    </ul>
                </header>

            <%--     <!-- Banner -->
                <section id="banner">
                    <div class="content">
						<div id="page-wrapper">
							<!-- Wrapper -->
							<div class="wrapper">
								<div class="inner">
									<jsp:include page="/app/fix/header.jsp" />
								</div>
							</div> --%>

							<!-- Wrapper -->
							<div class="wrapper">
								<div class="inner">

									<!-- Main -->
									<section class="main">


										<div class="table-wrapper">
											<div style="display:flex; justify-content:space-between;">
												<span>�Խù� ���� : <%=al.size() %></span>
												<%if(vo!=null){ %>
												<button style="border-radius:0;"
													onclick="location.href='${pageContext.request.contextPath}/278board/CommunityWrite.jsp'">�۾���</button>
												<%} %>
											</div>

											<table>
												<caption style="text-align:left; margin-bottom:3%;">

												</caption>
												<thead>
													<tr>
														<th>��ȣ</th>
														<th>����</th>
														<th>�ۼ���</th>
														<th>��¥</th>
														<th>��ȸ��</th>
													</tr>
												</thead>
												<tbody>
													
									<%for(int i = al.size()-1;i >= 0;i--){%>
									
									<tr>
									<td><%=al.get(i).getArticle_seq()%></td> <!-- �� ��ȣ -->
									<td><a href="CommunityView.jsp?num=<%=al.get(i).getArticle_seq()%>"><%=al.get(i).getArticle_title() %></a></td> 	<!-- �Խù� -->
									<td><%=al.get(i).getUser_id() %></td>	<!-- �ۼ��� -->
									<td><%=al.get(i).getArticle_date() %></td>	<!-- �ۼ���¥ -->
									<td><%=al.get(i).getArticle_cnt() %></td>	<!-- ��ȸ�� -->
									<%}%>
									
								
												</tbody>
											</table>

											<table style="font-size:1.3rem">
												<tr align="center" valign="middle">
													<td>
														<a href="#">&lt;</a>
														<a href="#">1</a>
														<a href="#">2</a>
														<a href="#">3</a>
														<a href="#">4</a>
														<a href="#">5</a>
														<a href="#">&gt;</a>
													</td>
												</tr>
											</table>
										</div>
									</section>

								</div>
							</div>
						</div>
					</div>
				</section>

                <!-- Section -->


            </div>
        </div>

        <!-- Sidebar -->
        <div id="sidebar">
            <div class="inner">

                <!-- Search -->
                <section id="search" class="alt">
                    <form method="post" action="#">
                        <input type="text" name="query" id="query" placeholder="Search" />
                    </form>
                </section>

                <!-- Menu -->
                <nav id="menu">
                    <header class="major">
                        <h2>Menu</h2>
                    </header>
                    <ul class="sidemenu">
						<li><a href="../header.jsp">Home</a></li>
						<li ><a href="#">WITH U</a></li>
						<li><a href="#">Checks</a></li>
						<li><a href="#">Healthy</a></li>
						<li><a href="#">Community</a></li>
						<li><a href="#">Service</a></li>
					</ul>
                    </section>

                    <!-- Section -->


                    <!-- Footer -->
                    <footer id="footer">
                        <p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a
                                href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5
                                UP</a>.</p>
                    </footer>

            </div>
        </div>

    </div>

    <!-- Scripts -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>
    <script>
        function send(){
            if(!$("input#boardTitle").val()){
                alert("������ �ۼ����ּ���.");
                return;
            }
            
            if(!$("textarea[name='boardContent']").val()){
                alert("������ �ۼ����ּ���.");
                return;
            }
            
            document.writeForm.submit();
        }
    </script>


</body>

</html>