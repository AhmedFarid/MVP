//
//  UserDetailsVC+PresenterDelegate.swift
//  MVP
//
//  Created by Farido on 14/01/2022.
//

import Foundation

extension UsersDetailsVC: UserDetilesView {
    
    
    func displayName(name: String) {
        nameTF.text = name
    }
    
    func displayAddress(address: String) {
        addressTF.text = address
    }
    
    func displayEmail(email: String) {
        emailTF.text = email
    }
    
    
}
