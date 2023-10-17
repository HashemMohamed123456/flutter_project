import 'package:flutter/material.dart';
import 'package:payingsproject/model/payingsmodel.dart';
import 'package:payingsproject/view/components/widgets/payingswidget.dart';
import 'package:payingsproject/view/components/widgets/textcustrom.dart';
class PayingsHomePage extends StatelessWidget {
   PayingsHomePage({super.key});
 final List<PayModel>paylist=[
   PayModel(
     name: 'Groceries',
     image: 'https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?cs=srgb&dl=pexels-ella-olsson-1640772.jpg&fm=jpg',
     cost: 21,
     totalCost: 400,
     remainingCost:379
   ),
   PayModel(
       name: 'bills',
       image: 'https://pirg.org/edfund/wp-content/uploads/2020/05/Bill-Payments.jpg',
       cost: 100,
       totalCost: 400,
       remainingCost:300
   )
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const TextCustom(text: 'Hi Jim',fontWeight: FontWeight.bold,),
        actions:[IconButton(onPressed: (){}, icon:const Icon(Icons.more_horiz))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          TextCustom(text:'You Have already spent'),
          SizedBox(height: 15,),
          Container(padding: EdgeInsets.all(12),decoration: BoxDecoration(
            border: Border.all(color: Colors.grey,),
            borderRadius: BorderRadius.circular(20)
          ),child:
            TextCustom(text: '\$1000,0000')),
        SizedBox(height: 10,),
        TextCustom(text: 'You still Have 18 Days Until Pay',color:Colors.grey,fontSize: 15,),
        SizedBox(height: 30,),

        Expanded(
          child: ListView.separated(itemBuilder: (context,index){
            return PayingsMenu(pay:paylist[index]);
          }, separatorBuilder:(context,index)=>SizedBox(height: 10,), itemCount: paylist.length),
        )],),
      ),
    );
  }
}
