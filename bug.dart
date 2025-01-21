```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate a network request that might fail
    await Future.delayed(Duration(seconds: 2));
    if (DateTime.now().millisecond % 2 == 0) {
      throw Exception('Network request failed');
    }
    print('Data fetched successfully');
  } on TimeoutException catch (e) {
    print('Timeout error: $e');
  } on Exception catch (e) {
    print('Error: $e');
    // Rethrow the exception to be handled by a higher level
    rethrow; // This is important to propagate the error
  } catch (e) {
    print('Unknown error: $e');
  } finally {
    print('This always executes');
  }
}

void main() async {
  try {
    await fetchData();
  } on Exception catch (e) {
    print('Caught exception in main: $e');
  }
}
```