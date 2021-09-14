void main() {
  var list = [
    ["a", "ab", "abc"],
    ["abcde", "ab", "abc"],
    []
  ];
  var list2 = [
    [1, -10, 9, -1],
    [-1, -2, -3],
    [],
    [1, 2]
  ];

  print("problem 1:");
  var stringLengthFilter = (string) => string.length;
  for (var element in list) {
    print(summator(element, stringLengthFilter));
  }

  print("problem 2:");
  var positiveNumberFilter = (number) => number > 0 ? number : 0;
  for (var element in list2) {
    print(summator(element, positiveNumberFilter));
  }
}

// ???
summator(List<dynamic> list, dynamic filter(element)) {
  num sum = 0;
  for (var element in list) {
    sum += filter(element);
  }
  return sum;
}
