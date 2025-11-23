import 'package:finans/core/theming/colors.dart';
import 'package:finans/home/booking/add_card.dart';
import 'package:finans/models/property.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hugeicons/hugeicons.dart';

class CheckOutBookingWidget extends StatelessWidget {
    final Property property;

  const CheckOutBookingWidget({super.key, required this.property});

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
                       child: Text(
                         "Checkout",
                         style: TextStyle(
                           fontSize: 18.sp,
                           fontWeight: FontWeight.w600,
                           color: Colors.black,
                         ),
                         textAlign: TextAlign.center,
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
          
propertyDetails(
  property
),

 SizedBox(
        height: 24.h,
      ),
Container(
  decoration: BoxDecoration(
    border: BoxBorder.all(
      color: ColorsManager.greyScale100,
      width: 1.w
    ),
    borderRadius: BorderRadius.circular(16.r),
    ),
    padding: EdgeInsets.all(16),
  
    
  width: double.infinity,
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Your Booking",
        style: TextStyle(
          color: ColorsManager.mainBlue,
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),
      ),

      SizedBox(height: 6.h,),

      
              bookingDetails(
                 HugeIcons.strokeRoundedCalendar01, 
                 "Dates",
                 "12 - 14 Nov 2024"
              ),
              SizedBox(
                height: 10.h
              ),
              bookingDetails(
                 HugeIcons.strokeRoundedUser, 
                 "Guest",
                 "2 Guests (1 Room)"
              ),
                        SizedBox(
                height: 10.h
              ),
              bookingDetails(
                 HugeIcons.strokeRoundedBuilding01, 
                 "Room type",
                 "Queen Room"
              ),
                           SizedBox(
                height: 10.h
              ),
              bookingDetails(
                 HugeIcons.strokeRoundedSmartPhone01, 
                 "Phone",
                 "0214345646"
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
  height: 1,
  decoration: BoxDecoration(
    border: Border(
      top: BorderSide(
        color: Colors.grey,
        width: 1,
        style: BorderStyle.solid, 
      ),
    ),
  ),
),
SizedBox(
  height: 16.h,
),
      Text(
        "Price Details",
        style: TextStyle(
          color: ColorsManager.mainBlue,
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
        ),
      ),

      SizedBox(height: 6.h),

              bookingDetails(
                null,
                 "Price",
                 "\$"+property.price.toString()
              ),
              SizedBox(
                height: 10.h
              ),
              bookingDetails(
                null,
                 "Admin fee",
                 "\$2.50"
              ),
                        SizedBox(
                height: 10.h
              ),
              bookingDetails(
                null,
                 "Total price",
                 "\$141.50"
              ),
                           SizedBox(
                height: 10.h
              ),
              bookingDetails(
                null,
                 "Phone",
                 "0214345646"
              ),
       

                  
    ],
  ),
),
       SizedBox(
                height: 24.h,
              ),


 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
        Text(
        "Promo",
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 10.h,
      ),

      InkWell(
        onTap: (){
           showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => SelectPromoSheet(),
    );
        },
        child: Container(
         decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.08),
            border: BoxBorder.all(
        color: ColorsManager.greyScale100,
        width: 1
            ),
            borderRadius: BorderRadius.circular(16.r),
            ),
            padding: EdgeInsets.all(16),
          
            
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                HugeIcon(icon: 
              HugeIcons.strokeRoundedDiscount, color: ColorsManager.mainBlue,),
              SizedBox(
                width: 14.w,
              ),
              Text("Select", style: TextStyle(
                color: ColorsManager.mainBlue
              ),),
              ],),
              HugeIcon(icon: 
              HugeIcons.strokeRoundedArrowRight01, color: ColorsManager.mainBlue)
            ],
          ),
        ),
      ),

      SizedBox(
        height: 40.h,
      ),

           TextButton(onPressed: (){
           showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => SelectPaymentMethodSheet(),
    );
        }, child: 
                  Text("Select Payment"),
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
          )
      ),
   );
          
          }
}

