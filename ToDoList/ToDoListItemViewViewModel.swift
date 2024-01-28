//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Utkarsh Arora on 21/01/24.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

//ViewModel for single each row to do list item of items view
class ToDoListItemViewViewModel: ObservableObject {
    init() {
         
    }
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
