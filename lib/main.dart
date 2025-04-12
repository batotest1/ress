import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controller = TextEditingController();
  String enteredValue = '';
  String _age = ""; // Kiritilgan yosh
  String errorText = '';
  List image = [
    "rm/1.jpg",
    "rm/2.jpg",
    "rm/3.jpg",
    "rm/4.jpg",
    "rm/5.jpg",
    "rm/6.jpg",
    "rm/7.jpg",
    "rm/8.jpg",
    "rm/9.jpg",
    "rm/10.jpg",
    "rm/11.jpg",
    "rm/12.jpg",
    "rm/13.jpg",
    "rm/14.jpg",
    "rm/15.jpg",
    "rm/16.jpg",
    "rm/17.jpg",
    "rm/18.jpg",
    "rm/19.jpg",
    "rm/20.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => keyingisahifa()),
              );
            },
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("rasm/pul.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        title: Center(
          child: ShaderMask(
            shaderCallback:
                (bounds) => LinearGradient(
                  colors: [Colors.blue, Colors.green],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                ),
            child: Text(
              'Flutter',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white, // kerak, ShaderMaskga ta’sir qiladi
              ),
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: StatefulBuilder(
                      builder: (context, setState) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              controller: _controller,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(2),
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              decoration: InputDecoration(
                                labelText: 'enter your age',
                                border: OutlineInputBorder(),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  enteredValue =
                                      value; // Kiritilgan qiymatni saqlash
                                });
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '${enteredValue.length}/2',
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (_controller.text.isEmpty) {
                                // Xatolik — hech nima kiritilmagan
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      '❌ Iltimos, yoshingizni kiriting!',
                                    ),
                                    backgroundColor: Colors.red,
                                    duration: Duration(seconds: 2),
                                  ),
                                );
                              } else {
                                setState(() {
                                  _age = _controller.text;
                                });

                                Navigator.of(context).pop(); // Dialogni yopish

                                // Dialog yopilgandan keyin SnackBar ko‘rsatish uchun postFrame ishlatamiz
                                WidgetsBinding.instance.addPostFrameCallback((
                                  _,
                                ) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        '✅ Ma\'lumot saqlandi: $_age',
                                      ),
                                      backgroundColor: Colors.green,
                                      duration: Duration(seconds: 2),
                                    ),
                                  );
                                });
                              }
                            },
                            child: Text('OK'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('back'),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              );
            },
            child: Lottie.asset("lotte/button.json"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    SizedBox(height: 70),
                    Text(
                      "HIS AGE",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 72,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "$_age",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(height: 15),
                                  Text(
                                    "/100",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "OVERALL",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 100,
                      height: 50,
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.red,
                            child: Center(
                              child: Icon(
                                Icons.heart_broken,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "34",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(height: 2),
                                      Text(
                                        "/100",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                "Energy",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 100,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("rasm/gg.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "24",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(height: 2),
                                      Text(
                                        "/100",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                "Smart",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 100,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("rasm/c.png"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "34",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(height: 2),
                                      Text(
                                        "/100",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                "Speed",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 90),
                    Align(
                      alignment: Alignment.topLeft, // yuqoriga joylashtiradi
                      child: Container(
                        width: 200,
                        height: 370,
                        child: Stack(
                          children: [
                            SizedBox(height: 20),
                            Positioned(
                              bottom: 0,
                              child: Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.rotationX(2),
                                child: Lottie.asset(
                                  "lotte/circul1.json",
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Container(
                                width: 200,
                                height: 275,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("rasm/o'zim2.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text("Old memory"),
            Expanded(
              child: Container(
                width: double.infinity,
                child: CarouselSlider(
                  items:
                      image.map((item) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                              image: AssetImage(item),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      }).toList(),
                  options: CarouselOptions(
                    initialPage: 0,
                    viewportFraction: 0.8,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(seconds: 2),
                    autoPlayCurve: Curves.easeInOut,
                    enlargeCenterPage: true,
                    scrollPhysics: BouncingScrollPhysics(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class keyingisahifa extends StatefulWidget {
  const keyingisahifa({super.key});

  @override
  State<keyingisahifa> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<keyingisahifa> {
  String natija = "";
  List nomlist = [];
  void data() async {
    final respons = await http.get(
      Uri.parse("https://cbu.uz/uz/arkhiv-kursov-valyut/json/"),
    );
    if (respons.statusCode == 200) {
      List jsondata = json.decode(respons.body);
      for (var item in jsondata) {
        nomlist.add(Map.from(item));
      }
      setState(() {});
    }
  }

  void nooooooooo() {
    setState(() {
      DateTime time = DateTime.now();
      natija = DateFormat("MM-dd-yy").format(time);
    });

    // Call the function again after 1 day
    Future.delayed(Duration(days: 1), nooooooooo);
  }

  @override
  void initState() {
    super.initState();
    nooooooooo();
    data();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        actions: [
          Text(natija, style: TextStyle(color: Colors.white, fontSize: 25)),
        ],
        title: Text(
          "Valyuta kurslari",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: nomlist.length,
          itemBuilder:
              (context, index) => Container(
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("updated day"),
                      Text("${natija}"),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("1${nomlist[index]["Ccy"]}"),
                            SizedBox(width: 50,),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("${nomlist[index]["CcyNm_UZ"]}",style: TextStyle(color: Colors.blue),),
                                    Text("(${nomlist[index]["Code"]})",style: TextStyle(color: Colors.blue),),
                                  ],
                                ),
                                Text("${nomlist[index]["Rate"]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
                              ],
                            ),
                            SizedBox(width: 50,),
                            Text("${nomlist[index]["Diff"]}")
                          ],
                        ),
                      )
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
              ),
        ),
      ),
    );
  }
}
