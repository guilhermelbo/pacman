import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pacman/food.dart';
import 'package:pacman/game_sprite_sheet.dart';
import 'package:pacman/ghost.dart';
import 'package:pacman/interface.dart';
import 'package:pacman/pacman_player.dart';
import 'package:pacman/special_food.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pacman',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(
          keyboardDirectionalType: KeyboardDirectionalType.arrows
        ),
        actions: [
          JoystickAction(
            actionId: Direction.right,
            sprite: Sprite.load('arrow_right.png'),
            align: JoystickActionAlign.BOTTOM_LEFT,
            margin: const EdgeInsets.fromLTRB(50, 0, 0, 30)
          ),
          JoystickAction(
            actionId: Direction.left,
            sprite: Sprite.load('arrow_left.png'),
            align: JoystickActionAlign.BOTTOM_LEFT,
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30)
          ),
          JoystickAction(
            actionId: Direction.up,
            sprite: Sprite.load('arrow_up.png'),
            align: JoystickActionAlign.BOTTOM_LEFT,
            margin: const EdgeInsets.fromLTRB(25, 0, 0, 60)
          ),
          JoystickAction(
            actionId: Direction.down,
            sprite: Sprite.load('arrow_down.png'),
            align: JoystickActionAlign.BOTTOM_LEFT,
            margin: const EdgeInsets.fromLTRB(25, 0, 0, 0)
          ),
        ]
      ),
      map: TiledWorldMap(
        'map/map.json', 
        forceTileSize: const Size(8, 8),
        objectsBuilder: {
          'food': (properties) => Food(properties.position),
          'specialFood': (properties) => SpecialFood(properties.position),
          'enemy1': (properties) => Ghost(properties.position, 3, SimpleDirectionAnimation(
            idleRight: GameSpriteSheet.ghostRedIdleRight,
            runRight: GameSpriteSheet.ghostRedRunRight,
            idleUp: GameSpriteSheet.ghostRedIdleUp,
            runUp: GameSpriteSheet.ghostRedRunUp,
            idleDown: GameSpriteSheet.ghostRedIdleDown,
            runDown: GameSpriteSheet.ghostRedRunDown
          )),
          'enemy2': (properties) => Ghost(properties.position, 10, SimpleDirectionAnimation(
            idleRight: GameSpriteSheet.ghostPinkIdleRight,
            runRight: GameSpriteSheet.ghostPinkRunRight,
            idleUp: GameSpriteSheet.ghostPinkIdleUp,
            runUp: GameSpriteSheet.ghostPinkRunUp,
            idleDown: GameSpriteSheet.ghostPinkIdleDown,
            runDown: GameSpriteSheet.ghostPinkRunDown
          )),
          'enemy3': (properties) => Ghost(properties.position, 15, SimpleDirectionAnimation(
            idleRight: GameSpriteSheet.ghostBlueIdleRight,
            runRight: GameSpriteSheet.ghostBlueRunRight,
            idleUp: GameSpriteSheet.ghostBlueIdleUp,
            runUp: GameSpriteSheet.ghostBlueRunUp,
            idleDown: GameSpriteSheet.ghostBlueIdleDown,
            runDown: GameSpriteSheet.ghostBlueRunDown
          )),
          'enemy4': (properties) => Ghost(properties.position, 20, SimpleDirectionAnimation(
            idleRight: GameSpriteSheet.ghostOrangeIdleRight,
            runRight: GameSpriteSheet.ghostOrangeRunRight,
            idleUp: GameSpriteSheet.ghostOrangeIdleUp,
            runUp: GameSpriteSheet.ghostOrangeRunUp,
            idleDown: GameSpriteSheet.ghostOrangeIdleDown,
            runDown: GameSpriteSheet.ghostOrangeRunDown
          )),
        },
      ),
      player: PacmanPlayer(Vector2(8,6), Vector2(12,12)),
      cameraConfig: CameraConfig(
        zoom: 1.78,
        target: Player(
          position: Vector2(112,112),
          size: Vector2(0,0),
        )
      ),
      interface: MyInterface(),
    );
  }
}
