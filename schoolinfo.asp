<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="pcfinal.asp"-->
<%
id=request.QueryString("id")
set rs1=server.CreateObject("adodb.recordset")
rs1.open "select * from pf_sc where sc_num="&id,conn,1,3
%>
<%
title=rs1("sc_name")&" - 校区介绍 - "
%>
<!-- #include file = "top.asp"-->
 <div id="main">
<!-- #include file = "left.asp" -->
<div class="right">
<div class="crumbs">
                  <div class="inner">
                     <span class="current">当前位置：<a href="index.asp">首 页</a>&nbsp;&gt;<a href="school.asp">校区介绍</a>&nbsp;&gt;徐汇田林校</span>
                     <ul>
                        <li class="style6">校区介绍</li>
                     </ul>
                  </div>
               </div>
          <div><img  src="images/bg1.png"/></div>     
        
<div class="contents">
			<div class="content">
                  <%
				  set rs=server.CreateObject("adodb.recordset")
				  rs.open "select * from pf_sc where sc_num="&request.QueryString("id")&"",conn,1,1
				  %>
				<div class="title"><%=rs("sc_name")%><span style="float:right;"><a href="yy.asp?school=<%=rs("sc_name")%>"><img src="images/yy.png" border="0"></a></span></div>
           

<table  border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                          <td><img src="<%=rs("sc_p_logo")%>" width="600px"></td>
                          </tr>
                              <tr>
                              <td><%=rs("sc_about")%></td>
                              </tr>
                        <tr>
                        <td height="25" colspan="2">地址：<%=rs("sc_address")%></td>
                      </tr>
                      <tr>
                        <td height="25" colspan="2">公交：<%=rs("sc_bus")%></td>
                      </tr>
                      <tr>
                        <td height="25" colspan="2">电话：<%=rs("sc_tel")%></td>
                      </tr>
       
                      <tr>
                        <td><img src="<%=rs("sc_p_map")%>" align="middle"></td>
                      </tr>
                        </table>
				  <%
				  rs.close
				  set rs= nothing
				  %>
                    </div>
                    </div>
                    <div><img  src="images/bg3.png"/></div>
  </div><!-- End: #right-->
        </div><!-- End: #main -->

<div class="clear"></div>

<!--#include file = "bottom.asp" -->