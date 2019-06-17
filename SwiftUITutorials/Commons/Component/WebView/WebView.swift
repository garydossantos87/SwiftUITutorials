//
//  WebView.swift
//  SwiftUITutorials
//
//  Created by BeiOSRepublic on 17/06/2019.
//  Copyright © 2019 BeiOSRepublic. All rights reserved.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    var urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView(frame: .zero)
    }
    
    func updateUIView(_ view: WKWebView, context: Context) {
        guard let url = URL(string: urlString) else { return }
        
        view.load(URLRequest(url: url))
    }
}

#if DEBUG
struct WebView_Previews : PreviewProvider {
    static var previews: some View {
        WebView(urlString: "https://developer.apple.com/tutorials")
    }
}
#endif
