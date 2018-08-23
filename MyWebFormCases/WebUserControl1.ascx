<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="MyWebFormCases.WebUserControl1" %>
<div class="panel panel-inverse" style="padding-top: 3%; padding-left: 3%;">
    <!-- begin panel-heading -->
    <div class="uk-grid">
        <div class="uk-width-1-1">
            <div class="md-card">
                <div class="md-card-toolbar">
                    <div class="md-card-toolbar-actions">
                        <i class="md-icon material-icons md-card-fullscreen-activate">&#xE5D0;</i>
                        <i class="md-icon material-icons">&#xE5D5;</i>
                        <div class="md-card-dropdown" data-uk-dropdown="{pos:'bottom-left'}">
                            <i class="md-icon material-icons">&#xE5D4;</i>
                            <div class="uk-dropdown uk-dropdown-small">
                                <ul class="uk-nav">
                                    <li><a href="#">Action 1</a></li>
                                    <li><a href="#">Action 2</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <h3>المستخدمين
                    </h3>
                </div>
                <div class="md-card-content">
                    <div class="md-card uk-margin-medium-bottom">
                        <div class="md-card-content">
                            <div class="uk-overflow-container">
                                <table id="users_table" <%--class="display"--%> class="uk-table uk-table-nowrap table_check">
                                    <thead>
                                        <tr>
                                            <th class="uk-width-1-10 uk-text-center">الاكشن</th>
                                            <th class="uk-width-1-10 uk-text-center">الصورة</th>
                                            <th class="uk-width-1-10 uk-text-center">الاسم</th>
                                            <th class="uk-width-1-10 uk-text-center">اسم المستخدم</th>
                                            <th class="uk-width-1-10 uk-text-center">الشركة</th>
                                            <th class="uk-width-1-10 uk-text-center">تاريخ الانشاء</th>
                                            <th class="uk-width-1-10 uk-text-center">المبلغ المسموح التعامل به</th>
                                            <th class="uk-width-1-10 uk-text-center">فعال ؟</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                      <%--  <% 
                                            System.Data.DataTable dt = getUsers();
                                            int rowsCount = dt.Rows.Count;
                                            int totalPages = rowsCount / 5;
                                            foreach (System.Data.DataRow cr in dt.Rows)
                                            {
                                                string u_id = cr["USER_ID"].ToString();
                                                string u_image = cr["IMAGE"].ToString();
                                                string u_name = cr["USER_NAME"].ToString();
                                                string u_login_name = cr["LOGIN_NAME"].ToString();
                                                string u_company = cr["COMPANY_ID"].ToString();
                                                string u_c_date = cr["CREATE_DATE"].ToString();
                                                string u_max_amount = cr["MAX_AMOUNT"].ToString();
                                                string c_is_active = cr["IS_ACTIVE"].ToString();
                                                string u_is_logged = cr["IS_LOG_IN"].ToString();

                                        %>--%>

                                        <tr>
                                            <td class="uk-text-center">
                                                <a href="#" id="btn_edit" runat="server" onserverclick="btn_edit_ServerClick"><input type="hidden" id="h_edit" value='<%= u_id %>' runat="server" /><i class="md-icon material-icons">&#xE254;</i></a>
                                                <a href="#"><i class="md-icon material-icons">delete</i></a>
                                            </td>
                                            <td class="uk-text-center"><
                                            <%--<td class="uk-text-center"><%= u_name %></td>
                                            <td class="uk-text-center"><%= u_login_name %></td>
                                            <td class="uk-text-center"><%= u_company %></td>
                                            <td class="uk-text-center"><%= u_c_date %></td>
                                            <td class="uk-text-center"><%= u_max_amount + " $" %></td>--%>
                                            <td class="uk-text-center">
                                               <%-- <%
                                                    string active_class = "", activ_txt = "";
                                                    if (c_is_active == "1")
                                                    {
                                                        active_class = "uk-badge uk-badge-success";
                                                        activ_txt = "فعال";
                                                    }
                                                    else
                                                    {
                                                        active_class = "uk-badge uk-badge-danger";
                                                        activ_txt = "غير فعال";
                                                    }
                                                %>--%>
                                               <%-- <span class='<%=active_class%>'><%=activ_txt %></span>--%>
                                            </td>
                                            <td>
                                              <%--  <%
                                                    string login_class = "", login_txt = "";
                                                    if (u_is_logged == "1")
                                                    {
                                                        login_class = "uk-badge uk-badge-defualt";
                                                        login_txt = "مسجل دخول";
                                                    }
                                                    else
                                                    {
                                                        login_class = "uk-badge uk-badge-warning";
                                                        login_txt = "غير مسجل الدخول";
                                                    }
                                                %>--%>
                                               <%-- <span class='<%=login_class%>'><%=login_txt %></span>--%>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <ul id="com_pages" class="uk-pagination uk-margin-medium-top">
                                <li class="uk-disabled"><span><i class="uk-icon-angle-double-left"></i></span></li>
                                <li class="uk-active"><span>1</span></li>
                                <li><a href="#" onclick="">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><span>&hellip;</span></li>
                                <li><a href="#">10</a></li>
                                <li><a href="#"><i class="uk-icon-angle-double-right"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end panel-heading -->
</div>