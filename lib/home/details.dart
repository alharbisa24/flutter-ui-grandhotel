import 'package:finans/core/theming/colors.dart';
import 'package:finans/home/booking/book_request.dart';
import 'package:finans/models/property.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';

class PropertyDetails extends StatelessWidget {
  final Property property;


  PropertyDetails({super.key, required this.property});

   final List<Map<String, String>> ratings = [
    {"name": "Kim Borrdy", "image": "assets/images/avatar.png", "description": "Amazing!  The room is good than the picture. Thanks for amazing experience!" , "rate": "4.8"},
    {"name": "Fahad", "image": "assets/images/avatar.png", "description": "Amazing!  The room is good than the picture. Thanks for amazing experience!" , "rate": "4.8"},
    {"name": "Ali", "image": "assets/images/avatar.png", "description": "Amazing!  The room is good than the picture. Thanks for amazing experience!" , "rate": "4.8"},
    {"name": "Saaad", "image": "assets/images/avatar.png", "description": "Amazing!  The room is good than the picture. Thanks for amazing experience!" , "rate": "4.8"},
    {"name": "Mohammed", "image": "assets/images/avatar.png", "description": "Amazing!  The room is good than the picture. Thanks for amazing experience!" , "rate": "4.8"},

  ];


    final List<Map<String, String>> properties = [
    {"name": "Luxury villa", "image": "assets/images/recommend_property.png", "location": "Honolulu, HI" , "price": "270", "rate": "4.8"},
    {"name": "Luxury villa", "image": "assets/images/recommend_property.png", "location": "Honolulu, HI" , "price": "270", "rate": "4.8"},
    {"name": "Luxury villa", "image": "assets/images/recommend_property.png", "location": "Honolulu, HI" , "price": "270", "rate": "4.8"},
    {"name": "Luxury villa", "image": "assets/images/recommend_property.png", "location": "Honolulu, HI" , "price": "270", "rate": "4.8"},
    {"name": "Luxury villa", "image": "assets/images/recommend_property.png", "location": "Honolulu, HI" , "price": "270", "rate": "4.8"},

  ];
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                property.image,
                width: double.infinity,
                height: 400.h,
                fit: BoxFit.cover,
              ),
              Container(
                transform: Matrix4.translationValues(0, -30, 0),
                decoration: BoxDecoration(
                  color: ColorsManager.greyScale25,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              property.title,
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: ColorsManager.mainBlue.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(99)
                            ),
                            child: HugeIcon(icon: 
                            HugeIcons.strokeRoundedRotateCrop, color: ColorsManager.mainBlue,
                            size: 24.sp,),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                   
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              HugeIcon(icon: 
                              HugeIcons.strokeRoundedLocation01, color: ColorsManager.mainBlue, size: 16.sp,),
                              SizedBox(width: 5),
                              Text(
                                property.location,
                                style: TextStyle(
                                  color: ColorsManager.greyScale300,
                                  fontSize: 12.sp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width:16.w
                          ),

                            Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber, size: 20),
                              SizedBox(width: 4),
                              Text(
                                property.rating,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 16.h),


                         
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Common Facilities",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    ),),
                          
                    Text("See All",
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.normal,
                      color: ColorsManager.primary500
                    ),)
                  ],
                ),

