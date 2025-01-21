# Unhandled Exception in Async/Await Dart

This repository demonstrates a common error in Dart's async/await programming: improper exception handling in asynchronous operations.  The `bug.dart` file showcases code that throws an exception within an asynchronous function but fails to properly propagate it, leading to unexpected behavior. The `bugSolution.dart` file provides the corrected code, highlighting best practices for handling exceptions in asynchronous contexts.

The error occurs because exceptions thrown in async functions aren't automatically caught by outer `try-catch` blocks unless explicitly rethrown.  This example demonstrates how to correctly propagate and handle these exceptions to ensure robust application behavior.

## How to Reproduce
1. Clone the repository.
2. Run `bug.dart`. Observe that the exception is not caught in `main()`. 
3. Run `bugSolution.dart`. Observe that the exception is now handled correctly.