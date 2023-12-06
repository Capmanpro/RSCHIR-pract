<!DOCTYPE html>
<html>
<head>
    <title>Зоомагазин</title>
    <style>

    </style>
</head>
<body>
<h1 style="font-family: 'Marck Script', cursive; display: flex;align-items: center;justify-content: center;">
    Зоомагазин</h1>
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
            <div style="display: flex; flex-direction: row">
                id: ${product.id}    название: ${product.title}   описание: ${product.description} цена: ${product.price}руб. вес: ${product.weight}кг наличие: ${product.being}шт | <a href="/product/${product.id}">Подробнее</a> |
                <form class="formButton"
                      action="/basket/add?productName=${product.title}&productDescription=${product.description}&productPrice=${product.price}&productWeight=${product.weight}&productBeing=${product.being}"
                      method="post">
                    <button class="btnAdd" type="submit">Добавить в корзину</button>
                </form>
            </div>
        </#list>
    </div>
    <div style="flex: 1 1 auto; margin: 0 10%;">
        <h3>Добавить товар в магазин</h3>
        <form action="/product/create" method="post">
            Название товара: <input type="text" name="title"/><br><br>
            Описание товара: <input type="text" name="description"/><br><br>
            Цена товара: <input type="text" name="price"/><br><br>
            Вес товара: <input type="text" name="weight"/><br><br>
            Наличие: <input type="text" name="being"/><br><br>
            <input type="submit" value="Добавить товар в магазин"/>
            <button class="btnAdd" type="submit"><a class="basket" href="/basket">Корзина</a></button>
        </form>
        <h3>Обновить данные о товаре</h3>
        <form action="/product/update" method="post">
            ID: <input type="text" name="id"/><br><br>
            Название товара: <input type="text" name="title"/><br><br>
            Описание товара: <input type="text" name="description"/><br><br>
            Цена товара: <input type="text" name="price"/><br><br>
            Вес товара: <input type="text" name="weight"/><br><br>
            Наличие: <input type="text" name="being"/><br><br>
            <input class="btn" type="submit" value="Обновить"/>
        </form>
    </div>
</div>
</body>
</html>