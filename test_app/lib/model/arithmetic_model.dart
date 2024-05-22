class ArithmeticModel{
  final int? first;
  final int? second;

  ArithmeticModel({required this.first,
    required this.second});

  int sum(){
    return first!+second!;
  }
  int sub(){
    return first!-second!;
  }

}
