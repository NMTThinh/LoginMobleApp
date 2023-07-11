import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
        children: [
          Align(
              child: Column(
                children: [
                  Container(
                    height: 470,
                    width: 500,
                    margin: EdgeInsets.only(top: 135),
                    child:const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image(image: AssetImage('assets/Picture1.png',),width: 352,height: 330,),
                        Text('\nMudah dalam bertransaksi,\n dengan Jumot',
                          style: TextStyle(color: Colors.black,
                              fontSize: 21,fontFamily: 'Product Sans',
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,),
                        Text('Jual beli bisa dilakukan secara cod agar dapat\n mengecek barang yang akan kita beli',
                          style: TextStyle(color: Colors.black,
                              fontSize: 15,fontFamily: 'Product Sans',
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,),
                      ],
                    ),
                  ),
                ],
              )
          ),
          ]
        )
        );
  }
}