//
//  informationView.swift
//  becomeFirstResponderAndPassData
//
//  Created by 林祐辰 on 2020/7/31.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit


class informationView: UIViewController {

    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var lastName: UILabel!
    @IBOutlet weak var school: UILabel!
    @IBOutlet weak var phoneNum: UILabel!
    @IBOutlet weak var mail: UILabel!
    @IBOutlet weak var birthDay: UILabel!
    @IBOutlet weak var unknown: UIImageView!
    @IBOutlet weak var profile: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func unwindData(_segue:UIStoryboardSegue){
        unknown.isHidden = true
        profile.isHidden = false
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
