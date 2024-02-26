//
//  openMailScreen.swift
//  Swift-Box
//
//  Created by Sarthak Marwah on 09/01/24.
//

import SwiftUI
import WebKit

struct openMailScreen: View {
    var email: MessageStructure
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            ScrollView{
                VStack {
                    ZStack {
                        //Rectangle 5556
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(#colorLiteral(red: 0.1568627506494522, green: 0.16862745583057404, blue: 0.1921568661928177, alpha: 1)))
                            .frame(width: 390, height: 140)
                        
                        VStack(alignment: .leading) {
                            senderView(senderName: from, user: to)
                            
                        }.padding(.leading, -50).frame(width: 390, height: 205)
                    }
                    
//                    if let decodedHTML = decodeBase64AndConvertToHTML(email.payload.body.data) {
//                               HTMLView(htmlContent: decodedHTML)
//                           } else {
//                               Text("Failed to decode email content")
//                                   .font(.title)
//                           }
                    
//                    //sender
//                    Text("It’s HERE! NEW Deals new you! Come check out the excitement!").font(.custom("Arial Regular", size: 26.1)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
//                    
//                    Image("Email").resizable()
//                        .frame(width: 362, height: 1016.01)
                }
            }
        }
    }
    
    func decodeBase64AndConvertToHTML(_ base64EncodedString: String) -> String? {
            guard let data = Data(base64Encoded: base64EncodedString) else {
                return nil
            }
            return String(data: data, encoding: .utf8)
        }
    
    var from: String {
        for header in email.payload.headers {
            if header.name == "From" {
               let components = header.value.components(separatedBy: "<")
                
                return components[0]
            }
        }
        return "Invalid Sender"
    }
    
    var to: String {
        for header in email.payload.headers {
            if header.name == "To" {
                return header.value
            }
        }
        return "Invalid Reciever"
    }
}

struct HTMLView: UIViewRepresentable {
    let htmlContent: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.loadHTMLString(htmlContent, baseURL: nil)
    }
}

//
//#Preview {
//    openMailScreen()
//}
