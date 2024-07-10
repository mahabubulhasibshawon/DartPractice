void bubbleSort(List<int> arr) {
  int swapCount = 0; // Initialize swap counter

  for (int turn = 0; turn < arr.length - 1; turn++) {
    for (int j = 0; j < arr.length - 1 - turn; j++) {
      if (arr[j] > arr[j + 1]) {
        // Swap
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        swapCount++; // Increment the swap counter
      }
    }
    // If no swaps were made, the array is already sorted
//     if (!swapped) {
//       break;
//     }
    if (swapCount == 0) {
      print("sorted already");
      break;
    }
  }

  print('Total swaps: $swapCount'); // Print the swap count
}

void printArr(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    print(arr[i]);
  }
}

void main() {
  List<int> arr = [1, 2, 3, 4, 5];
  // print(arr);
  bubbleSort(arr);
  printArr(arr);
}
