import 'package:flutter/material.dart';
import 'package:loginmba/login.dart';


class beres extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
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
                              const  Image(image: AssetImage('assets/Picture5.png',),width: 352,height: 330,),
                              const Text('\nSelamat!\nAnda sudah berhasil mendaftar',
                                style: TextStyle(color: Colors.black,
                                    fontSize: 21,fontFamily: 'Product Sans',
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,),
                              const  Text('Silahkan periksa email anda untuk melakukan\n verifikasi sebelum melakukan Login.',
                                style: TextStyle(color: Colors.black,
                                    fontSize: 15,fontFamily: 'Product Sans',
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center,),
                              Container(
                                margin: EdgeInsets.only(top: 150),
                                child:  Column(
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
                                      onPressed: (){
                                        Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => login()));
                                      },
                                      child: const Text('Lanjutkan',style: TextStyle(color: Colors.white, fontSize: 15, fontFamily: 'Product Sans'),),
                                    ),
                                  ],
                                ),

                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                ),
              ]
          )
      )
    );
  }
}