<%--
  Created by IntelliJ IDEA.
  User: sts
  Date: 2017/12/13
  Time: PM4:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../common/const.jsp" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>租车位订单</title>

    <meta name="keywords" content="">
    <meta name="description" content="">

    <link href="${path}/static/css/bootstrap.min.css?v=3.3.5" rel="stylesheet">
    <link href="${path}/static/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">

    <link href="${path}/static/css/animate.min.css" rel="stylesheet">
    <link href="${path}/static/css/style.min.css?v=4.0.0" rel="stylesheet"><base target="_blank">
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">

        <div class="col-sm-9">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>所有车位订单 </h5>

                </div>
                <div class="ibox-content icons-box">
                    <section id="new">
                        <div class="col-md-11">
                            <div class="input-group">
                                <input type="text" placeholder="请输入订单ID" class="input-sm form-control"> <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
                            </div>
                        </div>


                        <div class="row fontawesome-icon-list">

                            <div class="project-list">

                                <table class="table table-hover">
                                    <c:forEach items="${parkingorder}}" var="po">
                                        <tbody>
                                        <tr>
                                            <td class="project-status">
                                            <span class="label label-primary">${po.id}
                                            </td>
                                            <td class="project-title">
                                                <h4>${po.parkingPlaceId}</h4>
                                                <br/>
                                                <h4>租户 ${po.hirerId}</h4>
                                            </td>
                                            <td class="project-completion">
                                                <h4>${po.rentingPeriodDay}</h4>

                                            </td>
                                            <td class="project-completion">
                                                <h4>${po.price}</h4>

                                            </td>
                                            <td class="project-order">
                                                <h4>${po.startDay}</h4>

                                            </td>
                                            <td class="project-status">
                                                <h4>${po.status}</h4>

                                            </td>
                                            <td class="project-time">
                                                <h4>${po.createTime}</h4>

                                            </td>

                                        </tr>
                                        </tbody>
                                    </c:forEach>

                                </table>
                            </div>

                        </div>

                    </section>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="${path}/static/js/jquery.min.js?v=2.1.4"></script>
<script src="${path}/static/js/bootstrap.min.js?v=3.3.5"></script>
<script src="${path}/static/js/content.min.js?v=1.0.0"></script>
<script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>
</html>
