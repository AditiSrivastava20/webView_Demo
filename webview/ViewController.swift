//
//  ViewController.swift
//  webview
//
//  Created by anil kumar srivastava on 8/1/17.
//  Copyright © 2017 webview. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tblView: UITableView!
    
    var titlearray = ["Facebook","Google","Instagram","LinkedIn","Twitter"]
    var iconImage = ["fb","google","instagram","linkedin","twitter"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return titlearray.count
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tablecell = tableView.dequeueReusableCell(withIdentifier : "cell" , for : indexPath ) as! TableViewCell
        tablecell.iconTitle.text = self.titlearray[indexPath.row]
       tablecell.imageIcon.image = UIImage(named: self.iconImage[indexPath.row])
    tablecell.imageIcon.layer.cornerRadius = 25
    tablecell.imageIcon.layer.masksToBounds = true
    
       return tablecell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let indexPath = tableView.indexPathForSelectedRow
        
        
        if indexPath?.row == 0{
            let url1 = "https://www.facebook.com"
            let myVC = storyboard?.instantiateViewController(withIdentifier: "webview") as! webviewViewController
            myVC.webString = url1
    
            self.navigationController?.pushViewController(myVC, animated: true)
        }
        
        else if indexPath?.row == 1
        
        {
            
            let url1 = "https://www.google.co.in"
            let myVC = storyboard?.instantiateViewController(withIdentifier: "webview") as! webviewViewController
            myVC.webString = url1
            
            self.navigationController?.pushViewController(myVC, animated: true)
            
        }
        
        else if indexPath?.row == 2 {
            let url1 = "https://www.instagram.com/?hl=en"
            let myVC = storyboard?.instantiateViewController(withIdentifier: "webview") as! webviewViewController
            myVC.webString = url1
            
            self.navigationController?.pushViewController(myVC, animated: true)
            

}
        else if indexPath?.row == 3 {
            let url1 = "https://www.linkedin.com/uas/login"
            
            let myVC = storyboard?.instantiateViewController(withIdentifier: "webview") as! webviewViewController
            myVC.webString = url1
            self.navigationController?.pushViewController(myVC, animated: true)
        
    }
        else if indexPath?.row == 4 {
            let url5 = "https://twitter.com/login"
            let myVC = storyboard?.instantiateViewController(withIdentifier: "webview") as! webviewViewController
            myVC.webString = url5
            
            self.navigationController?.pushViewController(myVC, animated: true)
}
       
    }
    
}
