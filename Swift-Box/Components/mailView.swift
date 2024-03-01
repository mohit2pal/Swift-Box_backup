import SwiftUI

struct mailView: View {
    var email: MessageStructure
    
    var body: some View {
        HStack{
            
            ZStack{
                // Profile photo displaying the first alphabet of the sender's email address
                Text(getFirstLetter(email: email))
                    .font(.custom("Arial Bold", size: 32))
                    .foregroundColor(Color.white)
                    .frame(width: 66, height: 66)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 17.24))
                    .frame(width: 66.0, height: 66.0)
                
                //notificationDot(count: 4)
                  //  .padding([.leading, .bottom], 55.0)
                
            }
            VStack(alignment: .leading) {
                
                //Frank Matthew
                HStack {
                    Text(from)
                        .font(.custom("Arial Bold", size: 12.8)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.2).multilineTextAlignment(.center)
                        .lineLimit(1)
                        .truncationMode(.tail)
                    
                    Spacer()
                    
                    //11:03 AM
                    Text("\(dateReceived)     ").font(.custom("Arial Regular", size: 12.8)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).multilineTextAlignment(.center)
                }
                
                //Overcoming the Fear of Rejection.
                VStack(alignment: .leading) {
                    Text(subject)
                        .font(.custom("Arial Regular", size: 12.8)).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))).tracking(0.2).multilineTextAlignment(.center)
                        .lineLimit(1)
                        .truncationMode(.tail)
                    
                    //We have all been there. Yo...
                    Text(email.snippet)
                        .font(.custom("Arial Regular", size: 12.8)).foregroundColor(Color(#colorLiteral(red: 0.67, green: 0.67, blue: 0.67, alpha: 1))).tracking(0.2)
                        .lineLimit(2)
                        .truncationMode(.tail)
                }
                .padding(.top, 0.0)
                
                
                newDivider(color: Color(#colorLiteral(red: 0.6666666865348816, green: 0.6666666865348816, blue: 0.6666666865348816, alpha: 0.05882352963089943)),
                           height: 2)
                .padding(.top, 1.0)
                
                
            }
            .padding(.leading, 5)
            
        }
    }
    
    // Function to get the first letter of the sender's email address
    private func getFirstLetter(email: MessageStructure) -> String {
        guard let from = email.payload.headers.first(where: { $0.name == "From" })?.value else {
            return "?"
        }
        let components = from.components(separatedBy: "@")
        if let firstChar = components.first?.first {
            return String(firstChar).uppercased()
        } else {
            return "?"
        }
    }
    
    var subject: String {
        for header in email.payload.headers {
            if header.name == "Subject" {
                return header.value
            }
        }
        return "Invalid Subject"
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
    
    var dateReceived: String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX") // Setting the locale to "en_US_POSIX" for consistency
        
        let formats = [
            "EEE, d MMM yyyy HH:mm:ss zzz", // Sun, 25 Feb 2024 07:11:31 GMT
            "EEE, dd MMM yyyy HH:mm:ss zzz", // Sat, 24 Feb 2024 18:37:02 GMT
            "EEE, d MMM yyyy HH:mm:ss Z", // Sun, 25 Feb 2024 03:04:30 +0000
            "EEE, d MMM yyyy HH:mm:ss Z (zzz)", // Sun, 25 Feb 2024 02:10:00 +0000 (UTC)
            "EEE, d MMM yyyy HH:mm:ss ZZZZ" // Sun, 25 Feb 2024 10:21:03 +0000
        ]
        
        for format in formats {
            dateFormatter.dateFormat = format
            for header in email.payload.headers {
                if header.name == "Date" {
                    if let timeReceived = dateFormatter.date(from: header.value) {
                        let formatDate = DateFormatter()
                        formatDate.dateFormat = "h:mm a"
                        return formatDate.string(from: timeReceived)
                    }
                }
            }
        }
        return "Invalid Date"
    }
}
