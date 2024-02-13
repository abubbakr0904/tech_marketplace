import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_marketplace/product1.dart';
import 'package:tech_marketplace/product_data.dart';
import 'package:tech_marketplace/product_name.dart';
import 'package:tech_marketplace/utils/images.dart';
import 'package:tech_marketplace/utils/stykes.dart';

class Catigories2 extends StatefulWidget {
  const Catigories2({super.key});

  @override
  State<Catigories2> createState() => _Catigories2State();
}

class _Catigories2State extends State<Catigories2> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    double pw = MediaQuery.of(context).size.width;
    double ph = MediaQuery.of(context).size.height;
    return Scaffold(
      body : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(
                  top: 61.h,
                  left: 20.w
              ),
              child : InkWell(onTap : (){
                Navigator.pop(context);

              } ,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: SvgPicture.asset(AppImaages.back))),
          SizedBox(height: 24.h,),
          Container(
            margin: EdgeInsets.only(
                left: 16.w
            ),
            child: Text("Categories" , style: AppTextStyle.interBold.copyWith(
                color : const Color(0xFF0A1034),
                fontSize: 24.sp
            ),),
          ),
          Expanded(
              child : SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(height: 25.h,),
                    InkWell(
                      onTap: (){
                        productName = "All";
                        imgProduct = [];
                        for(int i = 0 ; i < DataProduct.length ; i++) {imgProduct.add(DataProduct[i]);}
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>const Product1()));
                      },
                      child: Container(
                          width: pw,
                          padding: EdgeInsets.symmetric(vertical: 28.h , horizontal: 24.w),
                          margin: EdgeInsets.symmetric(horizontal: 16.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(6.r)
                              ),
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(0 , 1),
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius : 1,
                                    blurRadius: 40
                                )
                              ],
                              color : Colors.white
                          ),
                          child : Text("All" , style: AppTextStyle.interSemiBold.copyWith(
                              color: const Color(0xFF0A1034),
                              fontSize: 18.sp
                          ),)
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    InkWell(
                      onTap: (){
                        productName = "Computers";
                        imgProduct = [];
                        for(int i = 0 ; i < DataProduct.length ; i++) {if(DataProduct[i].categories == productName) imgProduct.add(DataProduct[i]);}
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>const Product1()));
                      },
                      child: Container(
                          width: pw,
                          padding: EdgeInsets.symmetric(vertical: 28.h , horizontal: 24.w),
                          margin: EdgeInsets.symmetric(horizontal: 16.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(6.r)
                              ),
                              boxShadow:[
                                BoxShadow(
                                    offset: Offset(0 , 1),
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius : 1,
                                    blurRadius: 40
                                )
                              ],
                              color : Colors.white
                          ),
                          child : Text("Computers" , style: AppTextStyle.interSemiBold.copyWith(
                              color: const Color(0xFF0A1034),
                              fontSize: 18.sp
                          ),)
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    InkWell(
                      onTap: (){
                        productName = "Accessories";
                        imgProduct = [];
                        for(int i = 0 ; i < DataProduct.length ; i++) {if(DataProduct[i].categories == productName) imgProduct.add(DataProduct[i]);}
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>const Product1()));
                      },
                      child: Container(
                          width: pw,
                          padding: EdgeInsets.symmetric(vertical: 28.h , horizontal: 24.w),
                          margin: EdgeInsets.symmetric(horizontal: 16.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(6.r)
                              ),
                              boxShadow:[
                                BoxShadow(
                                    offset: Offset(0 , 1),
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius : 1,
                                    blurRadius: 40
                                )
                              ],
                              color : Colors.white
                          ),
                          child : Text("Accessories" , style: AppTextStyle.interSemiBold.copyWith(
                              color: const Color(0xFF0A1034),
                              fontSize: 18.sp
                          ),)
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    InkWell(
                      onTap: (){
                        productName = "Smartphones";
                        imgProduct = [];
                        for(int i = 0 ; i < DataProduct.length ; i++) {if(DataProduct[i].categories == productName) imgProduct.add(DataProduct[i]);}
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>const Product1()));
                      },
                      child: Container(
                          width: pw,
                          padding: EdgeInsets.symmetric(vertical: 28.h , horizontal: 24.w),
                          margin: EdgeInsets.symmetric(horizontal: 16.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(6.r)
                              ),
                              boxShadow:[
                                BoxShadow(
                                    offset: Offset(0 , 1),
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius : 1,
                                    blurRadius: 40
                                )
                              ],
                              color : Colors.white
                          ),
                          child : Text("Smartphones" , style: AppTextStyle.interSemiBold.copyWith(
                              color: const Color(0xFF0A1034),
                              fontSize: 18.sp
                          ),)
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    InkWell(
                      onTap: (){
                        productName = "Smart objects";
                        imgProduct = [];
                        for(int i = 0 ; i < DataProduct.length ; i++) {if(DataProduct[i].categories == productName) imgProduct.add(DataProduct[i]);}
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>const Product1()));
                      },
                      child: Container(
                          width: pw,
                          padding: EdgeInsets.symmetric(vertical: 28.h , horizontal: 24.w),
                          margin: EdgeInsets.symmetric(horizontal: 16.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(6.r)
                              ),
                              boxShadow:[
                                BoxShadow(
                                    offset: Offset(0 , 1),
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius : 1,
                                    blurRadius: 40
                                )
                              ],
                              color : Colors.white
                          ),
                          child : Text("Smart objects" , style: AppTextStyle.interSemiBold.copyWith(
                              color: const Color(0xFF0A1034),
                              fontSize: 18.sp
                          ),)
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    InkWell(
                      onTap: (){
                        productName = "Speakers";
                        imgProduct = [];
                        for(int i = 0 ; i < DataProduct.length ; i++) {if(DataProduct[i].categories == productName) imgProduct.add(DataProduct[i]);}
                        Navigator.push(context, MaterialPageRoute(builder:(context)=>const Product1()));
                      },
                      child: Container(
                          width: pw,
                          padding: EdgeInsets.symmetric(vertical: 28.h , horizontal: 24.w),
                          margin: EdgeInsets.symmetric(horizontal: 16.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(6.r)
                              ),
                              boxShadow:[
                                BoxShadow(
                                    offset: Offset(0 , 1),
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius : 1,
                                    blurRadius: 40
                                )
                              ],
                              color : Colors.white
                          ),
                          child : Text("Speakers" , style: AppTextStyle.interSemiBold.copyWith(
                              color: const Color(0xFF0A1034),
                              fontSize: 18.sp
                          ),)
                      ),
                    ),
                  ],
                ),
              )
          ),
          Container(
              child : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: (){
                        a = 1;
                        setState(() {

                        });
                      },
                      icon: SvgPicture.asset(AppImaages.bottomHome , color : a == 1 ? const Color(0xFF0001FC) : const Color(0xFF0A1034))),
                  IconButton(
                      onPressed: (){
                        a = 2;
                        setState(() {

                        });
                      },
                      icon: SvgPicture.asset(AppImaages.bottomSearch , color : a == 2 ? const Color(0xFF0001FC) : const Color(0xFF0A1034))),
                  IconButton(
                      onPressed: (){
                        a = 3;
                        setState(() {

                        });
                      },
                      icon: SvgPicture.asset(AppImaages.bottomShopBasket , color : a == 3 ? const Color(0xFF0001FC) : const Color(0xFF0A1034))),
                  IconButton(
                      onPressed: (){
                        a = 4;
                        setState(() {

                        });
                      },
                      icon: SvgPicture.asset(AppImaages.bottomPerson , color : a == 4 ? const Color(0xFF0001FC) : const Color(0xFF0A1034)))
                ],
              )
          )
        ],
      ),
      backgroundColor: const Color(0xFFFDFEFF),
    );
  }
}
