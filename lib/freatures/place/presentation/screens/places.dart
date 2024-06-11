import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/freatures/details/details.dart';
import 'package:travel_app/freatures/place/data/places_data.dart';
import 'package:travel_app/freatures/place/presentation/widgets/place_card.dart';
import 'package:travel_app/shared/presentation/widgets/back_btn.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({super.key});

  @override
  State<PlacesScreen> createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {

    final PageController _pageController = PageController(viewportFraction: 0.96,
      initialPage: 1,);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: SizedBox.expand(

  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    
    children: [

              SizedBox(height: MediaQuery.of(context).size.height*.05,),

 Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
       BackButton2(
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      Text("Explore Places", 
      style: Theme.of(context).textTheme.titleMedium,
      ), 
      const SizedBox.shrink()
    ],
  ))


,
              SizedBox(height: MediaQuery.of(context).size.height*.05,),

Expanded(child: 
 PageView.builder(
      controller: _pageController,
      dragStartBehavior: DragStartBehavior.start,
      itemCount: places.length,
      itemBuilder: (context,index){
        var place = places[index];

return Column(


  children: [


      PlaceCard(
        name: place.name,
        country: place.country,
        image: place.image,
        ), 
      const SizedBox(height: 10,), 

             const Padding(
 padding: EdgeInsets.symmetric(horizontal: 15),         child: Text("Feel the freedom", 
               
               style: TextStyle(
          fontWeight: FontWeight.bold ,fontSize: 20
               ),
               ),
       ), 

      const SizedBox(height: 20,), 
 Padding(
   padding: const EdgeInsets.symmetric(horizontal: 15),
   child: Text(place.desc!, 
        textAlign: TextAlign.start,
        maxLines: 6,
        style:  TextStyle(
          fontWeight: FontWeight.w500 ,fontSize: 15, 
          color: Colors.grey[500]
        ),
        ),
 ), 
              SizedBox(height: MediaQuery.of(context).size.height*.05,),
Padding(padding: 

const EdgeInsets.symmetric(horizontal: 20), 

child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
Container(
  width: 120, 
  height: 50, 

  decoration: BoxDecoration(
    color: Colors.grey.withOpacity(.15), 
borderRadius: BorderRadius.circular(50)
    
  ),

  child: Center(
    child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
Icon(Icons.near_me , color: Theme.of(context).primaryColor,)
, 

Text(place.distance!,  
style: const TextStyle(
   
),

)

    ],
      
    ),
  ),
)
,
Container(
  width: 120, 
  height: 50, 

  decoration: BoxDecoration(
    color: Colors.grey.withOpacity(.15), 
borderRadius: BorderRadius.circular(50)
    
  ),

  child: Center(
    child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
Icon(Icons.sunny , color: Theme.of(context).primaryColor,)
, 

Text(place.temp!,  
style: const TextStyle(
   
),

)

    ],
      
    ),
  ),
)
,Container(
  width: 120, 
  height: 50, 

  decoration: BoxDecoration(
    color: Colors.grey.withOpacity(.15), 
borderRadius: BorderRadius.circular(50)
    
  ),

  child: Center(
    child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
Icon(Icons.grade , color: Theme.of(context).primaryColor,)
, 

Text(place.rating!,  
style: const TextStyle(
   
),

)

    ],
      
    ),
  ),
)

  ],
),
), 

const Spacer(), 

Padding(padding: const EdgeInsets.symmetric(horizontal: 20), 
child:   Row(
  children: [
Container(
  width: 50, 
  height: 50,
  decoration: BoxDecoration(
    color: Colors.white,
    shape: BoxShape.circle,
boxShadow: [ 
  BoxShadow(
    blurRadius: 5, 
    offset: const Offset(0, 5) , 
    color: Colors.grey.withOpacity(.10)
  )
]

  ),
  child: const Center(child: Icon(
    Icons.favorite ,color: Colors.red,
  ),),
)
, 
const SizedBox(width: 10,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                    
                        Navigator.of(context)
                        .push(
                    
                          MaterialPageRoute(builder: (_)=>  
                          
                          DetailsScreen(
                            model: place,
                          )
                          )
                        );
                      },
                      child: Container(
                        height: 60,
                        // width: 350,
                      
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
                          child: Text("Let's GO trip!", 
                              style: TextStyle(
                                color: Colors.white ,fontWeight: FontWeight.bold
                              ),
                              ),
                        ),
                      ),
                    ),
                  ),
               

  ],
),

),


              SizedBox(height: MediaQuery.of(context).size.height*.05,),

  ],
);
      })

)

  ],),
),

    );
  }
}