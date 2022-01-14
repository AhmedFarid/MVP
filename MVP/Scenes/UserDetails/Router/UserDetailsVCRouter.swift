//
//  UserDetailsVCRouter.swift
//  MVP
//
//  Created by Farido on 14/01/2022.
//

import UIKit


class UserDetailsVCRouter {
    class func createUserDetailsVC(user: User) -> UIViewController {
//        let userDetailsView = mainStoryborad.instantiateViewController(withIdentifier: "UsersDetailsVC") as? UserDetilesView
//        let presenter = UserDetilesVCPresenter(userDetailsView: userDetailsView, user: user)
//        userDetailsView.presnter = presenter
//        return userDetailsView
        let userDetailsVC = mainStoryborad.instantiateViewController(withIdentifier: "UsersDetailsVC")
        if let userDetailsView =  userDetailsVC as? UserDetilesView {
            let presenter = UserDetilesVCPresenter(userDetailsView: userDetailsView, user: user)
            userDetailsView.presnter = presenter
        }
        return userDetailsVC
        
    }
    
    class var mainStoryborad: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}
