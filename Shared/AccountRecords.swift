//
//  AccountRecords.swift
//  AccountRecords
//
//  Created by Vo Thanh Sang on 10/09/2021.
//

import SwiftUI

struct AccountRecords: View {
    
    @State private var userName = ""
    @State private var email = ""
    
    var body: some View {
        NavigationView {
            
            VStack(spacing: 20) {
                
                VStack(spacing: 8) {
                    
                    Image("sang")
                        .resizable()
                        .frame(maxWidth: 92, maxHeight: 106)
                        .clipShape(CustomCorners(corners: [.topRight, .bottomRight], radius: 15))
                    
                    Text("User name")
                        .foregroundColor(Color("Neutral3"))
                    
                    Text("Premium")
                        .font(.caption)
                        .fontWeight(.regular)
                        .foregroundColor(Color("Primary"))
                }
                .padding(.top)
                
                            
                VStack(spacing: 20) {
                    TextField("Enter user name", text: $userName)
                        .padding()
                        .foregroundColor(Color("Primary"))
                        .frame(maxWidth: UIScreen.main.bounds.width - 56, maxHeight: 44, alignment: .center)
                        .background(Color("Neutral3").opacity(0.2))
                        .cornerRadius(15)
                    
                    TextField("Enter email", text: $email)
                        .padding()
                        .foregroundColor(Color("Primary"))
                        .frame(maxWidth: UIScreen.main.bounds.width - 56, maxHeight: 44, alignment: .center)
                        .background(Color("Neutral3").opacity(0.2))
                        .cornerRadius(15)
                    
                    Spacer()
                }
            }
            .navigationBarTitle("Edit account", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                
            }, label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(Color.black)
            }), trailing: Button(action: {
                
            }, label: {
                Image(systemName: "pencil")
                    .foregroundColor(Color.black)
            }))
        }
    }
}

struct AccountRecords_Previews: PreviewProvider {
    static var previews: some View {
        AccountRecords()
    }
}
