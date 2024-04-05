// ignore_for_file: file_names

void main() {
  List<int> sortedArray = sortPast();
  print(sortedArray);
}

List<int> sortPast() {
  List<int> newArr = [];
  for (int i = 0; i < arr.length; i++) {
    int currentElement = arr[i];
    bool inserted = false;
    for (int j = 0; j < newArr.length; j++) {
      if (currentElement <= newArr[j]) {
        newArr.insert(j, currentElement);
        inserted = true;
        break;
      }
    }
    if (!inserted) {
      newArr.add(currentElement);
    }
  }
  return newArr;
}

final newArr = <int>[];
List<int> arr = [1, 5, 3, 6, 5, 8, 7, 12, 9, 20, 14, 2];
