//
//  User.swift
//  UnitTestExample
//
//  Created by NL on 12/08/2022.
//

import Foundation
import UIKit
class User {
    private var userName: String?
    private var password: String?
    init(userName: String, password: String) {
        self.userName = userName
        self.password = password
    }
    func validUserNamePassword() -> (success: Bool, error: String?){
        guard let userName = userName else { return (false, "userName is nil")}
        if userName.isEmpty { return (false, "user is empty")}
        guard let password = password else {
            return (false, "password is empty")
        }
        if password.isEmpty { return (false, "password is empty")}
        if password.count < 6 {
            return (false, "password must be a least 6 charactors")
        }
        return (true, nil)
    }
    
    func registerUser() -> Bool {
        if validUserNamePassword().success {
            let userDefault = UserDefaults.standard
            userDefault.set(userName, forKey: "username")
            userDefault.set(password, forKey: "password")
            return true
        } else {
            return false
        }
    }
    
    func login() -> Bool {
        if validUserNamePassword().success {
            let userDefault = UserDefaults.standard
            let userName = userDefault.string(forKey: "username")
            let password = userDefault.string(forKey: "password")
            if self.userName == userName && password == password {
                return true
            } else {
                return false
            }
        } else {
            return false
        }
    }
}
