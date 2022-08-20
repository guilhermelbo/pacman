import 'package:bonfire/bonfire.dart';
import 'package:pacman/game_sprite_sheet.dart';

class Food extends GameDecorationWithCollision {
  Food(Vector2 position) : super.withSprite(
    sprite: GameSpriteSheet.food,
    position: position, 
    size: Vector2(8,8)
  ){
    setupCollision(
      CollisionConfig(
        collisions:[
          CollisionArea.rectangle(
            size: Vector2(12,12),
            align: Vector2(-2,-2)
          )
        ],
      ),
    );
  }
}