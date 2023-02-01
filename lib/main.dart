import 'package:flutter/material.dart';
import 'package:percobaan_lintang_002/components/detail.dart';
import 'package:percobaan_lintang_002/components/travelcard.dart';
import 'package:percobaan_lintang_002/screen/login_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HalamanHome(),
  ));
}

class HalamanHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Go Travel"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Temukan aktivitas seru di dekat anda dengan XPerience. Travel jadi lebih mudah dengan beli Tiket Online. Ayo bergabung sekarang!',
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            height: 300,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.white,
              width: 5,
            )),
            child: Image.asset(
              'assets/images/applogo.png',
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: MaterialButton(
                  color: Color.fromARGB(255, 189, 190, 172),
                  child: Text("Masuk"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                ),
              ),
              MaterialButton(
                color: Color.fromARGB(255, 189, 190, 172),
                child: Text("Daftar"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
            ],
          ),
          MaterialButton(
            child: Text("Lewati Untuk Saat Ini"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HalamanPertama()),
              );
            },
          ),
        ],
      ),
    );
  }
}
class Login extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
class HalamanPertama extends StatefulWidget {
  @override
  _TravelAppState createState() => _TravelAppState();
}

class _TravelAppState extends State<HalamanPertama> {
  //here i'm going to add a list of image url that I collected from the internet
  //you can use the image that you want, just copy and paste their Urls here inside the list
  List<String> urls = [
    "https://resofrance.eu/wp-content/uploads/2018/09/hotel-luxe-mandarin-oriental-paris.jpg",
    "https://lh3.googleusercontent.com/proxy/wTkD1USQGpbVXzZFNLCZBDCL1OQS1bFzSgPa44cHwiheaY9DpoqMdNjBgEJcCIZSQeSkCO-2q5gfuhtnuz4cDhtpansOcWos093YsGvogdQqWnpWlA",
    "https://images.squarespace-cdn.com/content/v1/57d5245815d5db80eadeef3b/1558864684068-1CX3SZ0SFYZA1DFJSCYD/ke17ZwdGBToddI8pDm48kIpXjvpiLxnd0TWe793Q1fcUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcZwk0euuUA52dtKj-h3u7rSTnusqQy-ueHttlzqk_avnQ5Fuy2HU38XIezBtUAeHK/Marataba+Safari+lodge",
    "https://lh3.googleusercontent.com/proxy/ovCSxeucYYoir_rZdSYq8FfCHPeot49lbYqlk7nXs7sXjqAfbZ2uw_1E9iivLT85LwIZiGSnXuqkdbQ_xKFhd91M7Y05G94d",
    "https://q-xx.bstatic.com/xdata/images/hotel/max500/216968639.jpg?k=a65c7ca7141416ffec244cbc1175bf3bae188d1b4919d5fb294fab5ec8ee2fd2&o=",
    "https://hubinstitute.com/sites/default/files/styles/1200x500_crop/public/2018-06/photo-1439130490301-25e322d88054.jpeg?h=f720410d&itok=HI5-oD_g",
    "https://cdn.contexttravel.com/image/upload/c_fill,q_60,w_2600/v1549318570/production/city/hero_image_2_1549318566.jpg",
    "https://www.shieldsgazette.com/images-i.jpimedia.uk/imagefetch/https://jpgreatcontent.co.uk/wp-content/uploads/2020/04/spain.jpg",
    "https://www.telegraph.co.uk/content/dam/Travel/2017/November/tunisia-sidi-bou-GettyImages-575664325.jpg",
    "https://lp-cms-production.imgix.net/features/2018/06/byrsa-hill-carthage-tunis-tunisia-2d96efe7b9bf.jpg"
  ];
  //sometime we can face some http request erreur if the owner of the picture delted it or the url is not available
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF6F7FF),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Let's start by adding the text
            SizedBox(
              height: 20.0,
            ),
            //Now let's add some elevation to our text field
            //to do this we need to wrap it in a Material widget
            Material(
              elevation: 10.0,
              borderRadius: BorderRadius.circular(30.0),
              shadowColor: Color(0x55434343),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  hintText: "Search for Hotel, Flight...",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 30.0),

            Container(
              padding: EdgeInsets.only(),
              height: 200,
              width: 600,
              alignment: Alignment.topCenter,
              child: Text(
                'jadilah member dan nikmati keuntungannya!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 59, 59, 59),
                ),
              ),
            ),
            //Now let's Add a Tabulation bar
            DefaultTabController(
              length: 3,
              child: Expanded(
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Color(0xFFFE8C68),
                      unselectedLabelColor: Color(0xFF555555),
                      labelColor: Color(0xFFFE8C68),
                      labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      tabs: [
                        Tab(
                          text: "Trending",
                        ),
                        Tab(
                          text: "Promotion",
                        ),
                        Tab(
                          text: "Favorites",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 300.0,
                      child: TabBarView(
                        children: [
                          //Now let's create our first tab page
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                //Now let's add and test our first card
                                travelCard(
                                    urls[0], "Luxary Hotel", "Jakarta", 3),
                                  
            Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: MaterialButton(
                  color: Color.fromARGB(255, 189, 190, 172),
                  child: Text("Selengkapnya"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HotelDetailsPage()),
                    );
                  },
                ),
              ),
            ],
          ),
                                travelCard(urls[5], "Plaza Hotel", "Malang", 4),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: MaterialButton(
                  color: Color.fromARGB(255, 189, 190, 172),
                  child: Text("Selengkapnya"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HotelDetailsPage()),
                    );
                  },
                ),
              ),
            ],
          ),                      
                                travelCard(urls[2], "Safari Hotel", "Medan", 5),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: MaterialButton(
                  color: Color.fromARGB(255, 189, 190, 172),
                  child: Text("Selengkapnya"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HotelDetailsPage()),
                    );
                  },
                ),
              ),
            ],
          ),                      
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                //Here you can add what ever you want
                                travelCard(urls[6], "Visit Rome", "Italy", 4),
                                travelCard(urls[8], "Visit Sidi bou Said",
                                    "Tunsia", 4),
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color(0xFFB7B7B7),
        selectedItemColor: Color(0xFFFE8C68),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'BookMark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Destination',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
        ],
      ),
    );
  }
}
