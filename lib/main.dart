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
  List <String> Words = ['Apple','Kiwi', 'Lemon', 'Waterlemon', 'Melon', 'Banana', 'peach', 'mandarin'];
  
  @override
  Widget build (BuildContext context) {
    
    return ListView.builder( //Виджет возвращает ЛистВью
      itemCount: Words.length, //Количествоо элементов равно длине массива
      itemBuilder: (context, i){ //??

    if(i.isOdd) return Divider(); // Если индекс нечётный, то риует границы виджета 

      //final int index = i~/2;

    //if (index >= Words.length) Words.addAll([]);

      return new ListTile(title: new Text(Words[i])); //ЛистВЬю возвращает ListTile(Что это я хз), с виджетом текст


    }); 
  }
}
