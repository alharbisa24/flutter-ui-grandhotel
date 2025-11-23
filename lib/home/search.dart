import 'package:finans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:hugeicons/hugeicons.dart';

class SearchHomeWidget extends StatefulWidget {
  const SearchHomeWidget({super.key});

  @override
  State<SearchHomeWidget> createState() => _SearchHomeWidgetState();
}

class _SearchHomeWidgetState extends State<SearchHomeWidget> {
    int selectedIndex = 0; 

    final List<Map<String, String>> filters = [
    {"name": "All", "icon": ""}, 
    {"name": "Villa", "icon": "assets/icons/villa.png"},
    {"name": "Hotel", "icon": "assets/icons/hotel.png"},
    {"name": "Apartment", "icon": "assets/icons/apartment.png"},
    {"name": "Apartment", "icon": "assets/icons/apartment.png"},
    {"name": "Apartment", "icon": "assets/icons/apartment.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      SingleChildScrollView(
        child: Column(
          children: [
        
            Container(
                      padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 16.h,
          
        ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                    child: HugeIcon(icon: 
                  HugeIcons.strokeRoundedArrowLeft01),
                  )
                ,
                Text("Search", style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold
                ),),
                
                  Container(
                        decoration: BoxDecoration(
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
                                width: 8.w,
                                height: 8.h,
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
              
              
              ],),
            ),
           
        
           SizedBox(
            height: 24.h,
           ),
        
           Container(
                    padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          
        ),
            child: SearchInput(placeholder: "Search...")),
        
        
           SizedBox(
            height: 16.h,
           ),
           
             SizedBox(
              height: 40.h,
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
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 4.h),
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
              height: 24.h,
            ),
            
            propertyWidget(
              "Sapphire Cove Hotel",
              "assets/images/serenity_property.png",
              "Key West, FL",
              3,
              3,
              "290",
              4.5
        
            ),
              propertyWidget(
              "Sapphire Cove Hotel",
              "assets/images/serenity_property.png",
              "Key West, FL",
              3,
              3,
              "290",
              4.5
        
            ),
              propertyWidget(
              "Sapphire Cove Hotel",
              "assets/images/serenity_property.png",
              "Key West, FL",
              3,
              3,
              "290",
              4.5
        
            ),
        
        
          ],
        )
      )),

    );
  }
}

class SearchInput extends StatefulWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String placeholder;
  const SearchInput({
    Key? key,
    this.controller,
    this.validator,
    required this.placeholder,
  }) : super(key: key);

  @override
  State<SearchInput> createState() => _SearchInputState();
}


class _SearchInputState extends State<SearchInput> {


