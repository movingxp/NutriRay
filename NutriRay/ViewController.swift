//
//  ViewController.swift
//  NutriRay
//
//  Copyright © 2021 361Hunters. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    let webView: WKWebView = {
        let preferences = WKPreferences()
        preferences.javaScriptEnabled = true
        let configuration = WKWebViewConfiguration()
        configuration.preferences = preferences
        let webView = WKWebView(frame: .zero, configuration: configuration)
        
        return webView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(webView)
        
        guard let url = URL(string: "https://www.figma.com/proto/1yna5ybE1f7tbvfhpKMQQM/NutriRay?node-id=28388%3A283&scaling=scale-down&page-id=33%3A444") else {
            return
        }
        webView.load(URLRequest(url: url))
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        webView.frame = view.bounds
    }

}

