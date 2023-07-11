import 'package:flutter/material.dart';
import 'package:loginmba/signup.dart';

class Intro3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      
        child: Stack(
            children: [
              Align(
                child: Column(
                  children: [
                    Container(

                      margin: EdgeInsets.only(top: 135),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image(image: AssetImage('assets/Picture3.png',),width: 352,height: 330,),
                          const Column(
                            children: [
                              Text('\nMudah dalam bertransaksi,\n dengan Jumot',
                                style: TextStyle(color: Colors.black,
                                    fontSize: 21,fontFamily: 'Product Sans',
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,),
                              Text('Beli kendaraan sesuai minatmu dan dengan\n harga negosiasi terbaik\n',
                                style: TextStyle(color: Colors.black,
                                    fontSize: 15,fontFamily: 'Product Sans',
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center,),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(bottom: 21,top: 50),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      padding: const EdgeInsets.all(16.0),
                                      textStyle: const TextStyle(fontSize: 15),
                                      minimumSize: Size(354,52),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      )
                                  ),
                                  onPressed: () {},
                                  child: const Text('Masuk',style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'Product Sans'),),
                                ),
                              ],
                            ),
                          ),

                          Column(
                            children: [
                              TextButton(
                                onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => signup()));
                              },
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                    foregroundColor: Colors.blue,
                                    minimumSize: Size(354,52),
                                    side: BorderSide(color: Colors.blue), // foreground border
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    )
                                ),

                                child: const Text('Mendaftar',style: TextStyle(color: Colors.blue, fontSize: 15, fontFamily: 'Product Sans'),),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]
        )
    );
  }
}