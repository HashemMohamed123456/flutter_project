import 'package:flutter/material.dart';
import 'package:payingsproject/model/payingsmodel.dart';
import 'package:payingsproject/view%20model/bloc/cubit/paycubit.dart';
import 'package:payingsproject/view/components/widgets/textcustrom.dart';
class PayingsMenu extends StatelessWidget {
  final PayModel pay;
  const PayingsMenu({required this.pay,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Container(clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
              child: Image.network(pay.image??'',fit: BoxFit.cover,width:150,height:150,)),
          SizedBox(width: 15,),
          Column(children: [
            TextCustom(text:pay.name??'',color:Colors.grey ,),
            SizedBox(height: 30,),
            Row(
              children: [
                TextCustom(text: '${pay.cost}',fontSize: 15,),
                SizedBox(width: 5,),
                TextCustom(text: '/',fontSize: 15,),
                SizedBox(width: 5,),
                TextCustom(text: '${pay.totalCost}',fontSize: 15,)
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                TextCustom(text: '-',fontSize: 15,),
                SizedBox(width: 5,),
                TextCustom(text: '${pay.remainingCost()}',fontSize: 15,color: Colors.red,),
              ],
            ),
          ],
          ),
          Spacer(),
          Align(alignment:AlignmentDirectional.topStart,child:IconButton(onPressed: (){},icon: Icon(Icons.arrow_downward),color: Colors.grey,)),],
      ),
    );
  }
}
