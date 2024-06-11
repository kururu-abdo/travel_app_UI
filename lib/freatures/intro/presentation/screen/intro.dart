import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/freatures/place/presentation/screens/places.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

        // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
        //   SystemUiOverlay.top
        // ]);
  }
  @override
  Widget build(BuildContext context) {
 SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
     statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.light
    ));
    var size =  MediaQuery.of(context).size;
    return Scaffold(
      // type: MaterialType.transparency,
            // extendBodyBehindAppBar: true,
      //       clipBehavior: Clip.antiAlias,
      body: Stack(
        
        alignment: Alignment.center,
        children: [
          
          Container(
          height: size.height,
          width: size.width,
          clipBehavior: Clip.antiAlias,
padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/intro.jpg"), 
            
            fit: BoxFit.cover
            )
          ),
          
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*.10,),
              
const Text("Explore.", 
style: TextStyle(
  color: Colors.white, 
fontSize: 36, 
fontWeight: FontWeight.bold
  
),
), 

const Text("Travel.", 
style: TextStyle(
  color: Colors.black, 
fontSize: 36, 
fontWeight: FontWeight.bold
  
),
), 

const Text("Inspire.", 
style: TextStyle(
  color: Colors.black, 
fontSize: 36, 
fontWeight: FontWeight.bold
  
),
), 

              SizedBox(height: MediaQuery.of(context).size.height*.10,),


SizedBox(

  width: MediaQuery.of(context).size.width*.50,
  child: const Text("Life is all about journey.Find yours.", 
  style: TextStyle(
    color: Colors.white, 
  fontSize: 15, 
  // fontWeight: FontWeight.bold
    
  ),
  ),
), 
            ],
          ),
            ),
      
      

            Positioned(
              bottom: 50,
              
              child: Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 25),
      
                child: GestureDetector(
                  onTap: (){
Navigator.of(context).push( 


MaterialPageRoute(builder: (_)=> const PlacesScreen())

);





                  },
                  child: 
                  
                  Container(
                    height: 60,
                    width: 350,
                  
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        
                        Theme.of(context).primaryColor,
                        Theme.of(context).primaryColor.withOpacity(.9),
                        Theme.of(context).primaryColor
                      ]),
                      // color: Theme.of(context).primaryColor, 
                  
                  borderRadius: BorderRadius.circular(25)
                  
                    ),
                        
                    child: const Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Get Started ", 
                          style: TextStyle(
                            color: Colors.white ,fontWeight: FontWeight.bold
                          ),
                          ), 
                          Icon(Icons.arrow_forward , 
                          
                          color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
               
                ),
              ))
        ],
      ),
    )
;
  }
}