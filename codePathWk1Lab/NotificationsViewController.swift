//
//  NotificationsViewController.swift
//  codePathWk1Lab
//
//  Created by Sung, Alexander on 9/22/16.
//  Copyright © 2016 Capital One. All rights reserved.
//

import UIKit

class NotificationsViewController: UIViewController {

    @IBOutlet weak var notificationsScrollView: UIScrollView!
    @IBOutlet weak var notificationsImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        notificationsScrollView.contentSize = notificationsImageView.image!.size
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
