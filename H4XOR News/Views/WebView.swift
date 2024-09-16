//
//  WebView.swift
//  H4XOR News
//
//  Created by Rohan Ankam on 19/03/23.
//

import Foundation
import SwiftUI
import WebKit

//UIViewRepresentable :- SwiftUIView that represents the UIKitView

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeURL = urlString {
            if let url = URL(string: safeURL){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
