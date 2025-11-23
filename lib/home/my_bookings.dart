import 'package:finans/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:hugeicons/hugeicons.dart';

class MyBookingsHomePage extends StatefulWidget {
  const MyBookingsHomePage({super.key});

  @override
  State<MyBookingsHomePage> createState() => _MyBookingsHomePageState();
}

class _MyBookingsHomePageState extends State<MyBookingsHomePage> {
  String selectedType = 'booked';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: 
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
          Center(
            child: Text(
              'My Bookings',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 25.h),
          SearchInput(placeholder: "Search..."),
          SizedBox(
            height: 25.h,
          ),

          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            decoration: BoxDecoration(
              color: ColorsManager.greyScale50,
              borderRadius: BorderRadius.circular(32)
            ),
            padding: EdgeInsets.all(5),
            child: Stack(
              children: [
                AnimatedAlign(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  alignment: selectedType == 'booked' ? Alignment.centerLeft : Alignment.centerRight,
                  child: FractionallySizedBox(
                    widthFactor: 0.5,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 22.h),
                      decoration: BoxDecoration(
                        color: ColorsManager.greyScale0,
                        borderRadius: BorderRadius.circular(32),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedType = 'booked';
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          color: Colors.transparent,
                          child: Text(
                            'Booked',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: selectedType == 'booked' ? Colors.black : ColorsManager.greyScale400,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedType = 'history';
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          color: Colors.transparent,
                          child: Text(
                            'History',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: selectedType == 'history' ? Colors.black : ColorsManager.greyScale400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 25.h),


propertyWidget(
     "Sapphire Cove Hotel",
      "assets/images/serenity_property.png",
      "Key West, FL",
      3,
      3,
      "290",
      4.5,
      "12 - 14 Nov 2024",
      2,
      1
),
SizedBox(
  height: 8.h,
),
propertyWidget(
     "Sapphire Cove Hotel",
      "assets/images/serenity_property.png",
      "Key West, FL",
      3,
      3,
      "290",
      4.5,
      "12 - 14 Nov 2024",
      2,
      1
),
SizedBox(
  height: 8.h,
),
propertyWidget(
     "Sapphire Cove Hotel",
      "assets/images/serenity_property.png",
      "Key West, FL",
      3,
      3,
      "290",
      4.5,
      "12 - 14 Nov 2024",
      2,
      1
),
SizedBox(
  height: 8.h,
),
propertyWidget(
     "Sapphire Cove Hotel",
      "assets/images/serenity_property.png",
      "Key West, FL",
      3,
      3,
      "290",
      4.5,
      "12 - 14 Nov 2024",
      2,
      1
),

            ],
          ),
        ),
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
          padding: EdgeInsets.symmetric(
            vertical: 20.h
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  controller: scrollController,
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
                  )
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
                          border: BoxBorder.all(
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

Widget propertyWidget(
  String title,
  String image,
  String location,
  int beds,
  int bathrooms,
  String price,
  double rating,
  String date,
  int nbOfGuests,
  int nbOfRooms,
) {
  return Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      border: Border.all(
        color: ColorsManager.greyScale100,
      ),
      borderRadius: BorderRadius.circular(16),
    ),
    child: IntrinsicHeight(
      child: Row(
     crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.r),
            child: Image.asset(
              image,
              width: 80.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 7.w,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Row(
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
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
      
                SizedBox(
                  height: 8.h,
                ),
      
                Row(
                  children: [
                    HugeIcon(
                        icon: HugeIcons.strokeRoundedLocation01,
                        color: ColorsManager.greyScale300,
                        size: 14.sp),
                    SizedBox(
                      width: 4.w,
                    ),
                    Flexible(
                      child: Text(
                        location,
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                            color: ColorsManager.greyScale300),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
      
                SizedBox(
                  height: 8.h,
                ),
      RichText(
        text: TextSpan(
      text: "\$$price",
      style: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
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
        ),
                Divider(
                  color: ColorsManager.greyScale100,
                  thickness: 1,
                  indent: 16,
                  endIndent: 16,
                ),
      
                SizedBox(
                  height: 8.h,
                ),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        HugeIcon(icon: HugeIcons.strokeRoundedCalendar01),
                        SizedBox(width: 10.w),
                        Text("Date"),
                      ],
                    ),
                    Text(date),
                  ],
                ),
      
                SizedBox(
                  height: 8.h,
                ),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        HugeIcon(icon: HugeIcons.strokeRoundedUser),
                        SizedBox(width: 10.w),
                        Text("Guests"),
                      ],
                    ),
                    Text("$nbOfGuests Guests ($nbOfRooms Room)"),
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
