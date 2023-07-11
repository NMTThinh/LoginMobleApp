import 'package:flutter/material.dart';
import 'package:loginmba/beres.dart';

class signup extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _signupScreenState();
  }
}
class _signupScreenState extends State<signup>{

  /// show the password or not
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top:135,left: 32),
              child:Column(
                children: [
                  Image(image: AssetImage('assets/Picture4.png'),width: 352,height: 330,)
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Container(
                  margin: EdgeInsets.only(top:480),
                  child:SingleChildScrollView(
                    child: Column(children: [
                      Container(
                        width: 354,
                        height: 52,
                        child:const TextField(
                            style:TextStyle(
                                color: Colors.black, fontSize: 15,
                                fontFamily:   'Montserrat',
                                fontWeight: FontWeight.w400
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              labelText: 'Nama Lengkap',
                            )
                        ),
                      ),
                      Container(
                        width: 354,
                        height: 52,
                        margin: EdgeInsets.only(top:24,bottom: 24),
                        child:const TextField(
                            keyboardType: TextInputType.emailAddress,
                            style:TextStyle(
                                color: Colors.black, fontSize: 15,
                                fontFamily:   'Montserrat',
                                fontWeight: FontWeight.w400
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              labelText: 'Email',
                            )
                        ),
                      ),
                      Container(
                        width: 354,
                        height: 52,
                        margin: EdgeInsets.only(bottom: 24),
                        child:const TextField(
                            keyboardType: TextInputType.number,
                            style:TextStyle(
                                color: Colors.black, fontSize: 15,
                                fontFamily:   'Montserrat',
                                fontWeight: FontWeight.w400
                            ),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              labelText: 'Nomor HP',
                            )
                        ),
                      ),
                      Container(
                        width: 354,
                        height: 52,
                        child: TextField(
                            obscureText: _isObscure,
                            keyboardType: TextInputType.text,
                            style:const TextStyle(
                                color: Colors.black, fontSize: 15,
                                fontFamily:   'Montserrat',
                                fontWeight: FontWeight.w400
                            ),
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  icon: Icon(
                                      _isObscure ? Icons.visibility_off : Icons.visibility),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  }),
                              border:const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              labelText: 'Password',
                            )
                        ),
                      ),
                      Container(
                        width: 354,
                        height: 52,
                        margin: EdgeInsets.only(top:24,bottom: 24),
                        child: TextField(
                            obscureText: _isObscure,
                            keyboardType: TextInputType.text,
                            style:const TextStyle(
                                color: Colors.black, fontSize: 15,
                                fontFamily:   'Montserrat',
                                fontWeight: FontWeight.w400
                            ),
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  icon: Icon(
                                      _isObscure ? Icons.visibility_off : Icons.visibility),
                                  onPressed: () {
                                    setState(() {
                                      _isObscure = !_isObscure;
                                    });
                                  }),
                              border:const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              labelText: 'Konfirmasi Password',
                            )
                        ),
                      ),
                      Container(
                        width: 354,
                        height: 52,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        margin: EdgeInsets.only(top:41,bottom: 40),
                        child:TextButton(

                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(fontSize: 15),
                          ),
                          onPressed: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => beres()));
                          },
                          child: const Text('Mendaftar',
                            style: TextStyle(
                                color: Colors.white, fontSize: 15,
                                fontFamily:   'Montserrat',
                                fontWeight: FontWeight.w400
                            ),),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30,left: 20),
                        child:TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(fontSize: 15),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Container(
                                  height: 2,
                                  width: 86,
                                  color: Colors.grey,
                                ),
                                const Text(' Atau daftar menggunakan ',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 15,
                                      fontFamily:   'Montserrat',
                                      fontWeight: FontWeight.w600
                                  ),),
                                Container(
                                  height: 2,
                                  width: 86,
                                  color: Colors.grey,
                                )
                              ],
                            )
                        ),
                      ),
                      Container(
                        width: 354,
                        height: 52,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        margin: EdgeInsets.only(bottom: 30),
                        child:TextButton(
                            style: TextButton.styleFrom(
                              side: BorderSide(color: Colors.red,width: 3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              textStyle: const TextStyle(fontSize: 15),
                            ),
                            onPressed: () {},
                            child:const  Row(
                              children: [
                                Text(' \t'),
                                Image(image: AssetImage('assets/Google.png'),width: 33,height: 33,),
                                Text('                               Google',
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 15,
                                      fontFamily:   'Montserrat',
                                      fontWeight: FontWeight.w700
                                  ),
                                ),
                              ],
                            )
                        ),
                      ),
                      Container(
                        width: 354,
                        height: 52,

                        child:const Row(
                          children: [
                            Text('        Belum punya akun?',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15,
                                  fontFamily:   'Montserrat',
                                  fontWeight: FontWeight.w500
                              ),),
                            Text(' Mendaftar',
                              style: TextStyle(
                                  color: Colors.blue, fontSize: 15,
                                  fontFamily:   'Montserrat',
                                  fontWeight: FontWeight.w500
                              ),),
                            Text(' sekranag',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15,
                                  fontFamily:   'Montserrat',
                                  fontWeight: FontWeight.w500
                              ),),
                          ],
                        ),
                      ),
                    ],
                    ),
                  )
              ),
            ),
          ],
        ),
      )
    );
  }
}
