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
    
    /// Sign in method
    func login(email: String, password: String) {
        
        auth.signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print("Ошибка при входе: \(error.localizedDescription)")
            } else {
                if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                   let sceneDelegate = windowScene.delegate as? SceneDelegate,
                   let navigationController = sceneDelegate.window?.rootViewController as? UINavigationController {
                    let taskVC = TaskViewController()
                    navigationController.pushViewController(taskVC, animated: true)
                }
                print("Пользователь успешно вошел: \(authResult?.user.uid ?? "")")
            }
        }
    }
    
    /// Logout method
    func logout() {
        
        do {
            try auth.signOut()
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
               let sceneDelegate = windowScene.delegate as? SceneDelegate,
               let navigationController = sceneDelegate.window?.rootViewController as? UINavigationController {
                if let loginVC = navigationController.viewControllers.first(where: { $0 is LoginViewController }) as? LoginViewController {
                    navigationController.popToViewController(loginVC, animated: true)
                } else {
                    print("LoginViewController не найден в стеке навигации.")
                }
            }
        } catch {
            print("Exit error")
        }
    }
}
