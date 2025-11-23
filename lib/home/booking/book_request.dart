import 'package:finans/core/theming/colors.dart';
import 'package:finans/home/booking/checkout.dart';
import 'package:finans/models/property.dart';
import 'package:flutter/material.dart';
import 'package:flutter_grid_calendar/flutter_grid_calendar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';

class BookRequestWidget extends StatelessWidget {
    final Property property;

  const BookRequestWidget({super.key, required this.property});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
   Container(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w
          ),
          child: Column(
            children: [
             Row(
               children: [
                 IconButton(
                       icon: Icon(Icons.arrow_back, color: Colors.black),
                       onPressed: () => Navigator.pop(context),
                 ),
                       
                 Expanded(
                       child: Center(
             child: Text(
               "Request to book",
               style: TextStyle(
                 fontSize: 18.sp,
                 fontWeight: FontWeight.w600,
                 color: Colors.black,
               ),
             ),
                       ),
                 ),
                       
                 Opacity(
                       opacity: 0,
                       child: IconButton(
             icon: Icon(Icons.arrow_back), 
             onPressed: null,
                       ),
                 ),
               ],
             ),
          
          SizedBox(
            height: 24.h,
          ),
          
       Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Date", style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600
                  ),),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
              
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        child: CalendarWidget(
                          onDateSelected: (selectedDate) {
                            print('Selected date: $selectedDate');
                            Navigator.pop(context);
                          },
                          initialDate: DateTime.now(),
                          primaryColor: Colors.blue,
                          secondaryColor: Colors.amber,
                        ),
                      );
                    },
                  );
                },
                child: checkWidget("Check- In"),
              ),

                GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        child: CalendarWidget(
                          onDateSelected: (selectedDate) {
                            print('Selected date: $selectedDate');
                            Navigator.pop(context);
                          },
                          initialDate: DateTime.now(),
                          primaryColor: Colors.blue,
                          secondaryColor: Colors.amber,
                        ),
                      );
                    },
                  );
                },
                child: checkWidget("Check- Out"),
              ),
              
                    
                  ],
                  
                  ),
              
          
          
            SizedBox(
              height: 24.h
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Guests", style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600
            ),),
          
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove, size: 20.sp),
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.blue.withOpacity(0.1),
                    foregroundColor: Colors.blue,
                    padding: EdgeInsets.all(8),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                SizedBox(width: 16.w),
                Text(
                  "2",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 16.w),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add, size: 20.sp),
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.all(8),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
              ],
            ),
            
          
                
                
              ]
            
       ),
                                      SizedBox(
              height: 24.h
            ),
            
   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Pay With", style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600
                  ),
                  textAlign: TextAlign.left,
                  ),
              
                ],
              ),

              SizedBox(
                height: 16.h,
              ),


              Container(
                decoration: BoxDecoration(
                  border: BoxBorder.all(
                    color: ColorsManager.greyScale200,
                    width: 1
                  ),
                  borderRadius: BorderRadius.circular(16)
                ),
                padding: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: ColorsManager.greyScale50,
                          borderRadius: BorderRadius.circular(39.68)
                        ),
                        child: HugeIcon(icon: HugeIcons.strokeRoundedCreditCard, color: Colors.black, size: 24.sp,),
                      ),
                  
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    children: [
                      Text("FastPayz", style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                      ),),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text("******6587", style: TextStyle(
                        fontSize: 14.sp,
                        color: ColorsManager.greyScale400,
                        fontWeight: FontWeight.normal
                      ),)
                    ],
                  ),
  ],
                  ),
                  TextButton(onPressed: (){}, child: Text("Edit"), 
                  style: TextButton.styleFrom(
                    foregroundColor: ColorsManager.mainBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32)
                    ),
                    side: BorderSide(
                      color: ColorsManager.mainBlue
                    )
                  ),)
                ],),
              )
            ],
            
   ),

      SizedBox(
                height: 16.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Payment Details", style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                  ),),
                  SizedBox(
                    height: 10.h,
                  ),

                  Row(
                    children: [
                    Text("Total : 2 Night", style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: ColorsManager.greyScale400
                    ),),
                    Spacer(),
                    Text("\$400", style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black
                    ),)
                  ],),
                  SizedBox(
                    height: 10.h,
                  ),
                       Row(
                    children: [
                    Text("Cleaning Fee", style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: ColorsManager.greyScale400
                    ),),
                    Spacer(),
                    Text("\$5", style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black
                    ),)
                  ],),
                  SizedBox(
                    height: 10.h,
                  ),
                       Row(
                    children: [
                    Text("Service Fee", style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: ColorsManager.greyScale400
                    ),),
                    Spacer(),
                    Text("\$5", style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black
                    ),)
                  ],),
                  SizedBox(
                    height: 10.h,
                  ),
                  Divider(
                    color: ColorsManager.greyScale200,
                  ),
                  

                     Row(
                    children: [
                    Text("Total Payment:", style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black
                    ),),
                    Spacer(),
                    Text("\$410", style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black
                    ),)
                  ],),
                  SizedBox(
                    
                  ),
SizedBox(height: 50.h),

                  
                ],
              ),
        TextButton(onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => CheckOutBookingWidget(
              property: property,
            ))
          );
        }, child: 
                  Text("Continue"),
                  style: TextButton.styleFrom(
                    backgroundColor: ColorsManager.mainBlue,
                    foregroundColor: Colors.white,
                    minimumSize: Size(double.infinity, 56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)
                    )
                  ),
                  )
                  
          
          ],
                    ),

   
              
            
            
          
              ],
            ),
       
          
        
      )),
    );
  }
}

Widget checkWidget(String type){
  return Container(
    padding: EdgeInsets.all(
      24
    ),
    margin: EdgeInsets.symmetric(horizontal: 4.w),
    decoration: BoxDecoration(
      color: ColorsManager.greyScale50,
      borderRadius: BorderRadius.circular(
        16
      )
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(

          children: [
          HugeIcon(icon: HugeIcons.strokeRoundedCalendar01, color: Colors.black, size: 16.sp,),
          SizedBox(
            width: 10.w,
          ),
          Text(type, style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600
          ),)

        ],),
        SizedBox(
          height: 14.h,
        ),

        Text("Nov 12, 2024", style: TextStyle(
          color: ColorsManager.greyScale400
        ),)
      ],
    ),

  );
}