class SimpleIntrestModel{
  final double? principle;
  final double? time;
  final double? rate;

  SimpleIntrestModel({required this.principle,required this.rate,required this.time});

  double simin(){
    return principle!*time!*rate!/100;
  }

}