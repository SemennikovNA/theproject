//
//  FirebaseManager.swift
//  TheProject
//
//  Created by Nikita on 20.01.2024.
//

import UIKit
import FirebaseFirestore
import FirebaseAuth

class FirebaseManager {
    
    //MARK: - Properties
    
    static let shared = FirebaseManager()
    
    let id = Auth.auth().currentUser?.uid
    let auth = Auth.auth()
    
    //MARK: - Methods
    // Sign in method
    
    func login(email: String, password: String) {
        
        auth.signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print("Ошибка при входе: \(error.localizedDescription)")
            } else {
                if let navigationController = UIApplication.shared.windows.first?.rootViewController as? UINavigationController {
                    let taskVC = TaskViewController()
                    navigationController.pushViewController(taskVC, animated: true)
                }
                print("Пользователь успешно вошел: \(authResult?.user.uid ?? "")")
            }
        }
    }
    
    func logout() {
        do {
            try
            auth.signOut()
            let loginVC = LoginViewController()
            let navVC = UINavigationController()
            navVC.popToViewController(loginVC, animated: true)
        } catch {
            print("Exit error")
        }
    }
}
