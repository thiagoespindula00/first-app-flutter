import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarefas/components/task.dart';


class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacity = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: (opacity == true ? 1 : 0),
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task("Aprender flutter"     , "assets/images/Eu7m692XIAEvxxP.png", 3),
            Task("Xingar pessoas"       ,"assets/images/1-xingar.webp", 2),
            Task("Bater em idosos"      , "assets/images/violencia-contra-idosos-como-denunciar-1-450x300.jpg", 5),
            Task("Esfaquear o Bolsonaro", "assets/images/4d99946be7d7579fec028f9602437542-1024x685.jpg", 1),
            Task("Chutar um mendigo"    , "assets/images/tvg_20160730-rv-vade-retro-19.jpg", 2),
            Task("Jogar canudo no mar"  , "assets/images/sub-2.jpg", 5),
            Task("Vish maria"    , "assets/images/gays-flagra.jpg", 4),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacity = !opacity;
          });
        },
        child: const Icon(Icons.hide_image),
      ),
    );
  }
}