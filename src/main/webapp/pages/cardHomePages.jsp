<%--
  Created by IntelliJ IDEA.
  User: HomeUser
  Date: 16.08.2022
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
    <title>cardHomePages</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
</head>
<body>
<div class="container mt-2">
    <div class="row">
        <div class="row justify-content-center">
            <div class="col-sm-7">
                <div class="card m-5">
                    <div>
                        <img src="https://shapka-youtube.ru/wp-content/uploads/2021/02/avatarka-dlya-skaypa-dlya-parney.jpg"
                             style=" border-radius: 50px; width: 50px; padding: 5px; float: left">
                        <form>
                            <!-- Button trigger modal -->
                            <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal"
                                    style="float: right; border: whitesmoke; background-color: white;
                                     padding: 5px"><h5>...</h5>
                            </button>

                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                                 aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-button">
                                            <button id="butt1" style="border: whitesmoke;
                                            background-color: white; color: red; width: 480px">
                                                <p>Отменить подписку</p>
                                            </button>

                                            <button id="butt2" style="border: whitesmoke;
                                            background-color: white; color: darkgray; width: 480px">
                                                <p>Добавить в избранное</p>
                                            </button>
                                            <button id="butt3" style="border: whitesmoke;
                                            background-color: white; color: darkgray; width: 480px">
                                                <p>Перейти к публикации</p>
                                            </button>
                                            <button id="butt4" style="border: whitesmoke;
                                            background-color: white; color: darkgray; width: 480px">
                                                <p>Отмена</p>
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <button class="card-text" style="padding: 10px; border: whitesmoke; background-color: white ">
                            <h6>Author</h6></button>
                    </div>
                    <img src="https://kartinkin.net/uploads/posts/2021-03/1616040392_35-p-fon-dlya-tovara-v-instagram-41.jpg"
                         alt="Photo of sunset" style="padding: 5px">
                    <form>
                        <button type="button" style="padding: 5px; border: whitesmoke; background-color: white;">
                            <img src="https://hooligram.ru/wp-content/uploads/2020/12/4-2.png"
                                 style="border-radius: 30px; width: 20px">
                        </button>

                        <button type="button" data-bs-toggle="modal" data-bs-target="#exampleModal1"
                                style="padding: 5px; border: whitesmoke; background-color: white;">
                            <img src="https://cdn.mywebicons.ru/i/webp/63fc0241c9f4f667b7e0c25a984594ef.webp"
                                 style="border-radius: 30px; width: 25px">
                        </button>
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel"
                             aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <img src="https://kartinkin.net/uploads/posts/2021-03/1616040392_35-p-fon-dlya-tovara-v-instagram-41.jpg"
                                             alt="Photo of sunset" style="padding: 5px; width: 100%">
                                    </div>
                                    <div class="modal-body">
                                        ...
                                        <c:forEach items="${comments}" var="comm">
                                            <p>${comm}</p>
                                        </c:forEach>

                                    </div>

                                </div>
                            </div>
                        </div>
                        <button type="button" style="padding: 5px; border: whitesmoke; background-color: white;">
                            <img src="https://cdn-icons-png.flaticon.com/512/1159/1159724.png"
                                 style="border-radius: 35px; width: 25px">
                        </button>
                        <button type="button"
                                style="padding: 5px; border: whitesmoke; background-color: white; float: right">
                            <img src="https://cdn-icons-png.flaticon.com/512/1174/1174410.png"
                                 style="border-radius: 50px; width: 23px">
                        </button>
                    </form>

                    <h6 style="width: 200px; padding: 5px"> 0 отметок "Нравится"</h6>
                    <div>
                        <form>
                            <button style="padding: 5px; border: white;  float: left; background-color: white "><h6>
                                Author</h6></button>
                        </form>
                        <p style="padding: 5px; float: left;"> name card</p>
                    </div>


                    <p style="padding: 10px; float: left">message</p>


                    <form>
                        <button type="button" style="padding: 5px; border: whitesmoke; float: left; width: 5%">
                            <img src="https://cdn-icons-png.flaticon.com/512/142/142310.png"
                                 style="border-radius: 50px; width: 18px">
                        </button>
                        <nav class="navbar bg-light">
                            <div class="container-fluid">
                                <form role="search" action="/cardHomePages" method="post">

                                    <input style="border: whitesmoke; width: 360px; " type="text" name="message"
                                           placeholder="  Add a comment..." aria-label="Search">
                                    <button style="border: whitesmoke;  color: green; width: 100px">
                                        publish
                                    </button>
                                </form>
                            </div>
                        </nav>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
</body>
</html>
