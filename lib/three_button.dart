import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_marketplace/catigories1.dart';
import 'package:tech_marketplace/catigories2.dart';
import 'package:tech_marketplace/utils/stykes.dart';

class ThreeButton extends StatelessWidget {
  const ThreeButton({super.key});

  @override
  Widget build(BuildContext context) {
    double pw = MediaQuery.of(context).size.width;
    double ph = MediaQuery.of(context).size.height;
    return Scaffold(
      body : Container(
        width: pw,
        height: ph,
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const Catigories1()));
              },
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(20.r)
                      ),
                      color : Colors.blue
                  ),
                width: pw,
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                child : Center(
                  child: Text("Page 1" , style: AppTextStyle.interSemiBold.copyWith(
                    color : Colors.white,
                    fontSize: 20.sp,
                  ),),
                )
              ),
            ),
            SizedBox(height: 15.h,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>const Catigories2()));

              },
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(20.r)
                      ),
                      color : Colors.blue
                  ),
                  width: pw,
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  child : Center(
                    child: Text("Page 2" , style: AppTextStyle.interSemiBold.copyWith(
                      color : Colors.white,
                      fontSize: 20.sp,
                    ),),
                  )
              ),
            ),
            SizedBox(height: 15.h,),
            InkWell(
              onTap: (){},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.r)
                  ),
                  color : Colors.blue
                ),
                  width: pw,
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  child : Center(
                    child: Text("Page 3" , style: AppTextStyle.interSemiBold.copyWith(
                      color : Colors.white,
                      fontSize: 20.sp,
                    ),),
                  )
              ),
            ),
          ],
        )
      )
    );
  }
}
