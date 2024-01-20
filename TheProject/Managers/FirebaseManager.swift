//
//  FirebaseManager.swift
//  TheProject
//
//  Created by Nikita on 20.01.2024.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

class FirebaseManager {
    
    //MARK: - Properties
    
    static let shared = FirebaseManager()
    
    let id = Auth.auth().currentUser?.uid
    
    //MARK: - Methods
    // Sign in method
    
    func login(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            guard let error else {
                print(String(describing: error?.localizedDescription))
                return
            }
        }
    }
    
    func logout() {
        
    }
}
