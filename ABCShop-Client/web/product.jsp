<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new product</title>
        <!-- main JS libs -->
        <script src="js/libs/modernizr.min.js"></script>
        <script src="js/libs/jquery-1.10.0.js"></script>
        <script src="js/libs/jquery-ui.min.js"></script>
        <script src="js/libs/bootstrap.min.js"></script>
        <!-- Style CSS -->
        <link href="css/bootstrap.css" media="screen" rel="stylesheet">
        <link href="style.css" media="screen" rel="stylesheet">
        <script src="js/general.js"></script>
        <!--End template-->

        <!--Validate Boostrap 3-->
        <script src="http://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>
        <link rel="stylesheet" href="css/validate.css">

    </head>
    <body>
        <div class="container_fix">
                <form action="ProductServlet" method="Post" id="contact_form">
                    <div>

                        <div >
                            Id product
                            <input type="text" name="id" placeholder="Enter id"/>
                        </div>

                        <div >
                            Name product
                            <input type="text" name="name" placeholder="Enter name" />
                        </div>
                        <div >
                            Price product
                            <input type="text" name="price" placeholder="Enter price" />
                        </div>
                        <div>
                            Quantity product
                            <input type="number" name="quantity" placeholder="Enter quantity" />
                        </div>
                        <input type="submit" value="Add New"/>
                </form>
            </div>
            <div class="message">
                <c:if test="${not empty message or error}">
                    <div class="comment-list styled clearfix">
                        <ol>
                            <li class="comment">
                                <div class="comment-body">
                                    <div class="comment-arrow"></div>
                                    <div class="comment-avatar">
                                        <div class="avatar">
                                            <img src="images/icon-login.gif" alt=""/>
                                        </div>
                                    </div>
                                    <div class="comment-text">
                                        <div class="comment-author clearfix">
                                            <a href="#" class="link-author"> 
                                                <c:if test="${not empty message}">
                                                    <font color="#bd1313"><c:out value="${requestScope.message}"/></font>
                                                </c:if>
                                            </a>
                                        </div>
                                        <c:if test="${not empty error }">
                                            <font color="#bd1318"><c:out value="${requestScope.error}"/></font>
                                        </c:if>
                                    </div>-->
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </li>
                        </ol>
                    </div>
                </c:if>
            </div>
        </div>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js'></script>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js'></script>

        <script src="js/validate.js"></script>

    </body>
</html>