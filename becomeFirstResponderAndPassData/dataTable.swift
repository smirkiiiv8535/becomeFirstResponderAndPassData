//
//  dataTable.swift
//  becomeFirstResponderAndPassData
//
//  Created by 林祐辰 on 2020/7/31.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit

class dataTable: UITableViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var school: UITextField!
    @IBOutlet weak var cellPhoneNum: UITextField!
    @IBOutlet weak var emailAddres: UITextField!
    @IBOutlet weak var birthday: UITextField!
    
    let datepick = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDate()
    }

    override func viewWillAppear(_ animated: Bool) {
           self.firstName.becomeFirstResponder()
       }
    
    @IBAction func nextTextField(_ sender: UITextField) {
        switch sender {
        case firstName:
            lastName.becomeFirstResponder()
        case lastName:
            school.becomeFirstResponder()
        case school :
            cellPhoneNum.becomeFirstResponder()
        case cellPhoneNum :
            emailAddres.becomeFirstResponder()
        case emailAddres :
            sender.resignFirstResponder()
        default:
            return
        }
        
    }
    
    func createDate(){
        
        let timeToolbar = UIToolbar()
        timeToolbar.sizeToFit()
        
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(self.endTyping))
        timeToolbar.setItems([doneBtn], animated: false)
        
        self.birthday.inputAccessoryView = timeToolbar
    }
    
    @objc func endTyping(){
        self.view.endEditing(true)
    }
    
    
    @IBAction func changeBirth(_ sender: UITextField) {
        
        datepick.datePickerMode = UIDatePicker.Mode.date
        sender.inputView = datepick
    
        datepick.addTarget(self, action: #selector(self.dateChange), for: .valueChanged)
    }
    
    
    
    @objc func dateChange (){
        let changeDateString = DateFormatter()
            changeDateString.dateFormat  = "MM/dd/yyyy"
            birthday.text = changeDateString.string(from:datepick.date)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let firstViewScreen = segue.destination as! informationView
        firstViewScreen.firstName.text = "姓氏 : \(firstName.text!)"
        firstViewScreen.lastName.text = " 名字 : \(lastName.text!)"
        firstViewScreen.school.text = " 學校 : \(school.text!)"
        firstViewScreen.phoneNum.text = " 手機號碼 : \(cellPhoneNum.text!)"
        firstViewScreen.mail.text = " E-mail : \(emailAddres.text!)"
        firstViewScreen.birthDay.text = "生日 : \(birthday.text!) "
     
    }
        
  
    
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

   

    

}
