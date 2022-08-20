import 'package:bonfire/bonfire.dart';
import 'package:pacman/controller.dart';
import 'package:pacman/game_sprite_sheet.dart';

import 'food.dart';
import 'pacman_player.dart';

class Ghost extends SimpleEnemy with ObjectCollision{
  bool ableToMove = false;
  bool ghostNoob = false;
  SimpleDirectionAnimation initialSimpleDirectionAnimation;
  
  Ghost(Vector2 position, int time, this.initialSimpleDirectionAnimation) : super(
    position: position,
    size: Vector2(12, 12),
    animation: initialSimpleDirectionAnimation,
  ){
    aboveComponents = true;
    speed = 40;
    setupCollision(
      CollisionConfig(
        collisions:[
          CollisionArea.circle(
            radius: 4,
            align: Vector2(1,1)
          )
        ],
      ),
    );

    timeToInitialMove(time);
  }

  void timeToInitialMove(int time){
    Future.delayed(
      Duration(seconds: time), 
      (){
        ableToMove = true;
      }
    );
  }
  
  @override
  bool onCollision(GameComponent component, bool active) {
    if(component is PacmanPlayer){
      if(ghostNoob){
        transform.position.x = 112;
        transform.position.y = 112;
      }
    }
    if(component is Ghost || component is Food){
      return false;
    }
    return true;
  }

  @override
  void update(double dt) {
    if(ableToMove){
      if(Controller.specialPower){
        if(!ghostNoob){
          replaceAnimation(
            SimpleDirectionAnimation(
              idleRight: GameSpriteSheet.ghostNoobIdleRight, 
              runRight: GameSpriteSheet.ghostNoobRunRight
            )
          );
          ghostNoob = true;
        }
        positionsItselfAndKeepDistance(
          gameRef.player!, 
          positioned: (target){},
          radiusVision: 160,
          minDistanceFromPlayer: 170
        );
      }
      else{
        if(ghostNoob){
          replaceAnimation(initialSimpleDirectionAnimation);
          ghostNoob = false;
        }
        seeAndMoveToPlayer(
          closePlayer: (player){
            moveFromDirection(lastDirection);
          },
          radiusVision: 160,
        );
      }
    }
    super.update(dt);
  }

}