<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="/WEB-INF/custom.tld" prefix="custom"%>

<style>
#filter>.form-group>.col-sm-12>span {
	display: block;
}
</style>

<div class="row">
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="/admin">АДМІНКА</a></li>
					<li><a href="/admin/category">Категорія</a></li>
					<li><a href="/admin/typeProduct">Тип товару</a></li>
					<li><a href="/admin/country">Країна</a></li>
					<li><a href="/admin/producer">Виробник</a></li>
					<li><a href="/admin/model">Модель</a></li>
					<li><a href="/admin/measure">Вимір</a></li>
					<li><a href="/admin/product">Товар</a></li>
					<li><a href="/admin/user">Користувач</a></li>
					<li><a href="/admin/shopingCart">Кошик</a></li>
					<li><a href="/">Home</a></li>
				</ul>
			</div>
		</div>
	</nav>
</div>

<h1>=======================ADMIN===========ADMIN===========</h1>

<aside class="col-xs-5 col-sm-4 col-md-3 col-lg-3">
                <ul class="list-group submenu">
                    <li class="list-group-item active">Супутникове ТБ</li>
                    <li class="list-group-item"><a href="/donec/">Ресивери</a></li>
                    <li class="list-group-item"><a href="/vestibulum/">Антени</a></li>
                    <li class="list-group-item"><a href="/etiam/">Конвертори</a></li>
                    <li class="list-group-item"><a href="/phasellus/">Перемикачі</a></li>
                    <li class="list-group-item"><a href="/cras/">Кронштейни</a></li>
                </ul>
                 
                <ul class="list-group submenu">
                    <li class="list-group-item active">Ефірне ТБ Т2</li>
                    <li class="list-group-item"><a href="/donec/">Приймачі</a></li>
                    <li class="list-group-item"><a href="/vestibulum/">Антени</a></li>
                    <li class="list-group-item"><a href="/etiam/">Підсилювачі</a></li>
                    <li class="list-group-item"><a href="/phasellus/">Розгалужники</a></li>
                    <li class="list-group-item"><a href="/cras/">Cras et nisi vitae odio</a></li>
                </ul> 
                 
                <div class="panel panel-primary">
                    <div class="panel-heading">Наші магазини</div>
                    <div class="panel-body">
                        <img src="/images/map.png" class="img-responsive" alt="Our offices">
                    </div>
                </div> 
</aside>

<div >
<div class="row">


	<div class="col-md-4 col-xs-4">

		<img class="img-rounded" width="100%"
						src="/images/item/${product.id}.jpg?version=${product.version}"></img>


	</div>
	
	<div class="col-md-4 col-xs-4 rowDetails">
		
			<div class="row nameProduct">
				
				<div class="col-md-12 col-xs-12">${product.nameProduct}</div></div>
				
			<div class="row">	
				<div class="col-md-12 col-xs-12">${product.model.nameModel}</div></div>
				
				
			<div class="row">	
				<div class="col-md-4 col-xs-4">${product.price}</div>
				
				<div class="col-md-4 col-xs-4">${product.measure.nameMeasure}</div></div>
			
	</div>
		
</div>
<h1>=======================ADMIN===========ADMIN===========</h1>
<div class="row">
	<div class="col-md-2 col-xs-2">${product.description}</div>
</div>
</div>


