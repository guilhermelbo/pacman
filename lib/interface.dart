import 'package:bonfire/bonfire.dart';
import 'package:pacman/score_interface.dart';

class MyInterface extends GameInterface{
  @override
  void onMount() {
    add(ScoreInterface());
    super.onMount();
  }
}