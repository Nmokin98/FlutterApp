import 'package:flutter/material.dart'; 

void main () => runApp(MyApp()); //Создание виджета приложения и запуск класса MyApp

class MyApp extends StatelessWidget{ //Класс MyApp не принимающий данные 

  @override//Переопределение метода build 
  Widget build(BuildContext content){ //build принимает контекст
    return new MaterialApp( //возращает MaterialApp
      title: 'MyWords',
      theme: ThemeData( //Тема на уровне всего приложения 
        primarySwatch: Colors.orange //Основная палитрца цветов
        ),
        home: Scaffold( //Scaffold набор основныx виджетов
          appBar: new AppBar( //создание АппБара
            title: Text('MyWords'), //Заголовок виджет текст
          ),
          body: Container(
            child: MyBody (),

              ),
          ),
        );
      }
}

class MyBody extends StatefulWidget {
  @override
  createState() => new MyListWords ();
}

class MyListWords extends State<MyBody> 
{
  List <String> Words = ['Apple','Kiwi', 'Lemon', 'Waterlemon', 'Melon', 'Banana', 'Peach', 'Mandarin', 'Tomate', 'Potate', 'Cucumber', 'Orange'];
  
  @override
  Widget build (BuildContext context) {
    
    return ListView.separated( //Виджет возвращает ЛистВью c разделителем между элементами
      itemCount: Words.length, //Количествоо элементов равно длине массива
      separatorBuilder: (BuildContext context, int index) => Divider( color: Colors.red),
      itemBuilder: (context, i){ //??

      return new ListTile( title: new Text(Words[i], style: TextStyle(height: 2, fontSize: 40, color: Colors.blue))); //ЛистВЬю возвращает ListTile(Что это я хз), с виджетом текст


    }); 
  }
}
