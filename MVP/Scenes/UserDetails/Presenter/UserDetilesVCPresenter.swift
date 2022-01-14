//
//  UserDetilesVCPresenter.swift
//  MVP
//
//  Created by Farido on 14/01/2022.
//

import Foundation

protocol UserDetilesView: AnyObject {
    var presnter: UserDetilesVCPresenter? {set get}
    func displayName(name: String)
    func displayAddress(address: String)
    func displayEmail(email: String)
}


class UserDetilesVCPresenter {
    private weak var view: UserDetilesView?
    private var user: User
    
    init(userDetailsView: UserDetilesView?,user: User) {
        self.view = userDetailsView
        self.user = user
    }
    
    func viewDidLoad() {
        view?.displayName(name: user._name)
        view?.displayEmail(email: user._email)
        view?.displayAddress(address: user._address._street)
    }
}