  @override
  Widget build(BuildContext context) {



   return Container(
  decoration: BoxDecoration(
    border: Border.all(
      color: ColorsManager.greyScale100,
      width: 1.w,
    ),
    borderRadius: BorderRadius.circular(99),
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(width: 15.w),
      Icon(
        Icons.search,
        color: ColorsManager.greyScale400,
      ),
      Expanded(
        child: TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          decoration: InputDecoration(
            isCollapsed: false,
            isDense: false,
            hintText: widget.placeholder,
            labelStyle: TextStyle(
              color: ColorsManager.greyScale400,
              fontSize: 12.sp,
            ),
            filled: true,
            fillColor: Colors.transparent,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(99),
              borderSide: BorderSide(
                color: ColorsManager.greyScale100,
                width: 0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(99),
              borderSide: BorderSide(
                color: Color(0xFFF7F8F8),
                width: 1,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(99),
              borderSide: BorderSide(
                color: Colors.red,
                width: 1,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: Colors.red,
                width: 2,
              ),
            ),
          ),
        ),
      ),

      Container(
        width: 1.w,
        height: 30.h, 
        color: ColorsManager.greyScale200,
        margin: EdgeInsets.symmetric(horizontal: 12.w),
      ),

      InkWell(
        onTap: (){

 showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const FilterBottomSheet(),
    );
        },
        child: HugeIcon(
          icon: HugeIcons.strokeRoundedPreferenceHorizontal,
          size: 24.sp,
          color: ColorsManager.greyScale400,
        ),
      ),

      SizedBox(width: 15.w),
    ],
  ),
);

    
  }
}

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  double price = 200;
  bool instantBooking = false;

  List<String> locations = ["Riyadh", "Jeddah", "Dammam", "Mecca", "Tabuk"];
  String? selectedLocation;

  List<String> facilities = ["Wi-Fi", "Parking", "Pool", "Gym", "Breakfast"];
  List<String> selectedFacilities = [];
    double minValue = 1000000;
  double maxValue = 6000000;

  int selectedRating = 0;
    @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.65,
      minChildSize: 0.4,
      maxChildSize: 0.95,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  controller: scrollController,
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  children: [
                    Center(
                      child: Container(
                        width: 50.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(99),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text("Filter By", style:
                    TextStyle(fontSize: 18.sp, 
                    fontWeight: FontWeight.w600), 
                    textAlign: TextAlign.center,),

                    SizedBox(
                      height: 24.h,
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w
                        ),
                      child: 
                      Column(
                        children: [

                      
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Price", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600)),
                        Text("\$0-\$80", style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                          color: ColorsManager.greyScale300
                        ),)
                        ],
                      ),
                    

                    FlutterSlider(
            values: [minValue, maxValue],
            rangeSlider: true,
            max: 10000000,
            min: 1000,
            trackBar: FlutterSliderTrackBar(
              activeTrackBar: BoxDecoration(
                color: ColorsManager.mainBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              inactiveTrackBar: BoxDecoration(
                color: ColorsManager.mainBlue.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            handler: FlutterSliderHandler(
              decoration: BoxDecoration(
              ),
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorsManager.mainBlue, width: 3),
                  color: Colors.white,
                ),
              ),
            ),
            rightHandler: FlutterSliderHandler(
              decoration: BoxDecoration(),
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: ColorsManager.mainBlue, width: 3),
                  color: Colors.white,
                ),
              ),
            ),
            onDragging: (handlerIndex, lowerValue, upperValue) {
              setState(() {
                minValue = lowerValue;
                maxValue = upperValue;
              });
            },
          ),
                        ]
                      )
                    ),
                

                    SizedBox(height: 20.h),

                    Container(
                     padding: EdgeInsets.symmetric(
                          horizontal: 20.w
                        ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text("Instant Booking", style: TextStyle(
                            fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          )),
                          Text("Book without waiting for the host to respond", style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.normal,
                            color: ColorsManager.greyScale300
                          ),)
                          ],
                         ),
                      
                          Switch(
                            value: instantBooking,
                            onChanged: (v) => setState(() => instantBooking = v),
                            activeTrackColor: ColorsManager.mainBlue,
                            inactiveThumbColor: Colors.white,
                            inactiveTrackColor: Colors.grey.shade300,
                            trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
                      
                            
                          )
                        ],
                      ),
                    ),

                    SizedBox(height: 24.h),

              Container(
              padding: EdgeInsets.symmetric(
                    horizontal: 20.w
                  ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Location", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500)),
                            SizedBox(height: 16.h),
                           
                  ],
                ),
              ),
                 
                           
                            Container(
                              padding: EdgeInsets.only(
                                left: 32
                              ),
                              child: SizedBox(
                                height: 40.h,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: locations.length,
                                  separatorBuilder: (_, __) => SizedBox(width: 15.w),
                                  itemBuilder: (context, index) {
                                    final loc = locations[index];
                                    final selected = loc == selectedLocation;
                                    return GestureDetector(
                                      onTap: () => setState(() => selectedLocation = loc),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.w),
                                        decoration: BoxDecoration(
                                          color: selected ? ColorsManager.mainBlue : Colors.transparent,
                                          border: Border.all(
                                            color: ColorsManager.greyScale100,
                                          ),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Text(
                                          loc,
                                          style: TextStyle(
                                            color: selected ? Colors.white : ColorsManager.mainBlue,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),


                            SizedBox(height: 24.h),

              Container(
              padding: EdgeInsets.symmetric(
                    horizontal: 20.w
                  ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                            Text("Facilities", 
                            style: TextStyle(
                              fontSize: 14.sp, 
                              fontWeight: FontWeight.w500)),
                              SizedBox(height: 16.h),
                            Column(
                              children: facilities.map((f) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(f, style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.normal,
                                      color:ColorsManager.greyScale400
                                    ),),
                                    Checkbox(
                                  value: selectedFacilities.contains(f),
                                  activeColor: ColorsManager.mainBlue,
                                  side: BorderSide(
                                    color: ColorsManager.greyScale200,
                                  ),
                                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5), 
                    ),
                    
                                  onChanged: (v) {
                                    setState(() {
                                      v! ? selectedFacilities.add(f) : selectedFacilities.remove(f);
                                    });
                                  },
                                    ),

                                  ],
                                );
                              }).toList(),
                            ),
                  ]
                ),
              ),
                            SizedBox(height: 24.h),

              Container(
              padding: EdgeInsets.symmetric(
                    horizontal: 20.w
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                
                            Text("Rating", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            SizedBox(height: 10),
                            Row(
                              children: List.generate(5, (i) {
                                final rating = i + 1;
                                final selected = rating == selectedRating;
                                return GestureDetector(
                                  onTap: () => setState(() => selectedRating = rating),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.transparent,
                                  border: Border.all(
                                  color: selected ? Colors.blue : ColorsManager.greyScale100,
                            
                                ) 
                                 ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.star, 
                                        size: 18.sp,
                                        color: Colors.amberAccent,
                                        ),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Text(
                                      "$rating",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            ),
                  ],
                  ),
              ),
                            SizedBox(height: 24.h),
                  ],
                ),
              ),
              
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsManager.mainBlue,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    minimumSize: Size(double.infinity, 56.h),
                  ),
                  child: Text("Apply Filter", style: TextStyle(fontSize: 16.sp)),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}



