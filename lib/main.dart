import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ob(),
  ));
}

class ob extends StatefulWidget {
  const ob({super.key});

  @override
  State<ob> createState() => _obState();
}

class _obState extends State<ob> {
  int tanla = 1;

  void funksiya(intq) {
    setState(() {
      tanla = intq;
    });
  }

  List<Widget> nom = [
    h(),
    ik(),
    d(),
    f(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            funksiya(value);
          },
          currentIndex: tanla,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                backgroundColor: Colors.blue,
                icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.pause_presentation_rounded,
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                backgroundColor: Colors.blue,
                icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.add,
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                backgroundColor: Colors.blue,
                icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.book_outlined,
                  ),
                ),
                label: ""),
            BottomNavigationBarItem(
                backgroundColor: Colors.blue,
                icon: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.settings,
                  ),
                ),
                label: ""),
          ]),
      body: Center(
        child: nom.elementAt(tanla),
      ),
    );
  }
}

class h extends StatefulWidget {
  const h({super.key});

  @override
  State<h> createState() => _hState();
}

class _hState extends State<h> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.music_note),
              ),
              Tab(
                icon: Icon(Icons.book_outlined),
              ),
            ]),
          ),
          body: TabBarView(children: [tab(), tob()]),
        ));
  }
}

class ik extends StatefulWidget {
  const ik({super.key});

  @override
  State<ik> createState() => _ikState();
}

class _ikState extends State<ik> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$_counter',
            style: TextStyle(fontSize: 50),
          ),
          SizedBox(height: 10,),
          FloatingActionButton(
            onPressed: _incrementCounter,
            child: Icon(Icons.add),
          ),
        ],
      )),
    );
  }
}

class d extends StatefulWidget {
  const d({super.key});

  @override
  State<d> createState() => _dState();
}

class _dState extends State<d> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class f extends StatefulWidget {
  const f({super.key});

  @override
  State<f> createState() => _fState();
}

class _fState extends State<f> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("rasim/1.jpg"), fit: BoxFit.cover)),
      ),
    );
  }
}

class tab extends StatefulWidget {
  const tab({super.key});

  @override
  State<tab> createState() => _tabState();
}

class _tabState extends State<tab> {
  List<o> a = [
    o(nomi: "Alhazar"),
    o(nomi: "dhddbusavbadvbhvbh"),
    o(nomi: "aeellavhvbdsbhvdsa"),
    o(nomi: "dbdasvvshasvdasvbhi"),
    o(nomi: "ohmygod gvuchdvhbvv"),
    o(nomi: "yommayo bla-bla-bla"),
    o(nomi: "yosingil cdsvxbhhdc"),
    o(nomi: "yoaltag'firullah"),
    o(nomi: "ostag firullla"),
    o(nomi: "ohhhhhhmygoooootnis"),
    o(nomi: "ooommmmaaaaayyyooooo"),
    o(nomi: "osiparabida"),
    o(nomi: "oooo-oooo"),
    o(nomi: "aaaaaaaaaa"),
    o(nomi: "olaaaaaaa"),
    o(nomi: "uxlaagiinshundaulasanbola"),
    o(nomi: "ukaaaaaam"),
    o(nomi: "oookkkkkaaaam"),
    o(nomi: "ug'g'limmm"),
    o(nomi: "opammmmmni"),
    o(nomi: "okamnimii"),
    o(nomi: "aaakkkaaaaajonimimi"),
  ];

  Widget hahahayangidastu(o ass) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => olaaalaa(ulaaa: ass),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          width: double.infinity,
          height: 70,
          color: Colors.black87,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  ass.nomi!,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("rasim/1.jpg"), fit: BoxFit.cover)),
        child: ListView(
          children: a.map((hohoho) => hahahayangidastu(hohoho)).toList(),
        ),
      ),
    );
  }
}

class o {
  String? nomi;
  o({this.nomi});
}

class nomlar {
  String? kerek;
  nomlar({this.kerek});
}

class tob extends StatefulWidget {
  const tob({super.key});

  @override
  State<tob> createState() => _tobState();
}

class _tobState extends State<tob> {
  List<nomlar> h = [
    nomlar(kerek: "Alhazar"),
    nomlar(kerek: "dhddbusavbadvbhvbh"),
    nomlar(kerek: "aeellavhvbdsbhvdsa"),
    nomlar(kerek: "dbdasvvshasvdasvbhi"),
    nomlar(kerek: "ohmygod gvuchdvhbvv"),
    nomlar(kerek: "yommayo bla-bla-bla"),
    nomlar(kerek: "yosingil cdsvxbhhdc"),
    nomlar(kerek: "yoaltag'firullah"),
    nomlar(kerek: "ostag firullla"),
    nomlar(kerek: "ohhhhhhmygoooootnis"),
    nomlar(kerek: "ooommmmaaaaayyyooooo"),
    nomlar(kerek: "osiparabida"),
    nomlar(kerek: "oooo-oooo"),
    nomlar(kerek: "aaaaaaaaaa"),
    nomlar(kerek: "olaaaaaaa"),
    nomlar(kerek: "uxlaagiinshundaulasanbola"),
    nomlar(kerek: "ukaaaaaam"),
    nomlar(kerek: "oookkkkkaaaam"),
    nomlar(kerek: "ug'g'limmm"),
    nomlar(kerek: "opammmmmni"),
    nomlar(kerek: "okamnimii"),
    nomlar(kerek: "aaakkkaaaaajonimimi"),
  ];

  Widget inga(nomlar hggg) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => axmo(uuaa: hggg),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          width: double.infinity,
          height: 70,
          color: Colors.black87,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  hggg.kerek!,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("rasim/1.jpg"), fit: BoxFit.cover)),
        child: ListView(
          children: h.map((eee) => inga(eee)).toList(),
        ),
      ),
    );
  }
}

class axmo extends StatefulWidget {
  final nomlar uuaa;
  const axmo({super.key, required this.uuaa});

  @override
  State<axmo> createState() => _axmoState();
}

class _axmoState extends State<axmo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              widget.uuaa.kerek!,
              style: TextStyle(color: Colors.white),
            ),
          )),
      body: Column(
        children: [Text("")],
      ),
    );
  }
}

class olaaalaa extends StatefulWidget {
  final o ulaaa;
  const olaaalaa({super.key, required this.ulaaa});

  @override
  State<olaaalaa> createState() => _olaaalaaState();
}

class _olaaalaaState extends State<olaaalaa> {
  bool olma = true;

  void funksiya() {
    setState(() {
      olma = !olma;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.ulaaa.nomi!),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("rasim/1.jpg"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(150.0),
              child: IconButton(
                onPressed: () {
                  funksiya();
                },
                icon: Icon(
                  olma ? Icons.stop_rounded : Icons.stop_circle,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.skip_previous,
                    color: Colors.white,
                  ),
                  IconButton(
                      onPressed: () {
                        funksiya();
                      },
                      icon: Icon(
                        olma ? Icons.stop_rounded : Icons.stop_circle,
                        color: Colors.white,
                        size: 25,
                      )),
                  Icon(
                    Icons.skip_next_sharp,
                    color: Colors.white,
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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoList(),
    );
  }
}

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final List<String> _todos = [];
  final TextEditingController _controller = TextEditingController();

  void _addTodo() {
    setState(() {
      if (_controller.text.isNotEmpty) {
        _todos.add(_controller.text);
        _controller.clear();
      }
    });
  }

  void _removeTodo(int index) {
    setState(() {
      _todos.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter Todo',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: _addTodo,
            child: Text('Add Todo'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_todos[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => _removeTodo(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
