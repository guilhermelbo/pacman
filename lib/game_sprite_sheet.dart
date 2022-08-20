import 'package:bonfire/bonfire.dart';

class GameSpriteSheet {
  static Future<SpriteAnimation> get pacmanIdleRight => SpriteAnimation.load(
    'general_sprites.png',
    SpriteAnimationData.sequenced(
      amount: 1, 
      stepTime: 1, 
      textureSize: Vector2(16,16),
      texturePosition: Vector2(472,0)
    )
  );

  static Future<SpriteAnimation> get pacmanRunRight => SpriteAnimation.load(
    'general_sprites.png',
    SpriteAnimationData.sequenced(
      amount: 2, 
      stepTime: 0.1, 
      textureSize: Vector2(16,16),
      texturePosition: Vector2(456,0)
    )
  );

  static Future<SpriteAnimation> get pacmanIdleLeft => SpriteAnimation.load(
    'general_sprites.png',
    SpriteAnimationData.sequenced(
      amount: 1, 
      stepTime: 1, 
      textureSize: Vector2(16,16),
      texturePosition: Vector2(472,16)
    )
  );
  
  static Future<SpriteAnimation> get pacmanRunLeft => SpriteAnimation.load(
    'general_sprites.png',
    SpriteAnimationData.sequenced(
      amount: 2, 
      stepTime: 0.1, 
      textureSize: Vector2(16,16),
      texturePosition: Vector2(456,16)
    )
  );

  static Future<SpriteAnimation> get pacmanIdleUp => SpriteAnimation.load(
    'general_sprites.png',
    SpriteAnimationData.sequenced(
      amount: 1, 
      stepTime: 1, 
      textureSize: Vector2(16,16),
      texturePosition: Vector2(472,32)
    )
  );

  static Future<SpriteAnimation> get pacmanRunUp => SpriteAnimation.load(
    'general_sprites.png',
    SpriteAnimationData.sequenced(
      amount: 2, 
      stepTime: 0.1, 
      textureSize: Vector2(16,16),
      texturePosition: Vector2(456,32)
    )
  );

  static Future<SpriteAnimation> get pacmanIdleDown => SpriteAnimation.load(
    'general_sprites.png',
    SpriteAnimationData.sequenced(
      amount: 1, 
      stepTime: 1, 
      textureSize: Vector2(16,16),
      texturePosition: Vector2(472,48)
    )
  );

  static Future<SpriteAnimation> get pacmanRunDown => SpriteAnimation.load(
    'general_sprites.png',
    SpriteAnimationData.sequenced(
      amount: 2, 
      stepTime: 0.1, 
      textureSize: Vector2(16,16),
      texturePosition: Vector2(456,48)
    )
  );

  static Future<Sprite> get food => Sprite.load(
    'general_sprites.png',
    srcPosition: Vector2(8,8),
    srcSize: Vector2(8, 8)
  );

  static Future<Sprite> get specialFood => Sprite.load(
    'general_sprites.png',
    srcPosition: Vector2(8,24),
    srcSize: Vector2(8, 8)
  );

  static Future<SpriteAnimation> get ghostRedIdleRight => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(456,64)
    )
  );

  static Future<SpriteAnimation> get ghostRedRunRight => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(456,64)
    )
  );

  static Future<SpriteAnimation> get ghostRedIdleUp => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(520,64)
    )
  );

  static Future<SpriteAnimation> get ghostRedRunUp => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(520,64)
    )
  );

  static Future<SpriteAnimation> get ghostRedIdleDown => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(552,64)
    )
  );

  static Future<SpriteAnimation> get ghostRedRunDown => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(552,64)
    )
  );

  static Future<SpriteAnimation> get ghostPinkIdleRight => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(456,80)
    )
  );

  static Future<SpriteAnimation> get ghostPinkRunRight => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(456,80)
    )
  );

  static Future<SpriteAnimation> get ghostPinkIdleUp => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(520,80)
    )
  );

  static Future<SpriteAnimation> get ghostPinkRunUp => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(520,80)
    )
  );

  static Future<SpriteAnimation> get ghostPinkIdleDown => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(552,80)
    )
  );

  static Future<SpriteAnimation> get ghostPinkRunDown => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(552,80)
    )
  );

  static Future<SpriteAnimation> get ghostBlueIdleRight => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(456,96)
    )
  );

  static Future<SpriteAnimation> get ghostBlueRunRight => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(456,96)
    )
  );

  static Future<SpriteAnimation> get ghostBlueIdleUp => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(520,96)
    )
  );

  static Future<SpriteAnimation> get ghostBlueRunUp => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(520,96)
    )
  );

  static Future<SpriteAnimation> get ghostBlueIdleDown => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(552,96)
    )
  );

  static Future<SpriteAnimation> get ghostBlueRunDown => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(552,96)
    )
  );

  static Future<SpriteAnimation> get ghostOrangeIdleRight => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(456,112)
    )
  );

  static Future<SpriteAnimation> get ghostOrangeRunRight => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(456,112)
    )
  );

  static Future<SpriteAnimation> get ghostOrangeIdleUp => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(520,112)
    )
  );

  static Future<SpriteAnimation> get ghostOrangeRunUp => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(520,112)
    )
  );

  static Future<SpriteAnimation> get ghostOrangeIdleDown => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(552,112)
    )
  );

  static Future<SpriteAnimation> get ghostOrangeRunDown => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(552,112)
    )
  );

  static Future<SpriteAnimation> get ghostNoobIdleRight => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 1,
      stepTime: 1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(584,64)
    )
  );

  static Future<SpriteAnimation> get ghostNoobRunRight => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 2,
      stepTime: 0.1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(584,64)
    )
  );

  static Future<SpriteAnimation> get pacmanDead => SpriteAnimation.load(
    'general_sprites.png', 
    SpriteAnimationData.sequenced(
      amount: 12,
      stepTime: 0.1,
      textureSize: Vector2(16,16),
      texturePosition: Vector2(520,0)
    )
  );
}