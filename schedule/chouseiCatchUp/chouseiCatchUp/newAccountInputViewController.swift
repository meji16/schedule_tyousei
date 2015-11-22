//
//  newAccountInputViewController.swift
//  chouseiCatchUp
//
//  Created by Takuma Kaito on 2015/11/23.
//  Copyright (c) 2015年 Kaito Yato. All rights reserved.
//

import UIKit

class newAccountInputViewController: UIViewController {

   
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var buttonShowPassword: UIButton!
    
    @IBOutlet weak var labelUserNameErrMessage: UILabel!
    @IBOutlet weak var labelPhoneNumberErrMessage: UILabel!
    @IBOutlet weak var labelPasswordErrMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        password.secureTextEntry = true
        resetErrMessage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    func resetErrMessage(){
        labelUserNameErrMessage.text = ""
      labelPhoneNumberErrMessage.text = ""
        labelPasswordErrMessage.text = ""
    }
    
    //func inputErrCheck(userName:String, phoneNumber:Int8, passWord:String)->Int8{
      //      if
    
    //}


    @IBAction func showPassword(sender: AnyObject) {
        if password.secureTextEntry == true{
        password.secureTextEntry = false
            //buttonShowPassword.setTitle("パスワードを隠す", forState: .Normal)
        }
        
    }
    

}
