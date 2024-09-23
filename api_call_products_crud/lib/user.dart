import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final String apiUrl = "http://164.68.107.70:6060/api/v1";

  // Function to fetch the product list (GET)
  Future<List> getProductList() async {
    final response = await http.get(Uri.parse('$apiUrl/ReadProduct'));

    // Debug: Print the response body
    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');

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

  // Function to create a product (POST)
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

  // Function to update a product (POST)
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

  // Function to delete a product (GET)
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

  // Helper function to show product form
  void showProductForm(
      {String? id,
      String? productCode,
      String? productName,
      String? qty,
      String? totalPrice,
      String? unitPrice}) {
    final _productCodeController = TextEditingController(text: productCode);
    final _productNameController = TextEditingController(text: productName);
    final _qtyController = TextEditingController(text: qty);
    final _totalPriceController = TextEditingController(text: totalPrice);
    final _unitPriceController = TextEditingController(text: unitPrice);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(id == null ? "Create Product" : "Update Product"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  controller: _productCodeController,
                  decoration: InputDecoration(labelText: "Product Code")),
              TextField(
                  controller: _productNameController,
                  decoration: InputDecoration(labelText: "Product Name")),
              TextField(
                  controller: _qtyController,
                  decoration: InputDecoration(labelText: "Quantity")),
              TextField(
                  controller: _totalPriceController,
                  decoration: InputDecoration(labelText: "Total Price")),
              TextField(
                  controller: _unitPriceController,
                  decoration: InputDecoration(labelText: "Unit Price")),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () async {
                if (id == null) {
                  await createProduct(
                    _productCodeController.text,
                    _productNameController.text,
                    _qtyController.text,
                    _totalPriceController.text,
                    _unitPriceController.text,
                  );
                } else {
                  await updateProduct(
                    id,
                    _productCodeController.text,
                    _productNameController.text,
                    _qtyController.text,
                    _totalPriceController.text,
                    _unitPriceController.text,
                  );
                }
                Navigator.pop(context);
                setState(() {});
              },
              child: Text(id == null ? "Create" : "Update"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product CRUD App")),
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
                return ListTile(
                  title: Text(product['ProductName']),
                  subtitle: Text(
                      "Qty: ${product['Qty']} | Price: ${product['UnitPrice']}"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit),
                        onPressed: () => showProductForm(
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
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showProductForm(),
        child: Icon(Icons.add),
      ),
    );
  }
}
