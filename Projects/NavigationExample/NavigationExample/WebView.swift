//
//  WebView.swift
//  NavigationExample
//
//  Created by Ludovic Ollagnier on 05/10/2022.
//

import UIKit
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    let url: URL

    typealias UIViewType = WKWebView

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView

    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: url))
    }

}
