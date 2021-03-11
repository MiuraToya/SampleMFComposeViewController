//
//  ViewController.swift
//  SampleMFComposeViewController
//
//  Created by 三浦　登哉 on 2021/03/11.
//

import UIKit
import MessageUI
class ViewController: UIViewController, MFMailComposeViewControllerDelegate, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    @IBAction func toMail(_ sender: Any) {
        if MFMailComposeViewController.canSendMail() {
            return
        }
        let mailViewController = UIStoryboard(name: "Mail", bundle: nil).instantiateInitialViewController() as! MFMailComposeViewController
        let toAddress = ["touya8811@icloud.com"]
        mailViewController.delegate = self
        mailViewController.setSubject("通報")
        mailViewController.setToRecipients(toAddress)
        mailViewController.setMessageBody("通報相手のid、通報理由を記載の上送信してください", isHTML: false)
        self.present(mailViewController, animated: true, completion: nil)
        
        
    }
    

}

