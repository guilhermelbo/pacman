class Controller{
  static int _score = 0;
  static int ateFood = 0;
  static bool specialPower = false;
  static List<Future> listFut = <Future>[];
  static bool winner = false;

  static void incScore(int s){
    _score = _score + s;
  }

  static int get score{
    return _score;
  }

  static void incAteFood(){
    ateFood++;
    if(ateFood >= 157){
      winner = true;
    }
  }

  static void activeSpecialPower(){
    specialPower = true;
    listFut.add(Future.delayed(
      const Duration(seconds: 10), 
        (){
          if(listFut.length == 1){
            specialPower = false;
          }
          listFut.removeAt(0);
        }
      )
    );
  }

}