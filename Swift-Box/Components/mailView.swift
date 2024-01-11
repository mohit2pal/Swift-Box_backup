//
//  mailView.swift
//  Swift-Box
//
//  Created by Subha on 01/01/24.
//

import SwiftUI

struct mailView: View {
    var body: some View {
            HStack{
                
                ZStack{
                    //Rectangle 3
                    Image(uiImage: #imageLiteral(resourceName: "mailPic"))
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 66, height: 66)
                        .clipShape(RoundedRectangle(cornerRadius: 17.24))
                        .frame(width: 66.0, height: 66.0)
                    
                    notificationDot(count: 4)
                        .padding([.leading, .bottom], 55.0)
                    
                }
                VStack(alignment: .leading) {
                    
                    //Frank Matthew
                    HStack {
                        Text("Frank Matthew").font(.custom("Arial Bold", size: 12.8)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.2).multilineTextAlignment(.center)
                        
                        Spacer()
                        
                        //11:03 AM
                        Text("11: 03 AM     ").font(.custom("Arial Regular", size: 12.8)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                    }
                    
                    //Overcoming the Fear of Rejection.
                    VStack(alignment: .leading) {
                        Text("Overcoming the Fear of Rejection.").font(.custom("Arial Regular", size: 12.8)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.2).multilineTextAlignment(.center)
                        
                        //We have all been there. Yo...
                        Text("We have all been there. Younger, I remember\nwanting to ask my current wife out. I was swe...").font(.custom("Arial Regular", size: 12.8)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.67, blue: 0.67, alpha: 1))).tracking(0.2)
                    }
                    .padding(.top, 0.0)
                    
                    
                    newDivider(color: Color(#colorLiteral(red: 0.6666666865348816, green: 0.6666666865348816, blue: 0.6666666865348816, alpha: 0.05882352963089943)),
                    height: 2)
                        .padding(.top, 1.0)
                        
                    
                }
                .padding(.leading, 5)
                
            }
        }
    }

#Preview {
    mailView()
}
