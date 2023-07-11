import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:loginmba/intro1.dart';
import 'package:loginmba/intro2.dart';
import 'package:loginmba/intro3.dart';


class introduction extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _introduceScreenState();
  }
}
class _introduceScreenState extends State<introduction>{

  PageController _controller = PageController();
  bool isShowKembaliButton = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => isShowKembaliButton = _controller.page! > 0);

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          //Page view
          PageView(
            //controller
            controller: _controller,

            children: [
              Intro1(),
              Intro2(),
              Intro3(),
            ],
          ),

          //dot indicator
          Container(
            alignment: Alignment(0, 0.95),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Visibility(
                  visible: isShowKembaliButton,
                  child:  GestureDetector(
                    onTap: (){
                      _controller.previousPage(duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: Text('Kembali', style:
                    TextStyle(
                        fontWeight: FontWeight.w400, fontSize: 14, color: Colors.lightBlueAccent,
                        fontFamily: 'Public Sans'
                    ),),
                  ),),

                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                    effect:  WormEffect(),  // your preferred effect
                    onDotClicked: (index){

                    }
                ),

                GestureDetector(
                  onTap: (){

                    _controller.nextPage(duration: const Duration(milliseconds: 500),
                        curve: Curves.bounceIn);
                    setState(() {
                      isShowKembaliButton = true;
                    });
                  },
                  child: Text('Selanjutnya', style:
                  TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 14,color: Colors.lightBlueAccent,
                      fontFamily: 'Public Sans'
                  ),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}