Widget propertyDetails(Property property){
  return Padding(
      padding: EdgeInsets.only(bottom: 10, top: 10),
      child: 
          Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(8.r),
        child: Image.asset(
          property.image,
          width: 60.w,
          height: 60.h,
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(
        width: 12.w,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(property.title),
          SizedBox(
            height: 4.h,
          ),
            Row(
            children: [
              HugeIcon(icon: HugeIcons.strokeRoundedLocation01, color: ColorsManager.greyScale200, size: 14.sp),
              SizedBox(width: 4.w,),
              Text(property.location, style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.normal,
            color: ColorsManager.greyScale200
          ),)
            ],
          ),
SizedBox(
  height: 4.h,
),
RichText(
  text: TextSpan(
    text: "\$"+property.price.toString(),
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
              color: Colors.amber,
              size: 16.sp,
            ),
            SizedBox(width: 4.w),
            Text(
              property.rating,
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.black,
              ),
            ),
          ],
        ),

      ),

     
    ],
          )
          );
}

Widget bookingDetails(List<List<dynamic>>? icon, String title, String value){
           return Row(
                    children: [
                   Row(
                    children: [
                      if(icon != null) ...[
                      HugeIcon(icon: icon, size: 14.sp,),
                      SizedBox(
                        width: 10.w,
                      ),
                      ],
                       Text(title, style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black
                    ),),
                    ],
                   ),
                    Spacer(),
                    Text(value, style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),)
                  ],
           );
           
}
 
 class SelectPromoSheet extends StatefulWidget {
  const SelectPromoSheet({super.key});

  @override
  State<SelectPromoSheet> createState() => _SelectPromoSheetState();
}


class _SelectPromoSheetState extends State<SelectPromoSheet> {

final List<Map<String, String>> coupons = [
  {"discount": "50% cashback", "expiresDays": "3"},
  {"discount": "30% cashback", "expiresDays": "5"},
  {"discount": "40% discount", "expiresDays": "10"},
  {"discount": "90% cashback", "expiresDays": "1"},
  {"discount": "10% discount", "expiresDays": "2"},

];
int selectedCouponIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.65,
      minChildSize: 0.4,
      maxChildSize: 0.95,
      builder: (context, scrollController) {
        return Container(
          padding: EdgeInsets.symmetric(
            vertical: 20.h,
            horizontal: 20.w
          ),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: Column(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Coupon", style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700
                  ),),
                  InkWell(
                    onTap: (){
    Navigator.pop(context);

                    },
                    child:HugeIcon(icon: 
                  HugeIcons.strokeRoundedCancel01, size: 20.sp,),
                    
                  )
                ],
              ),
             
              SizedBox(
                height: 24.h,
              ),
              Expanded(
                child: StatefulBuilder(
                  builder: (context, setState) {
                    
                    return SizedBox(
                      height: 500.h,
                      child: ListView.separated(
                        itemCount: coupons.length,
                        itemBuilder: (context, index) {
                          final coupon = coupons[index];
                          final isSelected = selectedCouponIndex == index;
                          
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedCouponIndex = index;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 20.h,
                                horizontal: 15.w
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16.r),
                                border: Border.all(
                                  color: isSelected ? ColorsManager.mainBlue : Colors.transparent,
                                  width: 2.w,
                                ),
                              ),
                              child: Row(
                                children: [
                                  HugeIcon(
                                    icon: HugeIcons.strokeRoundedDiscount,
                                    color: ColorsManager.mainBlue,
                                  ),
                                  SizedBox(width: 14.w),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${coupon['discount']}",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w700,
                                            color: ColorsManager.mainBlue
                                          ),
                                        ),
                                        SizedBox(height: 4.h),
                                        Row(
                                          children: [
                                            Text(
                                              "Expires in ${coupon['expiresDays']} days",
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.normal,
                                                color: ColorsManager.greyScale300
                                              ),
                                            ),
                                            SizedBox(width: 5.w),
                                            Text(
                                              "See Details",
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.normal,
                                                color: ColorsManager.mainBlue
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (isSelected)
                                    HugeIcon(
                                      icon: HugeIcons.strokeRoundedCheckmarkBadge01,
                                      color: ColorsManager.mainBlue,
                                      size: 24.sp,
                                    ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(height: 12.h);
                        },
                      ),
                    );
                  }
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    coupons[selectedCouponIndex], 
                  );
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 56.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
                child: Text(
                  "Select Coupon",
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                ),
              )
            
          
      
            ],
          )
        );
      }
    );
    
  }
}

