//
//  UsersVcRouter.swift
//  MVP
//
//  Created by Farido on 14/01/2022.
//

import UIKit


class UserVCRouter {
    class func createUserVC() -> UIViewController {
        
        // View Interactor Presnter Router
        /**
 
         UINavigatonController
         */
        
        let navigationController = mainStoryborad.instantiateViewController(withIdentifier: "UINavigatonController")
        let userView = navigationController.children.first as? UsersView
        let interactor = UsersInteractor()
        let router = UserVCRouter()
        let presenter = UsersVCPresenter(view: userView, interactor: interactor,router: router)
        userView?.presenter = presenter
        
        return navigationController
        
        
        
    }
    
    class var mainStoryborad: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    func navigateToUserDetailsScreen(from view: UsersView?,user: User) {
        let userDetailsView = UserDetailsVCRouter.createUserDetailsVC(user: user) 
        if let viewController = view as? UIViewController {
            viewController.navigationController?.pushViewController(userDetailsView, animated: true)
        }
        
    }
}
