//
//  UsersDetails.swift
//  MVP
//
//  Created by Farido on 14/01/2022.
//

import UIKit

class UsersDetailsVC: UIViewController {

    @IBOutlet weak var addressTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    
    var presnter: UserDetilesVCPresenter? 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presnter?.viewDidLoad()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
