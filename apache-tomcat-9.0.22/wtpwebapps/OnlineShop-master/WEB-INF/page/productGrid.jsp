<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security"
           uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet"
          href="<c:url value="/resource/bootstrap/css/bootstrap.min.css"/>">
    <script src="<c:url value="/resource/js/jquery.js"/>"></script>
    <script src="<c:url value="/resource/bootstrap/js/bootstrap.min.js"/>"></script>
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <style>
        body, h1, h2, h3, h4, h5 {
            font-family: "Raleway", sans-serif
        }

        .w3-sidenav a, .w3-sidenav h4 {
            font-weight: bold
        }
    </style>
</head>
<body>
<hr>
	<h5 align=center style="font: italic 2em Georgia, serif;">
		<font color = "#A41F34" size="7">
			New Arrivals
		</font>
	</h5>
<hr>
<div class="w3-row-padding" style="padding:0px 30px; margin-bottom: 20px">
    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/products/oppo.jpg"/>" alt="Norway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>USC SHIELD GRANDPARENT TWILL</b>
            </p>
            <p>
            <ul>
                <li>UNISEX CREW</li>
                <li>$49.95</li>
                <li>Color : Charcoal</li>
                <li>By Heritage, 50% cotton, 50% polyester</li>
            </ul>
            </p>
        </div>
    </div>

    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/products/vivo.jpg"/>" alt="Norway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>USC Shield Tie</b>
            </p>
            <p>
            <ul>
                <li>Tie</li>
                <li>$39.95</li>
                <li>Brand:Cambridge Apparel</li>
                <li>Material:100% Silk</li>
            </ul>
            </p>
        </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/products/samsung.jpg"/>" alt="Norway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>USC PAGODA TENT BY LOGO INC</b>
            </p>
            <p>
            <ul>
                <li>pop-up tents</li>
                <li>$374.95</li>
                <li>10 x 10 feet of coverage</li>
                <li>Ultraviolet Protection 50</li>
            </ul>
            </p>
        </div>
    </div>
</div>

<hr>
<div class="w3-row-padding" style="padding:0px 30px; margin-bottom: 20px">
    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/products/pixel.jpg"/>" alt="Norway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>USC SC Interlock Cardinal/ Gold Metal Pendant Necklace</b>
            </p>
            <p>
            <ul>
                <li>USC School Jewel</li>
                <li>$129.98</li>
                <li>Brand: School Jewels</li>
                <li>Color: USC Cardinal & Gold</li>
            </ul>
            </p>
        </div>
    </div>

    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/products/iphonex.jpg"/>" alt="Norway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>USC Trojans SC Interlock Air Zoom Pegasus</b>
            </p>
            <p>
            <ul>
                <li>USC Trojans Mens Footwear</li>
                <li>$130.00</li>
                <li>Color : USC Cardinal</li>
                <li>Brand: Nike</li>
            </ul>
            </p>
        </div>
    </div>
    <div class="w3-third w3-container w3-margin-bottom">
        <img src="<c:url value="/resource/images/products/huawei.jpg"/>" alt="Norway" style="width: 100%"
             class="w3-hover-opacity">
        <div class="w3-container w3-white">
            <p>
                <b>USC Trojans 2019 Official Tee</b>
            </p>
            <p>
            <ul>
                <li>USC Trojans Unisex T-shirt</li>
                <li>$19.95</li>
                <li>Color : USC Cardinal</li>
                <li>Material: 100% Cotton</li>
            </ul>
            </p>

        </div>
    </div>
</div>
</body>
</html>