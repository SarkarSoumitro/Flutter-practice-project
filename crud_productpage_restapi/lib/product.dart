// product_form_page.dart

import 'package:flutter/material.dart';

class ProductFormPage extends StatelessWidget {
  final String? id;
  final String? productCode;
  final String? productName;
  final String? qty;
  final String? totalPrice;
  final String? unitPrice;
  final Function(String? id, String productCode, String productName, String qty,
      String totalPrice, String unitPrice) onSave;

  ProductFormPage({
    this.id,
    this.productCode,
    this.productName,
    this.qty,
    this.totalPrice,
    this.unitPrice,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    final _productCodeController = TextEditingController(text: productCode);
    final _productNameController = TextEditingController(text: productName);
    final _qtyController = TextEditingController(text: qty);
    final _totalPriceController = TextEditingController(text: totalPrice);
    final _unitPriceController = TextEditingController(text: unitPrice);

    return Scaffold(
      appBar:
          AppBar(title: Text(id == null ? "Create Product" : "Update Product")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildTextField(
                controller: _productCodeController, label: "Product Code"),
            _buildTextField(
                controller: _productNameController, label: "Product Name"),
            _buildTextField(controller: _qtyController, label: "Quantity"),
            _buildTextField(
                controller: _totalPriceController, label: "Total Price"),
            _buildTextField(
                controller: _unitPriceController, label: "Unit Price"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                onSave(
                  id,
                  _productCodeController.text,
                  _productNameController.text,
                  _qtyController.text,
                  _totalPriceController.text,
                  _unitPriceController.text,
                );
                Navigator.pop(context);
              },
              child: Text(id == null ? "Create" : "Update"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(labelText: label),
    );
  }
}
