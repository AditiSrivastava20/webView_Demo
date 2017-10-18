//
//  webviewViewController.swift
//  webview
//
//  Created by anil kumar srivastava on 8/1/17.
//  Copyright © 2017 webview. All rights reserved.
//

import UIKit

class webviewViewController: UIViewController,UIWebViewDelegate{
    var webString = String()
    @IBOutlet weak  var webView = UIWebView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.webView?.delegate = self
        let url1 = URL (string: webString)!
        webView?.loadRequest(URLRequest(url: url1))
        webView?.scrollView.isScrollEnabled = true
        webView?.isUserInteractionEnabled = true
        
       
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
