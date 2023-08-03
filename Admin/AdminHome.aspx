<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="Admin_AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>The Digi Store</title>
    <link href="../icon/icon.png" rel="icon" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="slider_section">
        <div id="myCarousel" class="carousel slide banner-main" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="first-slide" src="../img/banner.jpg" alt="First slide">
                    <div class="container">
                        <div class="carousel-caption relative">
                            <span>All New Phones </span>
                            <h1>up to 25% Flat Sale</h1>
                            <p>
                                It is a long established fact that a reader will be distracted by the readable content
                                <br>
                                of a page when looking at its layout. The point of using Lorem Ipsum is that
                            </p>
                            <a class="buynow" href="#">Buy Now</a>
                            <ul class="social_icon">
                                <li><a href="https://www.facebook.com/"><i class="fa fa-facebook-f"></i></a></li>
                                <li><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="second-slide" src="../img/banner.jpg" alt="Second slide">
                    <div class="container">
                        <div class="carousel-caption relative">
                            <span>All New Phones </span>
                            <h1>up to 25% Flat Sale</h1>
                            <p>
                                It is a long established fact that a reader will be distracted by the readable content
                                <br>
                                of a page when looking at its layout. The point of using Lorem Ipsum is that
                            </p>
                            <a class="buynow" href="#">Buy Now</a>
                            <ul class="social_icon">
                                <li><a href="https://www.facebook.com/"><i class="fa fa-facebook-f"></i></a></li>
                                <li><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="third-slide" src="../img/banner.jpg" alt="Third slide">
                    <div class="container">
                        <div class="carousel-caption relative">
                            <span>All New Phones </span>
                            <h1>up to 25% Flat Sale</h1>
                            <p>
                                It is a long established fact that a reader will be distracted by the readable content
                                <br>
                                of a page when looking at its layout. The point of using Lorem Ipsum is that
                            </p>
                            <a class="buynow" href="#">Buy Now</a>
                            <ul class="social_icon">
                                <li><a href="https://www.facebook.com/"><i class="fa fa-facebook-f"></i></a></li>
                                <li><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                <i class='fa fa-angle-left'></i>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                <i class='fa fa-angle-right'></i>
            </a>
        </div>
    </section>

</asp:Content>

