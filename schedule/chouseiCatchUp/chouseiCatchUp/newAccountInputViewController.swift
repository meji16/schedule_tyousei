//
//  newAccountInputViewController.swift
//  chouseiCatchUp
//
//  Created by Takuma Kaito on 2015/11/23.
//  Copyright (c) 2015年 Kaito Yato. All rights reserved.
//

import UIKit

class newAccountInputViewController: UIViewController {

   
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var buttonShowPassword: UIButton!
    @IBOutlet weak var labelUserNameErrMessage: UILabel!
    @IBOutlet weak var labelPhoneNumberErrMessage: UILabel!
    @IBOutlet weak var labelPasswordErrMessage: UILabel!
    /*入力内容の判定
    0:正常　10:入力内容に不備あり
    */
    var inputErrStatus:Int8 = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.secureTextEntry = true
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
    
    @IBAction func buttonGoConfirm(sender: AnyObject) {
        var userName:String = userNameTextField.text
        var phoneNumber:String = phoneNumberTextField.text
        var password:String = passwordTextField.text
        resetErrMessage()
        inputErrStatus = inputErrCheck(userName, phoneNumber: phoneNumber, password: password)
        if inputErrStatus == 0{

        }
    }
  
    
    
    func inputErrCheck(userName:String, phoneNumber:String, password:String)->Int8{
        
      if userName == ""{
        inputErrStatus = 10
        labelUserNameErrMessage.text = "ユーザー名が入力されていません"
        }/*try{
            Int8(phoneNumber)
        }catch{
           labelPhoneNumberErrMessage.text = "不正な値が入力されています"
        }*/
        if phoneNumber == "" {
            labelPhoneNumberErrMessage.text = "電話番号が入力されていません"
        inputErrStatus = 10
        }
        else if phoneNumber.toInt() == nil{
            labelPhoneNumberErrMessage.text = "数字以外の入力があります"
            inputErrStatus = 10
        }
        if password == ""{
        inputErrStatus = 10
            labelPasswordErrMessage.text = "パスワードが入力されていません"
        }
        return inputErrStatus
        
     }


    @IBAction func showPassword(sender: AnyObject) {
        if passwordTextField.secureTextEntry == true{
        passwordTextField.secureTextEntry = false
            //buttonShowPassword.setTitle("パスワードを隠す", forState: .Normal)
        }
        
    }
    

}
