//
//  WebSiteViewController.swift
//  dia_de_victoria_radio_swift
//
//  Created by Angel Gabriel Ascanio Duran on 8/24/19.
//  Copyright © 2019 Angel Gabriel Ascanio Duran. All rights reserved.
//

import UIKit
import WebKit

class WebSiteViewController: UIViewController {
    
    @IBOutlet weak var WebView: UIWebView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let url = URL(string: "https://diadevictoria.com");
        let request = URLRequest(url: url!)
        
        WebView.loadRequest(request)
        
        // Do any additional setup after loading the view.
    }
}
