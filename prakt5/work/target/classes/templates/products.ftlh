<!DOCTYPE html>
<html>
<head>
    <title>Зоомагазин</title>
    <style>

    </style>
</head>
<body>
<h1 style="font-family: 'Marck Script', cursive; display: flex;align-items: center;justify-content: center;">Зоомагазин</h1>
<div style="
    display: flex;
    align-items: center;
    justify-content: center;
    border: 5px solid rgb(210, 144, 96);
    padding: 5px 5px 5px 50px;
    border-radius: 50px;
    background-color: rgb(250, 235, 215);">
<div style="flex: 1 1 auto; margin: 0 10%;">
<form action="/" method="get">
    Поиск товара по названию: <input type="text" name="title"><br>
    <input type="submit" value="Поиск"/>
</form>
<#list products as product>
    <div>
        ${product.title} ${product.price} | <a href="/product/${product.id}">Подробнее</a>
    </div>
</#list>
</div>
<div style="flex: 1 1 auto; margin: 0 10%;">
<h3>Добваить товар в магазин</h3>
<form action="/product/create" method="post">
    Название товара: <input type="text" name="title"/><br><br>
    Описание товара: <input type="text" name="description"/><br><br>
    Цена товара: <input type="text" name="price"/><br><br>
    Вес товара: <input type="text" name="weight"/><br><br>
    <input type="submit" value="Добавить товар в магазин"/>
</form>
</div>
</div>
</body>
</html>