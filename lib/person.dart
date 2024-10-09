class Person {
  String name;
  double height;
  double weight;
  late double bmi;
  late String thing;

  Person({
    required this.name,
    required this.height,
    required this.weight,
  }) {
    calculateBMI();
  }

  void calculateBMI() {
    if (height > 0 && weight > 0) {
      bmi = weight / ((height / 100) * (height / 100));
      if (bmi < 18.5) {
        thing = 'Underweight';
      } else if (bmi >= 18.5 && bmi < 24.9) {
        thing = 'Normal weight';
      } else if (bmi >= 25 && bmi < 29.9) {
        thing = 'Overweight';
      } else {
        thing = 'Obese';
      }
    } else {
      bmi = 0.0;
      thing = 'Invalid input';
    }
  }

  void updateBMI() {
    calculateBMI();
  }
}
