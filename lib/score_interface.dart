import 'package:bonfire/bonfire.dart';
import 'package:flutter/widgets.dart';
import 'package:pacman/controller.dart';

class ScoreInterface extends TextInterfaceComponent{
  ScoreInterface() : super(
    id: 1,
    position: Vector2(10,50)
  );

  @override
  void render(Canvas canvas){
    super.render(canvas);
    String text = Controller.score.toString();
    if(Controller.winner){
      text = '$text   PARABÉNS VOCÊ VENCEU!!!!';
      Future.delayed(
        const Duration(seconds: 1), 
        (){
          gameRef.pauseEngine();
        }
      );
    }
    if(gameRef.player!.isDead){
      text = '$text    VOCÊ MORREU!!';
      Future.delayed(
        const Duration(seconds: 1), 
        (){
          gameRef.pauseEngine();
        }
      );
    }
    textConfig.render(
      canvas,
      text,
      Vector2(x, y),
    );
  }
}