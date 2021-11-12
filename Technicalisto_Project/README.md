
# Technicalisto

## How to Handle Contact us by Mail


```

1. import MessageUI

2. Inherit MFMailComposeViewControllerDelegate


```

3. For Methods :

```
    func sendEmailNormal(){
        let emailTitle = "Technicalisto"
        let messageBody = "<p>Hello <h2> Tech <p/> <h2/><h4> This is my first Test for send Email <h4/>>"

        let toRecipents = [self.email]
            
        let mc: MFMailComposeViewController = MFMailComposeViewController()
            mc.mailComposeDelegate = self
            mc.setSubject(emailTitle)
            mc.setMessageBody(messageBody, isHTML: false) // false
            mc.setToRecipients(toRecipents)

        self.present(mc, animated: true, completion: nil)
    }

```

```
    func sendEmailHtml(){
        let emailTitle = "Technicalisto"
        
        let messageBody = "<html><body><p>Header: Hello Test Email</p><p></p></body></html>"

        let toRecipents = [self.email]
            
        let mc: MFMailComposeViewController = MFMailComposeViewController()
            mc.mailComposeDelegate = self
            mc.setSubject(emailTitle)
            mc.setMessageBody(messageBody, isHTML: true) // true
            mc.setToRecipients(toRecipents)

        self.present(mc, animated: true, completion: nil)
    }
    
```

```
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
    
```

## Note : Need Physical Device for test 
 
### Thanks

This app is inspired by Aya Baghdadi”
and copyright for [@Technicalisto](https://www.youtube.com/channel/UC7554uvArdSxL4tlws7Wf8Q)
