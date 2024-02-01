import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Weather Forecast'),
            centerTitle: true,
            backgroundColor: Colors.blue.shade900,
            titleTextStyle:
                const TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
          ),
          body: _weatherForecast(),
          backgroundColor:
              const Color.fromARGB(255, 192, 218, 245) //Colors.blue.shade200,
          ),
    );
  }
}

Widget _weatherForecast() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 10),
                _textField(),
                _textLocation(),
                _temperature(),
                _weatherDetails(),
                _weatherList(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _textField() {
  return TextField(
    decoration: InputDecoration(
      labelText: 'Enter City Name',
      labelStyle:
          const TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.w500),
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
        borderSide: BorderSide.none,
      ),
      prefixIcon: Icon(
        Icons.search,
        color: Colors.blue.shade600,
        size: 35,
      ),
    ),
  );
}

Widget _textLocation() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      const SizedBox(height: 25),
      const Text(
        "Pushkin 154, Taraz",
        style: TextStyle(
          fontSize: 40.0,
          fontWeight: FontWeight.w500,
          color: Color.fromARGB(220, 12, 37, 60),
        ),
      ),
      const SizedBox(height: 15),
      Text(
        'Wednesday, Dec 20, 2023',
        style: TextStyle(
            color: Colors.blue.shade900,
            fontSize: 25.0,
            fontWeight: FontWeight.w400),
      )
    ],
  );
}

Row _temperature() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      SizedBox(
        height: 200,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Color.fromARGB(229, 253, 253, 158),
            size: 100,
          ),
        ],
      ),
      SizedBox(width: 16.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '14˚F',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 80,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 20.0)),
              Text(
                'LIGHT SNOW',
                style: TextStyle(color: Colors.black54, fontSize: 25),
              ),
            ],
          )
        ],
      ),
    ],
  );
}

Widget _weatherDetails() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            size: 50,
            color: Colors.blue.shade800,
          ),
          const Text('5', style: TextStyle(fontSize: 30, color: Colors.white)),
          Text('km/hr',
              style: TextStyle(fontSize: 20, color: Colors.blue.shade800)),
        ],
      ),
      const SizedBox(width: 70),
      Column(
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            size: 50,
            color: Colors.blue.shade800,
          ),
          const Text('3', style: TextStyle(fontSize: 30, color: Colors.white)),
          Text('%',
              style: TextStyle(fontSize: 20, color: Colors.blue.shade800)),
        ],
      ),
      const SizedBox(width: 70),
      Column(
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            size: 50,
            color: Colors.blue.shade800,
          ),
          const Text('20', style: TextStyle(fontSize: 30, color: Colors.white)),
          Text('%',
              style: TextStyle(fontSize: 20, color: Colors.blue.shade800)),
        ],
      ),
    ],
  );
}

Widget _weatherList() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: <Widget>[
        const SizedBox(height: 180),
        _listItem('Friday', '6˚F', Icons.wb_sunny, Colors.yellow),
        _listItem('Saturday', '5˚F', Icons.wb_cloudy, Colors.grey),
        _listItem('Sunday', '-1˚F', Icons.wb_cloudy, Colors.grey),
        _listItem('Monday', '0˚F', Icons.ac_unit, Colors.blue),
        _listItem('Tuesday', '-6˚F', Icons.ac_unit, Colors.blue),
        _listItem('Wednesday', '-30˚F', Icons.ac_unit, Colors.blue),
        _listItem('Thursday', '-33˚F', Icons.wb_cloudy, Colors.grey),
        // Add more items as needed
      ],
    ),
  );
}

Widget _listItem(
    String title, String subtitle, IconData icon, MaterialColor col) {
  return Container(
    width: 200,
    height: 140,
    margin: const EdgeInsets.all(5.0),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(title, style: const TextStyle(fontSize: 35)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                subtitle,
                style: const TextStyle(
                    fontSize: 30, color: Color.fromARGB(255, 92, 140, 163)),
              ),
              const SizedBox(width: 15),
              Icon(icon, size: 50, color: col),
            ],
          ),
        ],
      ),
    ),
  );
}
