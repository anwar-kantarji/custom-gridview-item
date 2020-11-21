import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallpapers Gallery',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int rowCount = MediaQuery.of(context).size.width < 650 ? 2 : 3;

    double width = MediaQuery.of(context).size.width < 1000
        ? MediaQuery.of(context).size.width
        : 1000;
    double size = width / rowCount;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        title: Text('Wallpapers'),
        centerTitle: true,
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          width: width,
          child: GridView.count(
            crossAxisCount: rowCount,
            children: [
              GridItem(size: size, title: 'SKYSCRAPER', imgs: skyscraper),
              GridItem(size: size, title: 'CARS', imgs: cars),
              GridItem(size: size, title: 'ANIMALS', imgs: animals),
              GridItem(size: size, title: 'FLOWERS', imgs: flowers),
              GridItem(size: size, title: 'SKYSCRAPER', imgs: skyscraper),
              GridItem(size: size, title: 'CARS', imgs: cars),
              GridItem(size: size, title: 'ANIMALS', imgs: animals),
              GridItem(size: size, title: 'FLOWERS', imgs: flowers),
              GridItem(size: size, title: 'SKYSCRAPER', imgs: skyscraper),
              GridItem(size: size, title: 'CARS', imgs: cars),
              GridItem(size: size, title: 'ANIMALS', imgs: animals),
              GridItem(size: size, title: 'FLOWERS', imgs: flowers),
            ],
          ),
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  GridItem({this.size, this.title, this.imgs});

  final double size;
  final String title;
  final List<String> imgs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            width: size * 0.4,
            height: size * 0.6,
            child: Card(
              margin: EdgeInsets.all(2),
              child: Image.network(
                imgs[0],
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(size * 0.1),
                  bottomRight: Radius.circular(size * 0.01),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: size * 0.4),
            width: size * 0.6,
            height: size * 0.4,
            child: Card(
              margin: EdgeInsets.all(2),
              child: Image.network(
                imgs[1],
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(size * 0.1),
                  bottomLeft: Radius.circular(size * 0.01),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: size * 0.4, top: size * 0.4),
            width: size * 0.2,
            height: size * 0.2,
            child: InkWell(
              onTap: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text('You pressed on $title',
                      textAlign: TextAlign.center),
                  duration: Duration(seconds: 3),
                ));
              },
              child: Card(
                margin: EdgeInsets.all(2),
                child: Center(
                    child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            title,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ))),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(size * 0.02),
                ),
                color: Colors.red.shade900,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size * 0.6),
            width: size * 0.6,
            height: size * 0.4,
            child: Card(
              margin: EdgeInsets.all(2),
              child: Image.network(
                imgs[2],
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(size * 0.1),
                  topRight: Radius.circular(size * 0.01),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: size * 0.6, top: size * 0.4),
            width: size * 0.4,
            height: size * 0.6,
            child: Card(
              margin: EdgeInsets.all(2),
              child: Image.network(
                imgs[3],
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(size * 0.1),
                  topLeft: Radius.circular(size * 0.01),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

const List<String> skyscraper = [
  'https://static01.nyt.com/images/2020/04/22/arts/22kimmelman-skyscrapers1/22kimmelman-skyscrapers1-videoSixteenByNineJumbo1600.jpg',
  'https://www.thoughtco.com/thmb/dN6LJhJw45TmsMo8IdSBw7kxrPE=/2531x2531/smart/filters:no_upscale()/skyscrapers-dubai-488734758-crop-59ee7c490d327a0010f410b6.jpg',
  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/aerial-view-of-shanghai-lujiazui-financial-district-royalty-free-image-928266082-1557158532.jpg',
  'https://www.thermofisher.com/blog/metals/wp-content/uploads/sites/4/2016/07/istock_67861053_skyscraper-2.jpg'
];

const List<String> cars = [
  'https://car-images.bauersecure.com/pagefiles/87505/electric_car_17.jpg',
  'https://www.focus2move.com/wp-content/uploads/2020/06/McLaren-GT-2020-800-82.jpg',
  'https://media.peugeot.de/image/80/3/peugeot-concept-car-e-legend-aussendesign-peugeot-504-coupe.469803.32.jpg?autocrop=1',
  'https://images.netdirector.co.uk/gforces-auto/image/upload/w_422,h_317,dpr_2.0,q_auto:best,c_fill,f_auto,fl_lossy/auto-client/44d663731327a4eac500892ed694de1b/p90385814_highres.jpg'
];

const List<String> animals = [
  'https://www.peta.org/wp-content/uploads/2018/05/tiger.jpg',
  'https://www.trafalgar.com/real-word/wp-content/uploads/sites/3/2019/10/giant-panda-750x400.jpg',
  'https://kids.nationalgeographic.com/content/dam/kids/photos/animals/Mammals/A-G/cheetah-mom-cubs.adapt.470.1.jpg',
  'https://images.ctfassets.net/9l3tjzgyn9gr/photo-165355/a4fcf6dc9e5cae625db0d9da9d6066a8/165355-single-male-elephant-in-the-masai-mara.jpg?fm=jpg&fl=progressive&q=50&w=1200'
];

const List<String> flowers = [
  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/yellow-flowers-1587061884.jpg',
  'https://www.interflora.co.uk/blog/blgcnt/uploads/sites/2/2019/12/Classic-Blue-Pantone-Colour-of-the-Year-in-flowers.jpg',
  'https://media.cntraveler.com/photos/554a497929d479ab28bfb03b/master/pass/spring_flowers_2015_longwood_cr_Longwood%20Gardens%20L%20Albee.jpg',
  'https://cdn1.pegasaas.io/2a84/img/wordpress/wp-content/uploads/2020/02/IMG_0636-774x774---774x774.jpg'
];
