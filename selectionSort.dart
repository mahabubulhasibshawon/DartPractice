void selectionSort(List<int> arr){
  for(int i = 0; i<arr.length-1; i++){
    int minPos = i;
    for(int j = i+1; j<arr.length; j++){
      if(arr[minPos] > arr[j]){
        minPos = j;
      }
    }
//     swap
    int temp = arr[minPos];
    arr[minPos] = arr[i];
    arr[i] = temp;
  }
}

void printArr(List<int> arr) {
  for (int i = 0; i < arr.length; i++) {
    print(arr[i]);
  }
}

void main() {
  List<int> arr = [5, 3, 2, 0, 4];
  // print(arr);
  selectionSort(arr);
  printArr(arr);
}
