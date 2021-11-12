
//  Technicalisto

//  ContactUsVC.swift


import UIKit
import MessageUI

class ContactUsVC: UIViewController, MFMailComposeViewControllerDelegate{

    var email = "YourSendEmail"

override func viewDidLoad() {
    super.viewDidLoad()
}
    
// MARK: Email Methods
        
@IBAction func EmailTapped(_ sender: Any) {
    self.sendEmailImage()
}

// MARK: func sendEmailNormal

func sendEmailNormal(){

    let emailTitle = "Technicalisto"
    let messageBody = "<p>Hello <h2> Tech <p/> <h2/><h4> This is my first Test for send Email <h4/>"

    let toRecipents = [self.email]
            
    let mc: MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setSubject(emailTitle)
        mc.setMessageBody(messageBody, isHTML: true)
        mc.setToRecipients(toRecipents)

    self.present(mc, animated: true, completion: nil)
    
}
 
// MARK: func sendEmailHtml

func sendEmailHtml(){
    
    let emailTitle = "Technicalisto"
    let messageBody = "<html><body><h1>Header: Hello Test Email</h1><p>jgkjgjkfhj</p></body></html>"

    let toRecipents = [self.email]
            
    let mc: MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setSubject(emailTitle)
        mc.setMessageBody(messageBody, isHTML: true)
        mc.setToRecipients(toRecipents)

    self.present(mc, animated: true, completion: nil)
   
}

// MARK: func sendEmailImage

func sendEmailImage(){
    
    let emailTitle = "Technicalisto"
            
//        let image = UIImage(named:"logo") // Your Image From Assets
    let image = UIImage(contentsOfFile: Bundle.main.resourcePath! + "/logo.jpg") // Your Image From Project
    let imageData = image!.pngData() ?? nil
    let base64String = imageData?.base64EncodedString() ?? "" // Your String Image
    
    let messageBody = "<html><body><p>Header: Hello Test Email</p><p><b><img style='width:140px;height:100px;' src='data:image/png;base64,\(String(describing: base64String) )'></b></p></body></html>"

    let toRecipents = [self.email]
            
    let mc: MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setSubject(emailTitle)
        mc.setMessageBody(messageBody, isHTML: true)
        mc.setToRecipients(toRecipents)

    self.present(mc, animated: true, completion: nil)
    
}

// MARK: Delegate

private func mailComposeController(controller:MFMailComposeViewController, didFinishWithResult result:MFMailComposeResult, error:NSError) {
    self.dismiss(animated: true, completion: nil)
}

}
