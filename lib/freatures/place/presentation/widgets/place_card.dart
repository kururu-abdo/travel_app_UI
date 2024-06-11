import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  final String? name;
  final String? country;
  final String? image;
  const PlaceCard({super.key, this.name, this.country, this.image});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Hero(
      tag: image!,
      child: Material(
        color: Colors.transparent,
        child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        width: size.width*.80,
        height: size.height*.40,
        padding: const EdgeInsets.symmetric(
          horizontal: 15
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        
          image: DecorationImage(image: 
          AssetImage(image!,),
          fit: BoxFit.cover
          ),
        ),
        
        child: Stack(
          children: [
        
        
        Positioned(
          bottom: 20,
          child: 
        Column(
          mainAxisSize: MainAxisSize.min,
        
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
        Text(name!, style: const TextStyle(
          color: Colors.white, 
          fontSize: 25,fontWeight: FontWeight.bold
        ),
        
        ), 
        
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
        const Icon(Icons.location_on , color: Colors.white ,size: 20,), 
        const SizedBox(width: 3,), 
        Text(country!, style: const TextStyle(
          color: Colors.white ,fontSize: 18
        ),)
        
        
        
          ],
        )
        
        
        ],
        
        
        )
        
        )
          ],
        ),
        ),
      ),
    );
  }
}