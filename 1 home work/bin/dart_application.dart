void main() {
  print("problem 1:");
  for (var i = 1; i <= 100; i++) {
    var message = "$i";
    var divisibleByThree = i % 3 == 0 ? true : false;
    var divisibleByFive = i % 5 == 0 ? true : false;

    if (divisibleByThree && divisibleByFive) {
      message = "Super Quiz";
    } else if (divisibleByThree || divisibleByFive) {
      message = divisibleByThree ? "Super" : "Quiz";
    }

    print(message);
  }

  print("problem 2:");
  var numbers = [2, 555, 236455];
  var divider = 10;
  for (var i = 0; i < numbers.length; i++) {
    var count = 1;
    var number = numbers[i];
    while (number ~/ divider > 0) {
      number = number ~/ divider;
      count++;
    }
    print("$count");
  }

  print("problem 3:");
  var years = [1705, 1900, 1601, 2000];
  for (var i = 0; i < years.length; i++) {
    var century = years[i] ~/ 100;
    if (years[i] % 100 > 0) {
      century++;
    }
    print("$century");
  }
}
