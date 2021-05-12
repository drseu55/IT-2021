<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style_index.css">
    <title>index</title>
</head>
<body>
    <div class="header">
    </div>
    <div class="grayDiv">
        <div class="centeredDiv">
            <div class="imgDiv">
                <img src="imgs/male.svg" alt="male">
            </div>
            <div class="profileInfo">
                <h2>Профилна информация</h2>
                <p>ID: <c:out value="${loginUser.getId()}"></c:out></p>
                <p>Име: <c:out value="${loginUser.getName()}"></c:out></p>
                <p>Работа: <c:out value="${loginUser.getJob()}"></c:out></p>
                <p>Описание: <c:out value="${loginUser.getDescription()}"></c:out></p>
            </div>
            <div class="skillTitleDiv">
                <h2>Умения</h2>
            </div>
            <div class="skills">
                <div class="wrapper">
                    <div class="professionalSkillsDiv">
                        <h3>Професионални</h3>
                        <c:forEach var="proSkill" items="${loginUser.getProSkills()}">
                        	<p><c:out value="${proSkill.getSkillName()}"></c:out></p>
                        	<input class="progressBar" type="range" min="0" max="100" step="10" name="proSkillLevel" value="${proSkill.getSkillLevel()}"/>
                        </c:forEach>
                    </div>
                    <div class="personalSkillsDiv">
                        <h3>Личностни</h3>
                        <c:forEach var="personalSkill" items="${loginUser.getPersonalSkills()}">
                        	<p><c:out value="${personalSkill.getSkillName()}"></c:out></p>
                        	<input class="progressBar" type="range" min="0" max="100" step="10" name="personalSkillLevel" value="${personalSkill.getSkillLevel()}"/>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <div class="contactsTitle">
                <h2>Контакти</h2>
            </div>
            <div class="contacts">
                <div class="wrapperContacts">
                    <div class="contactsLeft">
                        <p>Имейл</p>
                            <a href="#" class="contactsOrange"><c:out value="${loginUser.getEmail()}"></c:out></a>
                            <p>Телефон</p>
                            <a href="#" class="contactsOrange"><c:out value="${loginUser.getPhone()}"></c:out></a>
                        </div>
                        <div class="contactsRight">
                            <p>Град</p>
                            <p class="contactsOrange"><c:out value="${loginUser.getAddress().getCity()}"></c:out></p>
                            <p>Улица</p>
                            <p class="contactsOrange"><c:out value="${loginUser.getAddress().getStreet()}"></c:out></p>
                        </div>
                    </div>
            </div>
        </div>
    </div>
    <div class="footer">
        
    </div>
</body>
</html>