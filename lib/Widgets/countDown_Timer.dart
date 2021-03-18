import 'package:flutter/cupertino.dart';
import 'package:paisa_takatak_mobile/Themes/Style.dart';

class Countdown extends AnimatedWidget{

  Countdown({Key key,this.animation}):super(key: key,listenable: animation);
  Animation<int> animation;

  @override
  Widget build(BuildContext context) {
   Duration clockTimer = Duration(seconds: animation.value);
   String timerText = '${clockTimer.inMinutes.remainder(60).toString()}:${(clockTimer.inSeconds.remainder(60)%60).toString().padLeft(2,'0')}';


   return Text(
       timerText,
     style: Style.descTextStyle,
   );
  }

  
}