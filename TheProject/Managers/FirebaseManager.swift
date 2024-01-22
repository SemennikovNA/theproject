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
    
    let auth = Auth.auth()
    let id = Auth.auth().currentUser?.uid
    
    
    //MARK: - Methods
    
    /// Registration method
    func createUser(email: String, password: String, name: String? = nil) {
        auth.createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print("Ошибка при регистрации: \(String(describing: error.localizedDescription))")
            } else {
                print("Пользователь успешно зарегистрирован: \(String(describing: error?.localizedDescription))")
            }
        }
    }
    
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
                    let newLoginVC = LoginViewController()
                    navigationController.setViewControllers([newLoginVC], animated: true)
                    print("LoginViewController не найден в стеке навигации.")
                }
            }
        } catch {
            print("Exit error")
        }
    }
    
    /// Get the currently signed-in user
    func getCurrentUser() {
        auth.addStateDidChangeListener { authResult, user in
            if self.auth.currentUser != nil {
                let userDisplayName = self.auth.currentUser?.displayName
                print("User is authorized: \(String(describing: userDisplayName))")
            } else {
                print("User is not authorized")
            }
        }
    }
}
