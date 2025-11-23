import 'package:finans/core/theming/colors.dart';
import 'package:finans/home/details.dart';
import 'package:finans/home/my_bookings.dart';
import 'package:finans/home/profile.dart';
import 'package:finans/home/search.dart';
import 'package:finans/models/property.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:liquid_glass_navbar/liquid_glass_navbar.dart';


class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});
  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    Center(child: HomePageWidget()),
    Center(child: MyBookingsHomePage()),
    Center(child: Text("Message", style: TextStyle(fontSize: 22))),
    Center(child: ProfileHomePage()),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidGlassNavBar(
        currentIndex: _currentIndex,
        onPageChanged: (index) {
          setState(() => _currentIndex = index);
        },
        pages: _pages,
        items: [
          LiquidGlassNavItem(icon: Icons.home, label: "Home"),
          LiquidGlassNavItem(icon: Icons.schedule, label: "My Booking"),
          LiquidGlassNavItem(icon: Icons.message, label: "Message"),
          LiquidGlassNavItem(icon: Icons.person, label: "Profile"),
        ],
        backgroundColor: Colors.white,
        itemColor: Colors.black,
        bubbleColor: ColorsManager.greyScale0,
        blurStrength: 10,
        showBubble: true,
        enableDragging: true,
      ),
    );
      
      
   
  }
}

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

    @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {


  int selectedIndex = 0; 

    final List<Map<String, String>> filters = [
    {"name": "All", "icon": ""}, 
    {"name": "Villa", "icon": "assets/icons/villa.png"},
    {"name": "Hotel", "icon": "assets/icons/hotel.png"},
    {"name": "Apartment", "icon": "assets/icons/apartment.png"},
    {"name": "Apartment", "icon": "assets/icons/apartment.png"},
    {"name": "Apartment", "icon": "assets/icons/apartment.png"},
  ];

    final List<Map<String, String>> properties = [
    {"name": "Luxury villa", "image": "assets/images/serenity_property.png", "location": "Honolulu, HI" , "price": "270", "rate": "4.8", "beds": "4", "bathrooms": "5"},
    {"name": "Luxury villa", "image": "assets/images/serenity_property.png", "location": "Honolulu, HI" , "price": "270", "rate": "4.8", "beds": "4", "bathrooms": "5"},
    {"name": "Luxury villa", "image": "assets/images/serenity_property.png", "location": "Honolulu, HI" , "price": "270", "rate": "4.8", "beds": "4", "bathrooms": "5"},
    {"name": "Luxury villa", "image": "assets/images/serenity_property.png", "location": "Honolulu, HI" , "price": "270", "rate": "4.8", "beds": "4", "bathrooms": "5"},

  ];

  @override
  Widget build(BuildContext context) {
    return  SafeArea( 
        child: SingleChildScrollView(
          child: Column(
            children: [
          
              Container(
                padding: EdgeInsets.all(24),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  
                  children: [
                          
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Image.asset(
                    "assets/images/avatar.png"
                  ),
                          
                  SizedBox(width: 12.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Matr Kohler", style: TextStyle(
                        fontSize:16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                      ),),
                      Row(
                        children: [
                          HugeIcon(icon: HugeIcons.strokeRoundedLocation01, color: ColorsManager.greyScale200, size: 14.sp),
                          SizedBox(width: 4.w,),
                          Text("San Diego, CA", style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.normal,
                        color: ColorsManager.greyScale200
                      ),)
                        ],
                      )
                    ],
                  )
                  ],),
                          
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SearchHomeWidget())
                          );
                        },
                        child: Container(
                            
                          decoration: BoxDecoration(
                            border: BoxBorder.all(
                              color: ColorsManager.greyScale200,
                              width: 1.w
                            ),
                            borderRadius: BorderRadius.circular(32.r)
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            
                            
                            
                          child: HugeIcon(icon: HugeIcons.strokeRoundedSearch01, color: ColorsManager.greyScale900, size: 20.sp),
                        )
                        ),
                      ),

                      SizedBox(
                        width: 12.w,
                      ),
                       Container(
                          
                        decoration: BoxDecoration(
                          border: BoxBorder.all(
                            color: ColorsManager.greyScale200,
                            width: 1.w
                          ),
                          borderRadius: BorderRadius.circular(32.r)
                        ),
                        child: 
                        Padding(
                          padding: EdgeInsets.all(10.0),
                        child: 
                        Stack(
                          children: [
                            HugeIcon(icon: HugeIcons.strokeRoundedNotification01, color: ColorsManager.greyScale900, size: 20.sp),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        )
                      )
                      )
                    ],
                  )
                ],
                ),
              ),
          
              SizedBox(height: 24.h,),
          
              
          
              Container(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: ColorsManager.secondary100,
                    borderRadius: BorderRadius.circular(16.r)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5.5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          color: ColorsManager.greyScale0
                        ),
                        child: HugeIcon(
                        icon: HugeIcons.strokeRoundedLocation01, 
                        size: 21.sp,
                        color: ColorsManager.primary800
                        , ),
                      ),
                          
                
                      Text("You Can Change Your Location to \nshow nearby villas",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.black
                      ),),
                          
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16.sp,
                        color: Colors.black,
                      )
                          
                          
                    ],
                  ),
                          
                ),
              ),
          
          
              SizedBox(
                height: 24.h,
              ),
          
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24.w),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Most Popular",
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
              ),
          
              SizedBox(
                height: 16.h,
              ),
          
          
            SizedBox(
            height: 250.h,
            child: PageView(
              controller: PageController(viewportFraction: 0.5),
              padEnds: false,
              scrollDirection: Axis.horizontal,
              children: [
                _buildCard(context, Property.fromJson({"id":"1", "image": "assets/images/popular_property.png", "title": "Luxury Villa", "description": "test", "location": "San Diego, CA", "beds": 3, "bathrooms": 4, "price": 250.0, "rating": "4.8"})),
                _buildCard(context, Property.fromJson({"id":"2", "image": "assets/images/popular_property.png", "title": "Luxury Villa", "description": "test", "location": "San Diego, CA", "beds": 3, "bathrooms": 4, "price": 250.0, "rating": "4.8"})),
                _buildCard(context, Property.fromJson({"id":"3", "image": "assets/images/popular_property.png", "title": "Luxury Villa", "description": "test", "location": "San Diego, CA", "beds": 3, "bathrooms": 4, "price": 250.0, "rating": "4.8"})),
                _buildCard(context, Property.fromJson({"id":"4", "image": "assets/images/popular_property.png", "title": "Luxury Villa", "description": "test", "location": "San Diego, CA", "beds": 3, "bathrooms": 4, "price": 250.0, "rating": "4.8"})),
                _buildCard(context, Property.fromJson({"id":"5", "image": "assets/images/popular_property.png", "title": "Luxury Villa", "description": "test", "location": "San Diego, CA", "beds": 3, "bathrooms": 4, "price": 250.0, "rating": "4.8"})),
              ],
            ),
          ),

          
              SizedBox(
                height: 24.h,
              ),
          
       Column(
  children: [

              Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Recomended for you",
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
              ),
          
              SizedBox(
                height: 16.h,
              ),
          
                SizedBox(
      height: 45.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        itemBuilder: (context, index) {
          final filter = filters[index];
          final isActive = selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() => selectedIndex = index);
            },
            child:Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
              margin: EdgeInsets.symmetric(horizontal: 8.w),
                decoration: BoxDecoration(
                  color: isActive ? ColorsManager.primary700 : Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  border: BoxBorder.all(
                    color: ColorsManager.greyScale100,
              
                  )
              
                ),
                        
                       
                child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    if (index == 0) 
      SizedBox(width: 10.w),
    
             if (index != 0) ...[
                Image.asset(filter["icon"]!, width: 20, height: 20),
                SizedBox(width: 10.w)
             ],

    Text(
      filter["name"]!,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 14.sp,
        color: isActive ? Colors.white : ColorsManager.greyScale400,
        fontWeight: FontWeight.w600,
      ),
    ),

    if (index == 0) 
      SizedBox(width: 10.w),
    
  ],
),

              
            ),
          );
        },
      ),
    ),

    SizedBox(
      height: 16.h,
    ),
    


    SizedBox(
      height: 500.h,
      child: ListView.separated(
      physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: properties.length,
        itemBuilder: (context,index) {
         final property = properties[index];

          return 
          Padding(
      padding: EdgeInsets.only(bottom: 10, top: 10),
      child: 
          Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Image.asset(
        property['image']!,
        width: 60.w,
      ),
      SizedBox(
        width: 12.w,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(property['name']!),
            Row(
            children: [
              HugeIcon(icon: HugeIcons.strokeRoundedLocation01, color: ColorsManager.greyScale200, size: 14.sp),
              SizedBox(width: 4.w,),
              Text(property['location']!, style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.normal,
            color: ColorsManager.greyScale200
          ),)
            ],
          ),
SizedBox(
  height: 8.h,
),
RichText(
  text: TextSpan(
    text: property['price']!,
    style: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
      color: Colors.blue
    ),
    children: [
      TextSpan(
        text: " / night",
        style: TextStyle(
          color: Colors.black
        )
      )
    ]
  )
  )

        ],
      ),

      Container(
        margin: EdgeInsets.only(left: 100.w),
        padding: EdgeInsets.all(6),
        child: Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.yellow,
              size: 16.sp,
            ),
            SizedBox(width: 4.w),
            Text(
              property['rate']!,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
              ),
            ),
          ],
        ),

      )

    ],
          )
          );
        }, separatorBuilder: (BuildContext context, int index) { 
          return  Divider(
      color: ColorsManager.greyScale100, 
      thickness: 1,  
      indent: 16,   
      endIndent: 16, 
    );
         },),
    ),


    SizedBox(
      height: 100.h,
    ),


    
  ],

          )



            ],
          ),
          
          ),
        
      
    );
    
    
  }
}

Widget _buildCard(BuildContext context, Property property) {
  return InkWell(
    onTap: (){
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => PropertyDetails(
          property: property,
        ))
      );
    },
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        image: DecorationImage(
          image: AssetImage(property.image),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.r),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.6),
                  ],
                ),
              ),
            ),
          ),
    
          Positioned(
            right: 12.w,
            top: 12.h,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 20.sp,
              ),
            ),
          ),
    
          Positioned(
            left: 12.w,
            right: 12.w,
            bottom: 12.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  property.title,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5.h),
                
                    Text(
                      property.location,
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
    
                SizedBox(height: 4.h),
    
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    Text(
                     property.price.toString(),
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
    
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16.sp,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          property.rating,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

