//
//  WebView.swift
//  H4XOR-SwiftUI
//
//  Created by Ryan Anderson on 1/13/22.
//

import Foundation
import WebKit
import SwiftUI

struct Webview: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> Webview.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}

