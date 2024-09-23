// product_page.dart

import 'dart:convert';

import 'package:crud_productpage_restapi/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Import the new form page

void main() {
  runApp(new Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final String apiUrl = "http://164.68.107.70:6060/api/v1";

  Future<List> getProductList() async {
    final response = await http.get(Uri.parse('$apiUrl/ReadProduct'));
    if (response.statusCode == 200) {
      try {
        var decoded = jsonDecode(response.body);
        if (decoded is Map && decoded.containsKey('data')) {
          return decoded['data'];
        }
        return decoded; // If it's a direct array
      } catch (e) {
        print('Error decoding JSON: $e');
        return [];
      }
    } else {
      throw Exception('Failed to load products');
    }
  }

  Future<void> createProduct(String productCode, String productName, String qty,
      String totalPrice, String unitPrice) async {
    final response = await http.post(
      Uri.parse('$apiUrl/CreateProduct'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "Img": "", // You can provide a product image if you have
        "ProductCode": productCode,
        "ProductName": productName,
        "Qty": qty,
        "TotalPrice": totalPrice,
        "UnitPrice": unitPrice,
      }),
    );

    // Debug print the response body
    print('Create product response body: ${response.body}');

    if (response.statusCode == 200) {
      print("Product created successfully");
    } else {
      throw Exception('Failed to create product');
    }
  }

  Future<void> updateProduct(String id, String productCode, String productName,
      String qty, String totalPrice, String unitPrice) async {
    final response = await http.post(
      Uri.parse('$apiUrl/UpdateProduct/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "Img": "", // You can provide a product image if you have
        "ProductCode": productCode,
        "ProductName": productName,
        "Qty": qty,
        "TotalPrice": totalPrice,
        "UnitPrice": unitPrice,
      }),
    );

    // Debug print the response body
    print('Update product response body: ${response.body}');

    if (response.statusCode == 200) {
      print("Product updated successfully");
    } else {
      throw Exception('Failed to update product');
    }
  }

  Future<void> deleteProduct(String id) async {
    final response = await http.get(Uri.parse('$apiUrl/DeleteProduct/$id'));

    // Debug print the response body
    print('Delete product response body: ${response.body}');

    if (response.statusCode == 200) {
      print("Product deleted successfully");
    } else {
      throw Exception('Failed to delete product');
    }
  }

  void navigateToFormPage(
      {String? id,
      String? productCode,
      String? productName,
      String? qty,
      String? totalPrice,
      String? unitPrice}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductFormPage(
          id: id,
          productCode: productCode,
          productName: productName,
          qty: qty,
          totalPrice: totalPrice,
          unitPrice: unitPrice,
          onSave:
              (id, productCode, productName, qty, totalPrice, unitPrice) async {
            if (id == null) {
              await createProduct(
                  productCode, productName, qty, totalPrice, unitPrice);
            } else {
              await updateProduct(
                  id, productCode, productName, qty, totalPrice, unitPrice);
            }
            setState(() {});
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Product CRUD App"),
        backgroundColor: Colors.grey[500],
      ),
      body: FutureBuilder<List>(
        future: getProductList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text("No Products Available"));
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final product = snapshot.data![index];
                return Container(
                  height: 180,
                  width: double.infinity,
                  margin: EdgeInsets.all(19),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade600,
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(4.0, 4.0),
                      ),
                      BoxShadow(
                        color: Colors.white,
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(-4.0, -4.0),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        product['ProductName'],
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "Qty: ${product['Qty']} | Price: ${product['UnitPrice']}",
                        style: TextStyle(fontSize: 23),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () => navigateToFormPage(
                              id: product['_id'],
                              productCode: product['ProductCode'],
                              productName: product['ProductName'],
                              qty: product['Qty'],
                              totalPrice: product['TotalPrice'],
                              unitPrice: product['UnitPrice'],
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () async {
                              await deleteProduct(product['_id']);
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => navigateToFormPage(),
        child: Icon(Icons.add),
      ),
    );
  }
}
