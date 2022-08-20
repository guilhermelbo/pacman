import 'package:bonfire/bonfire.dart';
import 'package:pacman/game_sprite_sheet.dart';

class SpecialFood extends GameDecorationWithCollision {
  SpecialFood(Vector2 position) : super.withSprite(
    sprite: GameSpriteSheet.specialFood,
    position: position, 
    size: Vector2(8,8)
  ){
    setupCollision(
      CollisionConfig(
        collisions:[
          CollisionArea.rectangle(
            size: Vector2(8,8),
          )
        ],
      ),
    );
  }
}