<%-- 
    Document   : modal
    Created on : Mar 10, 2022, 11:39:14 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--Start of modal part-->
        <div class="modal fade text-left" id="inlineForm"  tabindex="-1"
             role="dialog" aria-labelledby="myModalLabel33"
             aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable"
                 role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel33">Thông
                            tin sinh viên</h4>
                        <button type="button" class="close"
                                data-bs-dismiss="modal" aria-label="Close">
                            <i data-feather="x"></i>
                        </button>
                    </div>
                    <div class="modal-body">
                        <label>Mã số sinh viên</label>
                        <div class="form-group">
                            <input type="text" class="form-control" value="${s.maSV}" readonly="readonly">
                        </div>
                        <label>Họ và tên</label>
                        <div class="form-group">
                            <input type="text" class="form-control" value="${s.tenSV}" readonly="readonly">
                        </div>
                        <label>Giới tính</label>
                        <div class="form-group"
                             style="margin-top: 10px;">
                            <c:choose>
                                <c:when test="${s.gioiTinh==1}">
                                    <input type="radio" value="1" checked>Nam
                                </c:when>
                                <c:when test="${s.gioiTinh==0}">
                                    <input type="radio" value="0" style="margin-left: 20px;" checked>Nữ
                                </c:when>
                            </c:choose>

                        </div>
                        <label>Ngày sinh</label>
                        <div class="form-group">
                            <input type="text" class="form-control" value="${s.ngaySinh}" readonly="readonly">
                        </div>
                        <label>Quê quán</label>
                        <div class="form-group">
                            <input type="text" class="form-control" value="${s.queQuan}" readonly="readonly">
                        </div>
                        <label>Số điện thoại</label>
                        <div class="form-group">
                            <input type="text" class="form-control" value="${s.sdt}" readonly="readonly">
                        </div>
                        <label>Email</label>
                        <div class="form-group">
                            <input type="text" class="form-control" value="${s.email}" readonly="readonly">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End of modal part-->
    </body>
</html>
