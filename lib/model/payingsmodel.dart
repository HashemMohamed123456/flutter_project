class PayModel{
  String? name;
  String? image;
  double cost;
  double totalCost;
  PayModel({this.name,this.cost=0,this.totalCost=0,this.image});
  double remainingCost(){
    return totalCost-cost;
  }}