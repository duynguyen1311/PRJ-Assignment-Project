<%-- 
    Document   : table_fixed1
    Created on : Mar 1, 2022, 11:26:06 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Danh sách Sinh viên</title>

        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="assets/css/bootstrap.css">

        <link rel="stylesheet" href="assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
        <link rel="stylesheet" href="assets/vendors/bootstrap-icons/bootstrap-icons.css">
        <link rel="stylesheet" href="assets/css/app.css">
        <link rel="shortcut icon" href="assets/images/favicon.svg" type="image/x-icon">
    </head>

    <body>
        <div id="app">
            <div id="sidebar" class="active">
                <div class="sidebar-wrapper active">
                    <div class="sidebar-header">
                        <div class="d-flex justify-content-between">
                            <div class="logo">
                                <a href="home.jsp"><img src="assets/images/logo/logo.png" alt="Logo" srcset=""></a>
                            </div>
                            <div class="toggler">
                                <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar-menu">
                        <ul class="menu">
                            <li class="sidebar-item">
                                <a href="home.jsp" class='sidebar-link'>
                                    <i class="bi bi-grid-fill"></i>
                                    <span>Trang chủ</span>
                                </a>
                            </li>

                            <li class="sidebar-item">
                                <a href="khoa" class='sidebar-link'>
                                    <i class="bi bi-stack"></i>
                                    <span>Khoa</span>
                                </a>

                            </li>

                            <li class="sidebar-item">
                                <a href="monhoc.jsp" class='sidebar-link'>
                                    <i class="bi bi-collection-fill"></i>
                                    <span>Môn học</span>
                                </a>
                            </li>

                            <li class="sidebar-item">
                                <a href="lop.jsp" class='sidebar-link'>
                                    <i class="bi bi-grid-1x2-fill"></i>
                                    <span>Lớp</span>
                                </a>
                            </li>

                            <li class="sidebar-item  has-sub">
                                <a href="#" class='sidebar-link'>
                                    <i class="bi bi-hexagon-fill"></i>
                                    <span>Sinh viên</span>
                                </a>
                                <ul class="submenu ">
                                    <li class="submenu-item ">
                                        <a href="sinhvien.jsp">Danh sách sinh viên</a>
                                    </li>
                                    <li class="submenu-item ">
                                        <a href="diem.jsp">Điểm</a>
                                    </li>
                                </ul>
                            </li>

                            <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
                    </div>
                </div>
            </div>
            <div id="main">
                <header class="mb-3">
                    <a href="#" class="burger-btn d-block d-xl-none">
                        <i class="bi bi-justify fs-3"></i>
                    </a>
                </header>

                <div class="page-heading">
                    <div class="page-title">
                        <div class="row">
                            <div class="col-12 col-md-6 order-md-1 order-last">
                                <h3>Danh sách sinh viên</h3>
                                <p class="text-subtitle text-muted" style="margin-top:50px"></p>
                                <button class="btn btn-info" style="padding-top: 10px; padding-bottom: 10px; margin-bottom: 20px;"><i class="bi-plus-circle" style="margin-right: 5px;">
                                    </i>Thêm mới </button>
                            </div>
                            <div class="col-12 col-md-6 order-md-2 order-first">
                                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="home.jsp">Trang chủ</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Danh sách sinh viên</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>

                    <section class="section">
                        <div class="row" id="table-contexual">
                            <div class="col-12">
                                <div class="card">
                                    <!-- table contextual / colored -->
                                    <div class="table-responsive">
                                        <table class="table mb-0">
                                            <thead>
                                                <tr>
                                                    <th>NAME</th>
                                                    <th>RATE</th>
                                                    <th>SKILL</th>
                                                    <th>TYPE</th>
                                                    <th>LOCATION</th>
                                                    <th>ACTION</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="table-active">
                                                    <td class="text-bold-500">Michael Right</td>
                                                    <td>$15/hr</td>
                                                    <td class="text-bold-500">UI/UX</td>
                                                    <td>Remote</td>
                                                    <td>Austin,Taxes</td>
                                                    <td><a href="#" class="bi-eye" data-bs-toggle="modal"
                                                        data-bs-target="#inlineForm"><i
                                                            class="badge-circle badge-circle-light-secondary font-medium-1"
                                                            data-feather="mail"></i></a>
                                                    <div class="modal fade text-left" id="inlineForm" tabindex="-1"
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
                                                                <form action="#">
                                                                    <div class="modal-body">
                                                                        <label>Mã số sinh viên</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Họ và tên</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Giới tính</label>
                                                                        <div class="form-group"
                                                                            style="margin-top: 10px;">
                                                                            <input type="radio">Nam
                                                                            <input type="radio"
                                                                                style="margin-left: 20px;">Nữ
                                                                        </div>
                                                                        <label>Ngày sinh</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Quê quán</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                        <a href="#" class="bi-box-arrow-in-up-left"><i
                                                                class="badge-circle badge-circle-light-secondary font-medium-1"
                                                                data-feather="mail"></i></a>
                                                        <a href="#" class="bi-trash-fill"><i
                                                                class="badge-circle badge-circle-light-secondary font-medium-1"
                                                                data-feather="mail"></i></a>
                                                    </td>
                                                </tr>
                                                <tr class="table-primary">
                                                    <td class="text-bold-500">Morgan Vanblum</td>
                                                    <td>$13/hr</td>
                                                    <td class="text-bold-500">Graphic concepts</td>
                                                    <td>Remote</td>
                                                    <td>Shangai,China</td>
                                                    <td><a href="#" class="bi-eye" data-bs-toggle="modal"
                                                        data-bs-target="#inlineForm"><i
                                                            class="badge-circle badge-circle-light-secondary font-medium-1"
                                                            data-feather="mail"></i></a>
                                                    <div class="modal fade text-left" id="inlineForm" tabindex="-1"
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
                                                                <form action="#">
                                                                    <div class="modal-body">
                                                                        <label>Mã số sinh viên</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Họ và tên</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Giới tính</label>
                                                                        <div class="form-group"
                                                                            style="margin-top: 10px;">
                                                                            <input type="radio">Nam
                                                                            <input type="radio"
                                                                                style="margin-left: 20px;">Nữ
                                                                        </div>
                                                                        <label>Ngày sinh</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Quê quán</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                        <a href="#" class="bi-box-arrow-in-up-left"><i
                                                                class="badge-circle badge-circle-light-secondary font-medium-1"
                                                                data-feather="mail"></i></a>
                                                        <a href="#" class="bi-trash-fill"><i
                                                                class="badge-circle badge-circle-light-secondary font-medium-1"
                                                                data-feather="mail"></i></a>
                                                    </td>
                                                </tr>
                                                <tr class="table-secondary">
                                                    <td class="text-bold-500">Tiffani Blogz</td>
                                                    <td>$15/hr</td>
                                                    <td class="text-bold-500">Animation</td>
                                                    <td>Remote</td>
                                                    <td>Austin,Texas</td>
                                                    <td><a href="#" class="bi-eye" data-bs-toggle="modal"
                                                        data-bs-target="#inlineForm"><i
                                                            class="badge-circle badge-circle-light-secondary font-medium-1"
                                                            data-feather="mail"></i></a>
                                                    <div class="modal fade text-left" id="inlineForm" tabindex="-1"
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
                                                                <form action="#">
                                                                    <div class="modal-body">
                                                                        <label>Mã số sinh viên</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Họ và tên</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Giới tính</label>
                                                                        <div class="form-group"
                                                                            style="margin-top: 10px;">
                                                                            <input type="radio">Nam
                                                                            <input type="radio"
                                                                                style="margin-left: 20px;">Nữ
                                                                        </div>
                                                                        <label>Ngày sinh</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Quê quán</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                        <a href="#" class="bi-box-arrow-in-up-left"><i
                                                                class="badge-circle badge-circle-light-secondary font-medium-1"
                                                                data-feather="mail"></i></a>
                                                        <a href="#" class="bi-trash-fill"><i
                                                                class="badge-circle badge-circle-light-secondary font-medium-1"
                                                                data-feather="mail"></i></a>
                                                    </td>
                                                </tr>
                                                <tr class="table-success">
                                                    <td class="text-bold-500">Ashley Boul</td>
                                                    <td>$15/hr</td>
                                                    <td class="text-bold-500">Animation</td>
                                                    <td>Remote</td>
                                                    <td>Austin,Texas</td>
                                                    <td><a href="#" class="bi-eye" data-bs-toggle="modal"
                                                        data-bs-target="#inlineForm"><i
                                                            class="badge-circle badge-circle-light-secondary font-medium-1"
                                                            data-feather="mail"></i></a>
                                                    <div class="modal fade text-left" id="inlineForm" tabindex="-1"
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
                                                                <form action="#">
                                                                    <div class="modal-body">
                                                                        <label>Mã số sinh viên</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Họ và tên</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Giới tính</label>
                                                                        <div class="form-group"
                                                                            style="margin-top: 10px;">
                                                                            <input type="radio">Nam
                                                                            <input type="radio"
                                                                                style="margin-left: 20px;">Nữ
                                                                        </div>
                                                                        <label>Ngày sinh</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Quê quán</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                        <a href="#" class="bi-box-arrow-in-up-left"><i
                                                                class="badge-circle badge-circle-light-secondary font-medium-1"
                                                                data-feather="mail"></i></a>
                                                        <a href="#" class="bi-trash-fill"><i
                                                                class="badge-circle badge-circle-light-secondary font-medium-1"
                                                                data-feather="mail"></i></a>
                                                        </a></td>
                                                </tr>
                                                <tr class="table-danger">
                                                    <td class="text-bold-500">Mikkey Mice</td>
                                                    <td>$15/hr</td>
                                                    <td class="text-bold-500">Animation</td>
                                                    <td>Remote</td>
                                                    <td>Austin,Texas</td>
                                                    <td><a href="#" class="bi-eye" data-bs-toggle="modal"
                                                        data-bs-target="#inlineForm"><i
                                                            class="badge-circle badge-circle-light-secondary font-medium-1"
                                                            data-feather="mail"></i></a>
                                                    <div class="modal fade text-left" id="inlineForm" tabindex="-1"
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
                                                                <form action="#">
                                                                    <div class="modal-body">
                                                                        <label>Mã số sinh viên</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Họ và tên</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Giới tính</label>
                                                                        <div class="form-group"
                                                                            style="margin-top: 10px;">
                                                                            <input type="radio">Nam
                                                                            <input type="radio"
                                                                                style="margin-left: 20px;">Nữ
                                                                        </div>
                                                                        <label>Ngày sinh</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Quê quán</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                        <a href="#" class="bi-box-arrow-in-up-left"><i
                                                                class="badge-circle badge-circle-light-secondary font-medium-1"
                                                                data-feather="mail"></i></a>
                                                        <a href="#" class="bi-trash-fill"><i
                                                                class="badge-circle badge-circle-light-secondary font-medium-1"
                                                                data-feather="mail"></i></a>
                                                    </td>
                                                </tr>
                                                <tr class="table-warning">
                                                    <td class="text-bold-500">Mikkey Mice</td>
                                                    <td>$15/hr</td>
                                                    <td class="text-bold-500">Animation</td>
                                                    <td>Remote</td>
                                                    <td>Austin,Texas</td>
                                                    <td><a href="#" class="bi-eye" data-bs-toggle="modal"
                                                        data-bs-target="#inlineForm"><i
                                                            class="badge-circle badge-circle-light-secondary font-medium-1"
                                                            data-feather="mail"></i></a>
                                                    <div class="modal fade text-left" id="inlineForm" tabindex="-1"
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
                                                                <form action="#">
                                                                    <div class="modal-body">
                                                                        <label>Mã số sinh viên</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Họ và tên</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Giới tính</label>
                                                                        <div class="form-group"
                                                                            style="margin-top: 10px;">
                                                                            <input type="radio">Nam
                                                                            <input type="radio"
                                                                                style="margin-left: 20px;">Nữ
                                                                        </div>
                                                                        <label>Ngày sinh</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Quê quán</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                        <a href="#" class="bi-box-arrow-in-up-left"><i
                                                                class="badge-circle badge-circle-light-secondary font-medium-1"
                                                                data-feather="mail"></i></a>
                                                        <a href="#" class="bi-trash-fill"><i
                                                                class="badge-circle badge-circle-light-secondary font-medium-1"
                                                                data-feather="mail"></i></a>
                                                    </td>
                                                </tr>
                                                <tr class="table-info">
                                                    <td class="text-bold-500">Mikkey Mice</td>
                                                    <td>$15/hr</td>
                                                    <td class="text-bold-500">Animation</td>
                                                    <td>Remote</td>
                                                    <td>Austin,Texas</td>
                                                    <td><a href="#" class="bi-eye" data-bs-toggle="modal"
                                                        data-bs-target="#inlineForm"><i
                                                            class="badge-circle badge-circle-light-secondary font-medium-1"
                                                            data-feather="mail"></i></a>
                                                    <div class="modal fade text-left" id="inlineForm" tabindex="-1"
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
                                                                <form action="#">
                                                                    <div class="modal-body">
                                                                        <label>Mã số sinh viên</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Họ và tên</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Giới tính</label>
                                                                        <div class="form-group"
                                                                            style="margin-top: 10px;">
                                                                            <input type="radio">Nam
                                                                            <input type="radio"
                                                                                style="margin-left: 20px;">Nữ
                                                                        </div>
                                                                        <label>Ngày sinh</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Quê quán</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                        <a href="#" class="bi-box-arrow-in-up-left"><i
                                                                class="badge-circle badge-circle-light-secondary font-medium-1"
                                                                data-feather="mail"></i></a>
                                                        <a href="#" class="bi-trash-fill"><i
                                                                class="badge-circle badge-circle-light-secondary font-medium-1"
                                                                data-feather="mail"></i></a>
                                                    </td>
                                                </tr>
                                                <tr class="table-light">
                                                    <td class="text-bold-500">Mikkey Mice</td>
                                                    <td>$15/hr</td>
                                                    <td class="text-bold-500">Animation</td>
                                                    <td>Remote</td>
                                                    <td>Austin,Texas</td>
                                                    <td><a href="#" class="bi-eye" data-bs-toggle="modal"
                                                        data-bs-target="#inlineForm"><i
                                                            class="badge-circle badge-circle-light-secondary font-medium-1"
                                                            data-feather="mail"></i></a>
                                                    <div class="modal fade text-left" id="inlineForm" tabindex="-1"
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
                                                                <form action="#">
                                                                    <div class="modal-body">
                                                                        <label>Mã số sinh viên</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Họ và tên</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Giới tính</label>
                                                                        <div class="form-group"
                                                                            style="margin-top: 10px;">
                                                                            <input type="radio">Nam
                                                                            <input type="radio"
                                                                                style="margin-left: 20px;">Nữ
                                                                        </div>
                                                                        <label>Ngày sinh</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Quê quán</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                        <a href="#" class="bi-box-arrow-in-up-left"><i
                                                                class="badge-circle badge-circle-light-secondary font-medium-1"
                                                                data-feather="mail"></i></a>
                                                        <a href="#" class="bi-trash-fill"><i
                                                                class="badge-circle badge-circle-light-secondary font-medium-1"
                                                                data-feather="mail"></i></a>
                                                    </td>
                                                </tr>
                                                <tr class="table-dark">
                                                    <td class="text-bold-500">Mikkey Mice</td>
                                                    <td>$15/hr</td>
                                                    <td class="text-bold-500">Animation</td>
                                                    <td>Remote</td>
                                                    <td>Austin,Texas</td>
                                                    <td><a href="#" class="bi-eye" data-bs-toggle="modal"
                                                        data-bs-target="#inlineForm"><i
                                                            class="badge-circle badge-circle-light-secondary font-medium-1"
                                                            data-feather="mail"></i></a>
                                                    <div class="modal fade text-left" id="inlineForm" tabindex="-1"
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
                                                                <form action="#">
                                                                    <div class="modal-body">
                                                                        <label>Mã số sinh viên</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Họ và tên</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Giới tính</label>
                                                                        <div class="form-group"
                                                                            style="margin-top: 10px;">
                                                                            <input type="radio">Nam
                                                                            <input type="radio"
                                                                                style="margin-left: 20px;">Nữ
                                                                        </div>
                                                                        <label>Ngày sinh</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                        <label>Quê quán</label>
                                                                        <div class="form-group">
                                                                            <input type="text" class="form-control">
                                                                        </div>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                        <a href="#" class="bi-box-arrow-in-up-left"><i
                                                                class="badge-circle badge-circle-light-secondary font-medium-1"
                                                                data-feather="mail"></i></a>
                                                        <a href="#" class="bi-trash-fill"><i
                                                                class="badge-circle badge-circle-light-secondary font-medium-1"
                                                                data-feather="mail"></i></a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
                </section>
                <!-- Table head options end -->
            </div>

            <footer>
                <div class="footer clearfix mb-0 text-muted">
                    <div class="float-start">
                        <p>2021 &copy; Mazer</p>
                    </div>
                    <div class="float-end">
                        <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a
                                href="http://ahmadsaugi.com">A. Saugi</a></p>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/mazer.js"></script>
</body>

</html>
