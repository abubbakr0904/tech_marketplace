import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_marketplace/product_name.dart';
import 'package:tech_marketplace/utils/images.dart';
import 'package:tech_marketplace/utils/stykes.dart';

class Product2 extends StatefulWidget {
  const Product2({super.key});

  @override
  State<Product2> createState() => _Product2State();
}

List<String> temp = [];

class _Product2State extends State<Product2> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    double pw = MediaQuery
        .of(context)
        .size
        .width;
    double ph = MediaQuery
        .of(context)
        .size
        .height;
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
              child: Text(productName , style: AppTextStyle.interBold.copyWith(
                  color : const Color(0xFF0A1034),
                  fontSize: 24.sp
              ),),
            ),
            SizedBox(height: 15.h,),
            Container(
                width: pw,
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                child : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(4)
                            ),
                            border: Border(
                              bottom: BorderSide(
                                  width: 1,
                                  color : const Color(0xFFA7A9BE)
                              ),
                              top: BorderSide(
                                  width: 1,
                                  color : const Color(0xFFA7A9BE)
                              ),
                              left: BorderSide(
                                  width: 1,
                                  color : const Color(0xFFA7A9BE)
                              ),
                              right: BorderSide(
                                  width: 1,
                                  color : const Color(0xFFA7A9BE)
                              ),
                            )
                        ),
                        child : Row(
                          children: [
                            Text("Ascending price" , style: AppTextStyle.interRegular.copyWith(
                                color : const Color(0xFFA7A9BE),
                                fontSize: 14.sp
                            ),),
                            const Icon(
                              Icons.arrow_upward,
                              color : Color(0xFFA7A9BE),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color : Color(0xFFA7A9BE),
                            )
                          ],
                        )
                    ),
                    Container(
                        child : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Filters" , style: AppTextStyle.interRegular.copyWith(
                                color : const Color(0xFFA7A9BE),
                                fontSize: 14.sp
                            ),),
                            const Icon(
                              Icons.arrow_drop_down,
                              color : Color(0xFFA7A9BE),
                            ),
                          ],
                        )
                    ),
                    SvgPicture.asset(AppImaages.apps)

                  ],
                )
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: imgProduct.length,
                  padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                        decoration: BoxDecoration(
                          color : Colors.white,
                          borderRadius: const BorderRadius.all(
                              Radius.circular(6)
                          ),
                          boxShadow:[
                            BoxShadow(
                                offset: const Offset(0 , 1),
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius : 1,
                                blurRadius: 40
                            )
                          ],
                        ),
                        padding: const EdgeInsets.all(16),
                        child : Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(imgProduct[index].productImage , width: 120.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(imgProduct[index].productName , style: AppTextStyle.interMedium.copyWith(
                                    color : const Color(0xFF0A1034),
                                    fontSize: 16.sp
                                ),),
                                Text(imgProduct[index].price , style: AppTextStyle.interMedium.copyWith(
                                    color : const Color(0xFF0001FC),
                                    fontSize: 12.sp
                                ),)

                              ],
                            )
                          ],
                        )
                    );
                  }),
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
        )
    );
  }
}
