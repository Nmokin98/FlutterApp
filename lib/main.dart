import 'package:flutter/material.dart'; //Подключение базового набора виджетов

void main() => //Запуск основной функции приложения main()
    runApp(MyApp()); //Создание виджета приложения и запуск класса MyApp

class MyApp extends StatelessWidget { //Класс MyApp не принимающий данные, констаантный виджет

  @override //С помощью этой аннотации мы говорим, что переопределенный метод из родительского класса мы использовать
  // не будем?
  Widget build(BuildContext content) { //build принимает контекст
    return new MaterialApp(  //возращает MaterialApp
      title: 'MyWords',
      theme: ThemeData( //Тема на уровне всего приложения
          primarySwatch: Colors.orange //Основная палитрца цветов
          ),
      home: Scaffold( //Scaffold набор основныx виджетов
        appBar: new AppBar( //создание АппБара(В верху)
          title: Text('MyWords'), //Заголовок виджет текст
        ),
        body: Container( //Создание контейнера
          child: MyBody(), //Дочерний элемент контейнера, class MyBody
        ),
      ),
    );
  }
}

class MyBody extends StatefulWidget { //Вот эти строки я не понимаю зачем и почему
  @override
  createState() => new MyListWords();
}

class MyListWords extends State<MyBody> {
  List<String> Words = [ 
    'Apple',
    'Kiwi',
    'Lemon',
    'Waterlemon',
    'Melon',
    'Banana',
    'Peach',
    'Mandarin',
    'Tomate',
    'Potate',
    'Cucumber',
    'Orange'
  ]; //Массив, список из моих слов

  @override
  Widget build(BuildContext context) {
    return ListView.separated( //Виджет возвращает ListView - бесконечный список, c разделителем между элементами
        itemCount: Words.length, //Количествоо элементов равно длине массива
        separatorBuilder: (BuildContext context, int index) => Divider(color: Colors.red), //??
        itemBuilder: (context, i) { //??

          return new ListTile( // Не совсем понятно, что именно представляет ListTile. Плитка?
              title: new Text(Words[i], //Вывод элементов массива
                  style: TextStyle( //Стиль текста
                      height: 2, //Высота текста
                      fontSize: 40, //Размер текста
                      color: Colors.blue))); 
        });
  }
}
