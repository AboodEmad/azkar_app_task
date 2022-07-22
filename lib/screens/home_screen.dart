import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'faqs_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;
  String _text = "استغفر الله";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'مسبحة الأذكار',
          style: GoogleFonts.arefRuqaa(),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        actions: [
          PopupMenuButton<String>(onSelected: (String value) {
            if (_text != value) {
              setState(() {
                _text = value;
                _counter = 0;
              });
            }
          }, itemBuilder: (context) {
            return [
              PopupMenuItem(
                value: 'أستغفر الله',
                height: 20,
                child: Text(
                  'أستغفر الله',
                  style: GoogleFonts.arefRuqaa(),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                value: 'الحمد لله',
                height: 20,
                child: Text(
                  'الحمد لله',
                  style: GoogleFonts.arefRuqaa(),
                ),
              ),
              PopupMenuDivider(),
              PopupMenuItem(
                value: 'سبحان الله',
                height: 20,
                child: Text(
                  'سبحان الله',
                  style: GoogleFonts.arefRuqaa(),
                ),
              )
            ];
          }),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/info_screen',
                arguments: <String, dynamic>{'message': 'Info Screen'},
              );
            },
            icon: Icon(Icons.info),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FaqsScreen(message: 'FAQs Screen'),
                ),
              );
              // Navigator.pushNamed(context, '/faqs_screen');
            },
            icon: Icon(Icons.question_answer),
          ),
        ],
      ),
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  end: AlignmentDirectional.bottomCenter,
                  begin: AlignmentDirectional.topCenter,
                  colors: [Color(0xffD6EFED), Color(0xffB7D3DF)])),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffB7D3DF),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://scontent.fgza9-1.fna.fbcdn.net/v/t1.6435-1/169447468_854271085162441_1915060243771193875_n.jpg?stp=dst-jpg_p240x240&_nc_cat=110&ccb=1-7&_nc_sid=7206a8&_nc_ohc=5eO6eQlwvP0AX_GrGop&_nc_ht=scontent.fgza9-1.fna&oh=00_AT9LS9vpjGCY4z9VaIvve3wPOJtXUO2HmcU66FpjtIKz6w&oe=6301B4E3"),
                    )),
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                height: 60,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffD9F8C4),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 0))
                    ]),
                child: Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(_text,
                          style: const TextStyle(
                            color: Colors.black,
                            fontFamily: "Gulzar",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      color: Colors.brown,
                      alignment: Alignment.center,
                      child: Text(_counter.toString()),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                          onPressed: () => setState(() => _counter += 1),
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xfffcf9e9),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadiusDirectional.only(
                                      topStart: Radius.circular(10)))),
                          child: Text(
                            "تسبيح",
                            style: GoogleFonts.arefRuqaa(
                                color: Colors.black, fontSize: 15),
                          )),
                    ),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                          onPressed: () => setState(() => _counter = 0),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadiusDirectional.only(
                                      bottomEnd: Radius.circular(10)))),
                          child: Text(
                            "اعادة",
                            style: GoogleFonts.arefRuqaa(
                                color: Colors.black, fontSize: 15),
                          )),
                    ),
                  ],
                ),
              )
            ],
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() => _counter += 1);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
