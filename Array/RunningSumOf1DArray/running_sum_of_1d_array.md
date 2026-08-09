# 1D Array in Dart

Dart does not have traditional arrays, instead **List** is used as a 1D array.

## 1. Declaration & Initialization

```dart
// Fixed-length list
List<int> arr1 = List<int>.filled(5, 0); // [0,0,0,0,0]

// Growable list
List<int> arr2 = [1, 2, 3, 4, 5];

// Empty growable list
List<int> arr3 = [];

// Using var
var arr4 = <int>[10, 20, 30];
```

## 2. Accessing Elements

```dart
print(arr2[0]); // 1
print(arr2.length); // 5
```

## 3. Modifying Elements

```dart
arr2[0] = 100;
arr2.add(6);        // add at end
arr2.insert(1, 99);  // insert at index
arr2.removeAt(2);    // remove by index
arr2.remove(99);     // remove by value
```

## 4. Iterating

```dart
for (int i = 0; i < arr2.length; i++) {
  print(arr2[i]);
}

for (var item in arr2) {
  print(item);
}

arr2.forEach((item) => print(item));
```

## 5. Common Methods

```dart
arr2.sort();                     // ascending sort
arr2.sort((a, b) => b - a);      // descending sort
arr2.reversed.toList();          // reversed list
arr2.contains(3);                // true/false
arr2.indexOf(3);                 // index of value
arr2.where((x) => x > 2).toList(); // filter
arr2.map((x) => x * 2).toList();   // transform
arr2.reduce((a, b) => a + b);      // sum/reduce
```

## 6. Multi-type / Dynamic List

```dart
List<dynamic> mixed = [1, "two", 3.0, true];
```

## 7. Fixed vs Growable

| Type         | Size Change | Example                                   |
| ------------ | ----------- | ----------------------------------------- |
| Fixed-length | ❌ No       | `List<int>.filled(5, 0)`                  |
| Growable     | ✅ Yes      | `List<int>.empty(growable: true)` or `[]` |