class SelectPaymentMethodSheet extends StatefulWidget {
  const SelectPaymentMethodSheet({super.key});

  @override
  State<SelectPaymentMethodSheet> createState() => _SelectPaymentMethodSheetState();
}

class _SelectPaymentMethodSheetState extends State<SelectPaymentMethodSheet> {
  String selectedPaymentMethod = "visa";

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.65,
      minChildSize: 0.4,
      maxChildSize: 0.95,
      builder: (context, scrollController) {
        return Container(
          padding: EdgeInsets.symmetric(
            vertical: 20.h,
            horizontal: 20.w
          ),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: Column(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Payment Method", style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700
                  ),),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: HugeIcon(icon: 
                      HugeIcons.strokeRoundedCancel01, size: 20.sp,),
                  )
                ],
              ),
              SizedBox(height: 24.h),
              
              // Visa option
              InkWell(
                onTap: () {
                  setState(() {
                    selectedPaymentMethod = "visa";
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.h,
                    horizontal: 15.w
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(
                      color: selectedPaymentMethod == 'visa' ? ColorsManager.mainBlue : Colors.transparent,
                      width: 2.w,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/Visa.png",
                        width: 30.w,
                        height: 30.h,
                      ),
                      SizedBox(width: 14.w),
                      Expanded(
                        child: Text(
                          "Visa",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                          ),
                        ),
                      ),
                      if (selectedPaymentMethod == 'visa')
                        HugeIcon(
                          icon: HugeIcons.strokeRoundedCheckmarkSquare01,
                          color: ColorsManager.mainBlue,
                          size: 24.sp,
                        ),
                    ],
                  ),
                ),
              ),
              
              SizedBox(height: 12.h),
              
              InkWell(
                onTap: () {
                  setState(() {
                    selectedPaymentMethod = "mastercard";
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.h,
                    horizontal: 15.w
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(
                      color: selectedPaymentMethod == 'mastercard' ? ColorsManager.mainBlue : Colors.transparent,
                      width: 2.w,
                    ),
                  ),
                  child: Row(
                    children: [
                     Image.asset(
                        "assets/images/mastercard.png",
                        width: 30.w,
                        height: 30.h,
                      ),
                      SizedBox(width: 14.w),
                      Expanded(
                        child: Text(
                          "Mastercard",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                          ),
                        ),
                      ),
                      if (selectedPaymentMethod == 'mastercard')
                        HugeIcon(
                          icon: HugeIcons.strokeRoundedCheckmarkSquare01,
                          color: ColorsManager.mainBlue,
                          size: 24.sp,
                        ),
                    ],
                  ),
                ),
              ),
              
              SizedBox(height: 12.h),
              
              // Add debit card option
              InkWell(
                onTap: () {
                  setState(() {
                    selectedPaymentMethod = "add_debit";
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 20.h,
                    horizontal: 15.w
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(
                      color: selectedPaymentMethod == 'add_debit' ? ColorsManager.mainBlue : Colors.transparent,
                      width: 2.w,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: ColorsManager.greyScale50,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        padding: EdgeInsets.all(8),
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorsManager.mainBlue,
                            borderRadius: BorderRadius.circular(99)

                          ),
                          padding: EdgeInsets.all(
                            2
                          ),
                          child: HugeIcon(
                        icon: HugeIcons.strokeRoundedAdd01,
                        color: Colors.white,
                      ),
                        ),
                      ),
                      SizedBox(width: 14.w),
                      Expanded(
                        child: Text(
                          "Add Debit Card",
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black
                          ),
                        ),
                      ),
                      if (selectedPaymentMethod == 'add_debit')
                        HugeIcon(
                          icon: HugeIcons.strokeRoundedCheckmarkSquare01,
                          color: ColorsManager.mainBlue,
                          size: 24.sp,
                        ),
                    ],
                  ),
                ),
              ),
              
              Spacer(),
              
              TextButton(
                onPressed: () {
                  Navigator.pop(context, selectedPaymentMethod);
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AddCardWidget())
                    );
                  
                },
                style: TextButton.styleFrom(
                  backgroundColor: ColorsManager.mainBlue,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 56.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
                child: Text(
                  "Confirm and Pay",
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                ),
              )
            ],
          )
        );
      }
    );
  }
}