# RESTful API and CRUD Operations with Dio

## Table of Contents

- [Overview](#overview)
- [What is RESTful API?](#what-is-restful-api)
- [Using Dio for CRUD Operations](#using-dio-for-crud-operations)
  - [Setup Dio](#setup-dio)
  - [CRUD Operations](#crud-operations)
- [Examples](#examples)

---

## Overview

This guide provides an introduction to RESTful APIs, explores how to use the Dio package in Flutter for CRUD (Create, Read, Update, Delete) operations, and includes code examples to demonstrate each step.

---

## What is RESTful API?

RESTful API (Representational State Transfer) is an architectural style for designing networked applications. It relies on standard HTTP methods such as GET, POST, PUT, and DELETE for communication and interacts with resources identified by unique URIs.

### Key Features:

1. **Stateless**: Each request from the client contains all the information needed.
2. **Resource-Based**: Data is organized into resources accessed via URLs.
3. **JSON/XML**: Typically uses JSON for lightweight data exchange.
4. **HTTP Methods:**
   - GET: Retrieve data
   - POST: Add new data
   - PUT: Update existing data
   - DELETE: Remove data

---

## Using Dio for CRUD Operations

[Dio](https://pub.dev/packages/dio) is a powerful and easy-to-use HTTP client for Flutter that simplifies API interactions.

### Features of Dio:

- HTTP requests (GET, POST, PUT, DELETE, etc.)
- Request Interceptors
- Response Interceptors
- Global Configuration
- Cancelable Requests
- File Upload/Download

### Setup Dio

To use Dio, add it to your `pubspec.yaml` file:

```yaml
dependencies:
  dio: ^5.0.0
```

Run the following command to get the package:

```sh
flutter pub get
```

Import Dio into your Dart file:

```dart
import 'package:dio/dio.dart';
```

---

## CRUD Operations

The following sections demonstrate how to perform CRUD operations using Dio.

### 1. Create (POST)

```dart
Future<void> createData(String url, Map<String, dynamic> data) async {
  try {
    Dio dio = Dio();
    Response response = await dio.post(url, data: data);
    print('Created: ${response.data}');
  } catch (e) {
    print('Error creating data: $e');
  }
}
```

### 2. Read (GET)

```dart
Future<void> fetchData(String url) async {
  try {
    Dio dio = Dio();
    Response response = await dio.get(url);
    print('Fetched: ${response.data}');
  } catch (e) {
    print('Error fetching data: $e');
  }
}
```

### 3. Update (PUT)

```dart
Future<void> updateData(String url, Map<String, dynamic> data) async {
  try {
    Dio dio = Dio();
    Response response = await dio.put(url, data: data);
    print('Updated: ${response.data}');
  } catch (e) {
    print('Error updating data: $e');
  }
}
```

### 4. Delete (DELETE)

```dart
Future<void> deleteData(String url) async {
  try {
    Dio dio = Dio();
    Response response = await dio.delete(url);
    print('Deleted: ${response.statusCode}');
  } catch (e) {
    print('Error deleting data: $e');
  }
}
```

---

## Examples

Below is a practical example using a sample REST API:

```dart
void main() async {
  const baseUrl = 'https://jsonplaceholder.typicode.com/posts';

  // Create
  await createData(baseUrl, {
    'title': 'New Post',
    'body': 'This is a new post.',
    'userId': 1
  });

  // Read
  await fetchData(baseUrl);

  // Update
  await updateData('$baseUrl/1', {
    'id': 1,
    'title': 'Updated Post',
    'body': 'This post has been updated.',
    'userId': 1
  });

  // Delete
  await deleteData('$baseUrl/1');
}
```

---

## Conclusion

Using the Dio package for CRUD operations with a RESTful API simplifies interaction with server-side resources. This guide provided step-by-step instructions to integrate Dio, perform CRUD operations, and leverage its features for efficient API communication. Happy coding!
