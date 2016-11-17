//
//  LoginPage.swift
//  LoginView
//
//  Created by 林暐潔 on 2016/11/16.
//  Copyright © 2016年 林暐潔. All rights reserved.
//

import UIKit

class LoginPage: UIViewController {
    
    let label = UILabel(frame: CGRect(x: UIScreen.main.bounds.width / 2 - 150, y: UIScreen.main.bounds.height / 2 - 75, width: 300, height: 150))
    
    func labelInitial() {
        label.numberOfLines = 0
        label.font = label.font.withSize(24)
        label.textAlignment = .center
        
//        label.adjustsFontSizeToFitWidth = true
//        label.minimumScaleFactor = 0.5
        
        view.addSubview(label)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelInitial()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
