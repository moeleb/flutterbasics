import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_basics/base/widgets/text_style_third.dart';
import 'package:flutter_basics/res/media.dart';
import 'package:flutter_basics/screens/profile/widgets/heading_text.dart';

import '../../base/res/styles/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          Padding(padding: EdgeInsets.only(top: 40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(AppMedia.logo))),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadingText(text: "BookTickets", isColor: false),
                  Text(
                    "New-York",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: AppStyles.planeColor,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppStyles.profileTextColor,
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Premium Status",
                          style: TextStyle(
                            color: AppStyles.profileTextColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Expanded(child: Container()),
              Text("Edit",
                  style: TextStyle(
                    color: AppStyles.primaryColor,
                    fontWeight: FontWeight.w300,
                  )),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Divider(
            color: Colors.grey.shade300,
          ),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: AppStyles.primaryColor,
                        size: 27,
                      ),
                    ),
                    Column(
                      children: [
                        TextStyleThird(text: "You  have got a new Reward"),
                        TextStyleThird(text: "You  have 95 flighs in a year"),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                right: -45,
                top: -40,
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Color(0xFF264cD2))),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "Accumulated Miles",
            style: AppStyles.headLineStyle2,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15,),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: AppStyles.bgColor,
            ),
            child: Column(
              children: [
                Text(
                  "192802",
                  style: TextStyle(
                    fontSize: 45,
                    color: AppStyles.textColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles Accured",
                      style: AppStyles.headLineStyle4.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Title July",
                      style: AppStyles.headLineStyle4.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4,),
                Divider(color: Colors.grey.shade900,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("23 042",style: AppStyles.headLineStyle3,),
                        SizedBox(height: 5,),
                        Text("Miles", style: AppStyles.headLineStyle4,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("23 042",style: AppStyles.headLineStyle3,),
                        SizedBox(height: 5,),
                        Text("Miles", style: AppStyles.headLineStyle4,),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                SizedBox(height: 5,),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("23 042",style: AppStyles.headLineStyle3,),
                        SizedBox(height: 5,),
                        Text("Miles", style: AppStyles.headLineStyle4,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("23 042",style: AppStyles.headLineStyle3,),
                        SizedBox(height: 5,),
                        Text("Miles", style: AppStyles.headLineStyle4,),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Divider(
                  color: Colors.grey.shade300,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("23 042",style: AppStyles.headLineStyle3,),
                        SizedBox(height: 5,),
                        Text("Miles", style: AppStyles.headLineStyle4,),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("23 042",style: AppStyles.headLineStyle3,),
                        SizedBox(height: 5,),
                        Text("Miles", style: AppStyles.headLineStyle4,),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                InkWell(
                  onTap: (){
                  },
                  child: Text('How to get more details?',style: AppStyles.textStyle.copyWith(
                    color: AppStyles.primaryColor,
                    fontWeight: FontWeight.w500
                  ),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
