import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/', (route) => true);
          },
        ),
        title: Text('История'),
        backgroundColor: Colors.blueGrey[600],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(120, 15, 125, 15),
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text(
              '01-11-2021        10:44',
              style: TextStyle(color: Colors.blueGrey),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 15, 45, 15),
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text(
              ' Номер покупки                                                 10918',
              style: TextStyle(color: Colors.blueGrey),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 15, 10, 15),
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text(
              ' Местоположение                                              #8 мкр. 25',
              style: TextStyle(color: Colors.blueGrey),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 15, 37, 15),
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            decoration: BoxDecoration(
              color: Colors.blueGrey[600],
            ),
            child: Text(
              ' Итоговая сумма                                                4 200Т',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 15, 37, 50),
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Container(
                  height: 220.0,
                  width: 120.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/001397083.jpeg'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 15, 1, 15),
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[100],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          '  Название                   Лимонад 7F 0.5',
                          style: TextStyle(
                            color: Colors.blue[600],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 15, 1, 15),
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[100],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          '  Количество                                21 шт.',
                          style: TextStyle(
                            color: Colors.blue[600],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 15, 1, 15),
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[100],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          '  Цена                                            200 Т',
                          style: TextStyle(
                            color: Colors.blue[600],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 15, 1, 15),
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[100],
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Text(
                          '  Сумма                                      4 200 Т',
                          style: TextStyle(
                            color: Colors.blue[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
