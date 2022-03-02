import 'package:alura_cord_flutter/Widgets/widgets.dart';
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _textEditingController = TextEditingController();
  var username;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(image: NetworkImage("https://virtualbackgrounds.site/wp-content/uploads/2020/08/the-matrix-digital-rain.jpg"),fit: BoxFit.cover),
            backgroundBlendMode: BlendMode.multiply,
            color: Color(0xFF3F9142),
          ),
          padding:  const EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Flex(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            direction: Axis.vertical,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFF212931).withOpacity(0.97),
                  boxShadow: const [BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(2,10),
                  )],
                ),
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Boas Vindas de Volta!",
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 24,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    const Text("AluraCord - Matrix",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    circularAvatar(username),
                    const SizedBox(height: 8,),
                    usernameText(username),
                    const SizedBox(height: 8,),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: const Color(0xFF101418),
                      ),
                      child: TextField(
                        controller: _textEditingController,
                        onChanged: (username){
                          setState(() {
                            username = _textEditingController.text;
                            this.username = username;
                          });
                        },
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFFCBD2D9),
                        ),
                        decoration: const InputDecoration(
                          hintText: "Insira seu user",
                          hintStyle: TextStyle(
                              color: Color(0xFFCBD2D9)
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {

                        });
                      },
                      child: Container(
                        child: const Text("Entrar",style: TextStyle(color: Colors.white),),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(4))
                            ),
                            color: Color(0xFF3F9142)
                        ),
                      ),
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
