import 'package:bonfire/bonfire.dart';
import 'package:pacman/food.dart';
import 'package:pacman/controller.dart';
import 'package:pacman/game_sprite_sheet.dart';
import 'package:pacman/ghost.dart';
import 'package:pacman/special_food.dart';

class PacmanPlayer extends SimplePlayer with ObjectCollision{
  Direction? pacmanDirection;
  bool canMove = true;

  PacmanPlayer(Vector2 position, Vector2 size) : super(
    position: position,
    size: size,
    speed: 75,
    animation: SimpleDirectionAnimation(
      idleRight: GameSpriteSheet.pacmanIdleRight, 
      runRight: GameSpriteSheet.pacmanRunRight,
      idleLeft: GameSpriteSheet.pacmanIdleLeft,
      runLeft: GameSpriteSheet.pacmanRunLeft,
      idleUp: GameSpriteSheet.pacmanIdleUp,
      runUp: GameSpriteSheet.pacmanRunUp,
      idleDown: GameSpriteSheet.pacmanIdleDown,
      runDown: GameSpriteSheet.pacmanRunDown
    )
  ){
    setupCollision(
      CollisionConfig(
        collisions:[
          CollisionArea.circle(
            radius: 3,
            align: Vector2(2,2)
          )
        ],
      ),
    );
  }

  @override
  void joystickAction(JoystickActionEvent event){
    if(event.event == ActionEvent.DOWN){
      isIdle = false;
      pacmanDirection = event.id;
    }
    super.joystickAction(event);
  }

  @override
  void joystickChangeDirectional(JoystickDirectionalEvent event){
    isIdle = false;
    if(event.directional == JoystickMoveDirectional.MOVE_RIGHT){
      pacmanDirection = Direction.right;
    }
    else if(event.directional == JoystickMoveDirectional.MOVE_LEFT){
      pacmanDirection = Direction.left;
    }
    else if(event.directional == JoystickMoveDirectional.MOVE_UP){
      pacmanDirection = Direction.up;
    }
    else if(event.directional == JoystickMoveDirectional.MOVE_DOWN){
      pacmanDirection = Direction.down;
    }
  }

  @override
  bool onCollision(GameComponent component, bool active) {
    if(component is TileWithCollision){
      super.idle();
      return true;
    }
    if(component is Food){
      if(component.hasGameRef){
        component.removeFromParent();
        Controller.incScore(10);
        Controller.incAteFood();
      }
      return false;
    }
    if(component is Ghost){
      if(component.ghostNoob){
        Controller.incScore(200);
      }
      else{
        die();
      }
    }
    if(component is SpecialFood){
      if(component.hasGameRef){
        component.removeFromParent();
        Controller.incScore(50);
        Controller.incAteFood();
        Controller.activeSpecialPower();
      }
      return false;
    }
    return false;
  }

  @override
  void update(double dt){
    if(canMove){
      if(!isIdle){
        if(pacmanDirection != null){
          moveFromDirection(pacmanDirection!);
        }
      }
    }
    super.update(dt);
  }

  @override
  void die() {
    canMove = false;
    animation?.playOnce(
      GameSpriteSheet.pacmanDead,
      runToTheEnd: true
    );
    super.die();
  }
}