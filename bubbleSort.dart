
  void bubbleSort(List<int> arr) {
    for (int turn = 0; turn < arr.length - 1; turn++) {
      for (int j = 0; j < arr.length - 1 - turn; j++) {
        if (arr[j] > arr[j + 1]) {
//           swap
          int temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
        }
      }
    }
  }

  void printArr(List<int> arr) {
    for (int i = 0; i < arr.length; i++) {
      print(arr[i]);
    }
  }

  void main() {
    List<int> arr = [5, 4, 1, 3, 2];
//   print(arr);
    bubbleSort(arr);
    printArr(arr);
  }