SizedBox(
  height: 10.h,
),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    facilityCard(),
                    facilityCard(),
                    facilityCard(),
                    facilityCard(),
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Description",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ),),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text("The ideal place for those looking for a luxurious and tranquil holiday experience with stunning sea views...", style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: ColorsManager.greyScale300
                  ),)
                  ],
                ),
                 SizedBox(
                  height: 16.h,
                ),

                     
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Reviews",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ),),
                        
                  Text("See All",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.normal,
                    color: ColorsManager.primary500
                  ),)
                ],
              ),
            


                  SizedBox(
                    height: 500.h,
                    child: ListView.separated(
                      itemCount: ratings.length,
                      physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (BuildContext context, int index) {
                      return  Divider(
                  color: ColorsManager.greyScale100, 
                  thickness: 1,  
                  indent: 16,   
                  endIndent: 16, 
                );
                    },
                      shrinkWrap: true,
                      itemBuilder: (context, index){
                        final rating = ratings[index];
                        return userReview(
                          rating['image']!,
                          rating['name']!,
                          rating['description']!,
                          rating['rate']!,
                        );
                      }
                      ),
                  ),

                  SizedBox(
                  height: 16.h,
                ),

                     
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Recommendation",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ),),
                        
                  Text("See All",
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.normal,
                    color: ColorsManager.primary500
                  ),)
                ],
              ),
                 SizedBox(
                      height: 10.h,
                    ),
                SizedBox(
  height: 100.h, 
  child: PageView.builder(
    itemCount: properties.length,
     padEnds: false,
    controller: PageController(viewportFraction: 0.9),
    itemBuilder: (context, index) {
      final property = properties[index];
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8), 
        child: propertyRecommended(
          property['name']!,
          property['image']!,
          property['location']!,
          property['price']!,
          property['rate']!,
        ),
      );
    },
  ),
),
SizedBox(
  height: 60.h,
)
                  
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 50.h,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Text("Detail", 
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),),
                CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.2),
                  child: IconButton(
                    icon: Icon(Icons.share, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
          Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            decoration: BoxDecoration(
             color: Colors.white.withOpacity(0.9),
             borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
             ),

 boxShadow: [
               BoxShadow(
           color: Colors.black.withOpacity(0.2),
           blurRadius: 20,
           offset: Offset(0, -5),
               )
             ]
            ),
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ 
                    Text("Price", style: TextStyle(
                      fontSize: 14.sp,
                      color: ColorsManager.greyScale300
                    ),),
                    Text(property.price.toString(), style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    ),)
                  ],
                ),

                TextButton(onPressed: (){

                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BookRequestWidget(
                      property: property,
                    ))
                  );
                }, child: Text("Booking Now", style: 
                TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600
                ),),
                style: TextButton.styleFrom(
                  backgroundColor: ColorsManager.mainBlue,
                  padding: EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 16
                  ),
                  
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                  )
                ),)

              ],
            ),
          ),
        ),
      ],
    ),
  );
}
}


Widget facilityCard(){
  return Column(

    children : [
      Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: ColorsManager.mainBlue.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(99)
                              ),
                              child: HugeIcon(icon: 
                              HugeIcons.strokeRoundedSwimming, color: ColorsManager.mainBlue,
                              size: 24.sp,),
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text("Swimming", style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: ColorsManager.greyScale300
                            ),)
    ]
  );
}

Widget userReview(String image, String name, String description, String rate){
  return Container(
    child: Row(
      children: [
        Image.asset(image,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
        ),

        SizedBox(
          width:14.w
        ),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: Colors.black
              ),),
              Text(description,
                maxLines: 3,
            overflow: TextOverflow.ellipsis,
             style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.normal,
                color: ColorsManager.greyScale300
              ),)
            ],
          ),
        ),

        Row(
        children: [
          Icon(Icons.star, color: Colors.amber, size: 20),
          SizedBox(width: 4),
          Text(
            rate,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),

      SizedBox(
        height: 14.h,
      ),
      ],
    ),

  );
}


Widget propertyRecommended(String name, String image, String location, String price, String rate){
  return Container(
    decoration: BoxDecoration(
      border: BoxBorder.all(
        color:ColorsManager.greyScale50,
        width: 1
      ),
      borderRadius: BorderRadius.circular(16)
    ),
    child: Row(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          width: 100,
        ),
SizedBox(
  width: 6.w,
),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(name, style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600
            ),),
            SizedBox(
              height: 8.h,
            ),
            Row(
            children: [
              HugeIcon(icon: 
              HugeIcons.strokeRoundedLocation01, size: 14.sp,),
              SizedBox(width: 5),
              Text(
                location,
                style: TextStyle(
                  color: ColorsManager.greyScale300,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
            SizedBox(
              height: 8.h,
            ),
          Row(
            children: [
               Row(
        children: [
          Icon(Icons.star, color: Colors.amber, size: 20),
          SizedBox(width: 4),
          Text(
            rate,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.bold,
              color: Colors.amber
            ),
          ),
          Text(" (500)", style: TextStyle(
            fontSize: 12.sp,
            color: ColorsManager.greyScale300
          ),)
        ],
      ),

      SizedBox(
        width: 12.w,
      ),

      Text("\$$price", 
      style: TextStyle(
        color: Colors.black
      ),),

      SizedBox(
        width: 8.w,
      ),

       Text("\$300", 
      style: TextStyle(
        decoration: TextDecoration.lineThrough,
        color: Colors.red
      ),),

            ],
          )
          ],
        )
      ],
    ),
  );

}