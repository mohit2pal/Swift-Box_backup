//
//  workmailview.swift
//  Swift-Box
//
//  Created by SHIVANSHU DIXIT on 20/02/24.
//

import SwiftUI

struct workmailview: View {
    var body: some View {
            HStack{
                
                ZStack{
                    //Rectangle 3
                    
                    //REXT INC
                  
                    //Ellipse 10
                    Circle()
                        .fill(Color(#colorLiteral(red: 0.6666666865348816, green: 0.6666666865348816, blue: 0.6666666865348816, alpha: 1)))
                    .frame(width: 61, height: 61)
                    notificationDot(count: 3)
                        .padding([.leading, .bottom], 45.0)
                    
                    
                    Image("REXTINC")
                    
                }
                VStack(alignment: .leading) {
                    
                    //Frank Matthew
                    HStack {
                        Text("REXT, INC").font(.custom("Arial Bold", size: 12.8)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.2).multilineTextAlignment(.center)
                        
                        Spacer()
                        
                        //11:03 AM
                        Text("11: 03 AM     ").font(.custom("Arial Regular", size: 12.8)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                    }
                    
                    //Overcoming the Fear of Rejection.
                    VStack(alignment: .leading) {
                    Text("In office safety precautions. ").font(.custom("Arial Regular", size: 12.8)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.2).multilineTextAlignment(.center)
                        
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
    workmailview()
}
