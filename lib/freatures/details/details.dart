import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/freatures/place/data/place_model.dart';
import 'package:travel_app/shared/presentation/widgets/back_btn.dart';

class DetailsScreen extends StatefulWidget {
  final PlaceModel? model;
  const DetailsScreen({super.key, this.model});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
     statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.light
    ));
        var size =  MediaQuery.of(context).size;

    return Scaffold(
//  type: MaterialType.transparency,
//             // extendBodyBehindAppBar: true,
//             clipBehavior: Clip.antiAlias,
      body: 
      
       Hero(
        tag: widget.model!.image!,
         child: Container(
            height: size.height,
            width: size.width,
            clipBehavior: Clip.antiAlias,
         padding:  const EdgeInsets.symmetric(horizontal: 20),
            decoration:  BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.model!.image!), 
              
              fit: BoxFit.cover
              )
            ),
            child: Column(children: [

      SizedBox(height: MediaQuery.of(context).size.height*.05,),

 Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
       BackButton2(
        fromDark: true,
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      Text("${widget.model!.name}", 
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
        color: Colors.white
      ),
      ), 
      const SizedBox.shrink()
    ],
  ))


,
SizedBox(
  height: MediaQuery.of(context).size.height*.10,

),
Expanded(child: Stack(children: [

SizedBox(
  height: MediaQuery.of(context).size.height*.80,
  child: CustomPaint(
  painter: LinePainter(),
  child: Container(
    height:   MediaQuery.of(context).size.height*.80,
  ),
  ),
)
,
PositionedDirectional(
  
  start: 20, 
  bottom: 50,
  child: Material(
    color: Colors.transparent,
    child: Column(
    
      children: [
    
    Container(
    width: 150,
    height: 100,
    decoration:  BoxDecoration(
    color: Colors.white.withOpacity(.10), 
    borderRadius: BorderRadius.circular(15)
    ),
    child: const Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Row(mainAxisSize: MainAxisSize.min,
       children: [
        Icon(Icons.access_time_filled_rounded, 
        color: Colors.white,
        size: 18,
        ), 
        SizedBox(width: 3,), 
    
        Text(
          "Time" , 
          style: TextStyle(
            color: Colors.white54
          ),
        )
       ],
       )
     ,
     Text("2h 34 min", 
     
     style: TextStyle(
      color: Colors.white ,fontWeight: FontWeight.bold, 
      fontSize: 15
     ),
     )
     
      ],
    ),
    ),
    )
    ,
    const SizedBox(height: 10,)
    ,
    
    Container(
    width: 150,
    height: 100,
    decoration:  BoxDecoration(
    color: Colors.white.withOpacity(.10), 
    borderRadius: BorderRadius.circular(15)
    ),
    child:  Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const Row(
        mainAxisSize: MainAxisSize.min,
       children: [
        Icon(Icons.near_me, 
        color: Colors.white,
        size: 18,
        ), 
        SizedBox(width: 3,), 
    
        Text(
          "Distance" , 
          style: TextStyle(
            color: Colors.white54
          ),
        )
       ],
       )
     ,
     Text("${widget.model!.distance}", 
     
     style: const TextStyle(
      color: Colors.white ,fontWeight: FontWeight.bold, 
      fontSize: 15
     ),
     )
     
      ],
    ),
    ),
    )
    
    
      ],
    ),
  )
  )


],))

            ],),
         
              ),
       ),
      
    );
  }
}


class LinePainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
   var paint = Paint()
   ..color=Colors.white54
   ..strokeCap=StrokeCap.round
   ..style=PaintingStyle.stroke
   ..strokeWidth= 8.0;
   var circlePainter = Paint()
   ..color=Colors.white
   ..strokeCap=StrokeCap.round
   ..style=PaintingStyle.fill
   
   ..strokeWidth= 8.0;
var circle2Painter = Paint()
   ..color=Colors.white12
   ..strokeCap=StrokeCap.round
   ..style=PaintingStyle.fill
   
   ..strokeWidth= 8.0;
var circle3Painter = Paint()
   ..color=Colors.white12
   ..strokeCap=StrokeCap.round
   ..style=PaintingStyle.fill
   
   ..strokeWidth= 8.0;
    var path= Path()

     ..moveTo(size.width*.60, 0);
    path.cubicTo(size.width / 4
    , 
    3 * size.height / 4,
     3 * size.width / 4, 
     size.height / 4,
     size.width*.80, size.height*.80);

canvas.drawCircle(Offset(size.width*.80, size.height*.80), 10, circlePainter);
canvas.drawCircle(Offset(size.width*.60, 0), 10, circlePainter);

canvas.drawCircle(Offset(size.width*.80, size.height*.80), 20, circle2Painter);
canvas.drawCircle(Offset(size.width*.80, size.height*.80), 40, circle3Painter);

  canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(LinePainter oldDelegate) => false;
}