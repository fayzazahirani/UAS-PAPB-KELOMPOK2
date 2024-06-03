import 'package:flutter/material.dart';
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UAS PAPB KELOMPOK 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}



// Layar utama/main aplikasi
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomAppBar(),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 16.0),
            pecelHeader(),
            SizedBox(height: 16.0),
            listmenu(),
            SizedBox(height: 16.0),
            menuPilihan()
          ],
        ),
      ),
    );
  }
}

// Pecel Header
class pecelHeader extends StatelessWidget {
  const pecelHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            promo(),
            promo(),
            promo(),
            promo(),
          ],
        ),
      ),
    );
  }
}

// Individual item card dari list makanan
class promo extends StatelessWidget {
  const promo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: Container(
          height: 200.0,
          width: 300.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/pecel1.jpg'), fit: BoxFit.cover)),
          child: Stack(
            children: <Widget>[
              Container(
                height: 200.0,
                width: 300.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black.withOpacity(0.1), Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Text(
                      'Promo 20%',
                      style: TextStyle(
                          color: Colors.yellow,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          letterSpacing: 1.1),
                    ),
                    Text(
                      'Untuk 10 Pembeli Pertama',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          letterSpacing: 1.1),
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}

// list menu
class listmenu extends StatelessWidget {
  const listmenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                height: 95.0,
                width: 125.0,
                color: Colors.lightGreen,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.bowlRice,
                      color: Colors.green[200],
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Menu Special',
                      style:
                          TextStyle(color: Colors.white, fontSize: 15.0),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 95.0,
              width: 125.0,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.utensils,
                    color: Colors.red[200],
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Menu Terlaris',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  )
                ],
              ),
            ),
            Container(
              height: 95.0,
              width: 125.0,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.mugHot,
                    color: Colors.blue[200],
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    'Minuman',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// List menu pilihan
class menuPilihan extends StatelessWidget {
  const menuPilihan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Menu Pilihan',
              style: TextStyle(fontSize: 20.0, color: Colors.black54),
            ),
            SizedBox(height: 16.0),
            daftarMenu(),
            daftarMenu(),
            daftarMenu()
          ],
        ),
      )
    );
  }
}

// Individual menu item
class daftarMenu extends StatelessWidget {
  const daftarMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 150.0,
            width: 150.0,
            child: Image.asset(
              'assets/images/pecel2.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12.0,
          ),
          Container(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 5.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 15.0,
                          ),
                          Text('4.5', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    'Pecel Sambel Tumpang',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                  ),
                  Container(
                      width: 200.0,
                      child: Text(
                        'Pecel, Sambel Tumpang, Telur Bali, Sate Usus, ...',
                        style: TextStyle(color: Colors.grey),
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Bottom Appbar 
class bottomAppBar extends StatelessWidget {
  const bottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 50.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Icon(FontAwesomeIcons.house),
                  Text('Home', style: TextStyle(fontSize: 12.0))
                ],
              ),
              Container(
                width: 100.0,
              ),
              Column(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.cartShopping,
                    color: Colors.black45,
                  ),
                  Text('Keranjang', style: TextStyle(fontSize: 12.0))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// polygon button
class floatingButton extends StatelessWidget {
  const floatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: FlutterClipPolygon(
        sides: 6,
        child: Container(
          color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(FontAwesomeIcons.book),
              SizedBox(
                height: 4.0,
              ),
              Text(
                'Menu',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}

