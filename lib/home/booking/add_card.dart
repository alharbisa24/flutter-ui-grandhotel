import 'package:finans/core/theming/colors.dart';
import 'package:finans/home/booking/payment_complete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class AddCardWidget extends StatefulWidget {
  const AddCardWidget({super.key});

  @override
  State<AddCardWidget> createState() => _AddCardWidgetState();
}

class _AddCardWidgetState extends State<AddCardWidget> {

late TextEditingController card_number;
late TextEditingController holder_name;
late TextEditingController expire_date;
late TextEditingController cvv_code;


@override
  void initState() {
    super.initState();
    card_number = TextEditingController();
    holder_name = TextEditingController();
    expire_date = TextEditingController();
    cvv_code = TextEditingController();

card_number.addListener(() {
  String text = card_number.text;

  text = text.replaceAll('-', '');

  if (text.length > 16) {
    text = text.substring(0, 16);
  }

  String newText = '';
  for (int i = 0; i < text.length; i++) {
    newText += text[i];
    if ((i + 1) % 4 == 0 && i != text.length - 1) {
      newText += '-';
    }
  }

  if (card_number.text != newText) {
    card_number.value = TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }

  setState(() {});
});

  holder_name.addListener(() => setState(() {}));
  
expire_date.addListener(() {
  String text = expire_date.text;

  text = text.replaceAll('/', '');

  if (text.length > 4) {
    text = text.substring(0, 4);
  }

  String newText = '';
  if (text.length <= 2) {
    newText = text;
  } else {
    newText = text.substring(0, 2) + '/' + text.substring(2);
  }

  if (expire_date.text != newText) {
    expire_date.value = TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
  
  setState(() {});
});

  
  cvv_code.addListener(() => setState(() {}));
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.mainBackGround,
      body: SafeArea(
        child: 
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
                         "Add New Card",
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
          Container(
            decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/creditcard.png"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(16)
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                  Image.asset(
                    "assets/images/mastercard.png"
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text("MasterCard", style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.normal,
                    color: Colors.white
                  ),)
                ],),

                SizedBox(
                  height: 24.h,
                ),

                Text(  card_number.text.isEmpty ? "**** **** **** ****" : card_number.text
                , style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: ColorsManager.greyScale25
                ),),
                SizedBox(
                  height: 24.h,
                ),
                Text("Holder Name", style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.normal,
                  color: ColorsManager.greyScale0
                ),),
                SizedBox(
                  height: 4.h,
                ),
                  Text(holder_name.text.isEmpty ? "Full Name" : holder_name.text, style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: ColorsManager.greyScale0
                ),),
              ],
            ),
          ),
  SizedBox(
    height: 24.h,
  ),

  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("Card Number", style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500
      ),),
      SizedBox(
        height: 8.h,
      ),
      CardInput(placeholder: "Enter Card Number", controller: card_number, isNumber: true)
    ],
  ),
    SizedBox(
    height: 24.h,
  ),
   Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       Text("Card Holder Name", style: TextStyle(
         fontSize: 14.sp,
         fontWeight: FontWeight.w500
       ),),
       SizedBox(
         height: 8.h,
       ),
       CardInput(placeholder: "Enter Holder Name", controller: holder_name,)
     ],
   ),
    SizedBox(
    height: 24.h,
  ),

  Row(
  children: [
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Expire Date", style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500
          )),
          SizedBox(height: 8.h),
          CardInput(placeholder: "MM/YY", controller: expire_date,
          isDate: true,),
        ],
      ),
    ),

    SizedBox(width: 16.w),

    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("CVV", style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500
          )),
          SizedBox(height: 8.h),
          CardInput(placeholder: "CVV", controller: cvv_code, isCVV: true),
        ],
      ),
    ),
  ],
),
Spacer(),
    TextButton(
                onPressed: () {

                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => PaymentCompleteWidget())
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
                  "Add Card",
                  style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                ),
              )

],
          ),
         )
      )

         );
  }
}


class CardInput extends StatefulWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String placeholder;
  final bool isDate;
  final bool isCVV;
  final bool isNumber;
  const CardInput({
    Key? key,
    this.controller,
    this.validator,
    required this.placeholder,
    this.isDate = false,
    this.isCVV = false,
    this.isNumber= false
  }) : super(key: key);

  @override
  State<CardInput> createState() => _InputState();
}


class _InputState extends State<CardInput> {


  @override
  Widget build(BuildContext context) {



    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      keyboardType: widget.isDate ? TextInputType.number : (widget.isNumber ? TextInputType.number : TextInputType.text),
      maxLength: widget.isDate ? 5 : (widget.isCVV ? 3 : (widget.isNumber ? 19 : null)),
      
      decoration: InputDecoration(
      isCollapsed:false,
      isDense: false,
       counterText: "",
        hintText: widget.placeholder,
        hintStyle: TextStyle(
          color: ColorsManager.greyScale300,
          fontSize: 12.sp,
        ),
        
        filled: true,
        fillColor: ColorsManager.greyScale0,
        
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: ColorsManager.greyScale100,
            width: 1,
          ),
        ),
        
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            color: ColorsManager.greyScale100,
            width: 1,
          ),
        ),
        
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
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
    );
  }
}
