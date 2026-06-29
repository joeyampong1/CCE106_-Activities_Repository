import 'package:cloud_firestore/cloud_firestore.dart';

class CrudService {
  final CollectionReference items =
      FirebaseFirestore.instance.collection('items');

  // CREATE - Add new item
  Future<void> addItem(String name, int quantity) {
    return items.add({
      'name': name,
      'quantity': quantity, 
      'createdAt': Timestamp.now(), 
    });
  }

  // READ - Get all items
  Stream<QuerySnapshot> getItems() {
    return items.orderBy('createdAt', descending: true).snapshots();
  }

  // UPDATE - Update existing item
  Future<void> updateItem(String id, String name, int quantity) {
    return items.doc(id).update({
      'name': name,
      'quantity': quantity,
    });
  }

  // DELETE - Delete item
  Future<void> deleteItem(String id) { 
    return items.doc(id).delete(); 
  }
}