Widget propertyWidget(String title, String image, String location, int beds, int bathrooms, String price, double rating){
  return Container(
    margin: EdgeInsets.symmetric(
      horizontal: 24.w,
      vertical: 12.h,
    ),
    child: Column(
      children: [
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
      ),
      height: 200,
      child: Stack(
        children: [
              
          ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Image.asset(
              image,
              width: double.infinity,
              height: 200.h,
              fit: BoxFit.cover,
            ),
          ),
 Positioned(
      top: 12.h,
      left: 12.w,
      right: 12.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(99.r),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.amberAccent,
                        size: 16.sp,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        rating.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),

                ),
              Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(99.r),
                  ),
                  child: Row(
                    children: [
                      HugeIcon(
                      icon: HugeIcons.strokeRoundedFavourite,
                        color: Colors.white,
                        size: 16.sp,
                      ),
                      
                    ],
                  ),

                ),
              ],
            )
        )
      
        ],
      ),
    ),
    SizedBox(
      height: 12.h,
    ),

    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                location,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: ColorsManager.greyScale400,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  HugeIcon(icon: 
                  HugeIcons.strokeRoundedBedDouble),
                  
                  SizedBox(
                    width: 5.w,
                  ),

                  Text(
                    "$beds Bed",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: ColorsManager.greyScale900,
                    ),
                  ),

SizedBox(
  width: 8.w,
),

Text(" • "),

SizedBox(
  width: 8.w,
),

                     HugeIcon(icon: 
                  HugeIcons.strokeRoundedToilet01),
                  
                  SizedBox(
                    width: 5.w,
                  ),

                  Text(
                    "$bathrooms Bathroooms",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: ColorsManager.greyScale900,
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "\$$price",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: Colors.blue
              ),
            ),
            Text(
              "Per Night",
              style: TextStyle(
                fontSize: 12.sp,
                color: ColorsManager.greyScale600,
              ),
            ),
          ],
        )

      ],
    )
      ],
    ),

  );
}