//
//  ForgotPasswordView.swift
//  ForgotPasswordView
//
//  Created by Vo Thanh Sang on 10/09/2021.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    @State private var emailFogort = ""
    @State private var onEditing = false

    var body: some View {
        
        
        NavigationView {
            
            VStack(alignment: .leading, spacing: 30) {
    //            Enter your email address to reset your \npassword
                
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text("Enter")
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                        
                        Text("your email address")
                            .fontWeight(.regular)
                            .foregroundColor(Color("Primary"))
                        
                        Text("to reset your")
                            .fontWeight(.regular)
                            .foregroundColor(Color.gray)
                        
                    }
                    Text("password")
                        .fontWeight(.regular)
                        .foregroundColor(Color.gray)
                }


                
                TextField("Enter email", text: $emailFogort, onEditingChanged: { value in
                    
                    self.onEditing = value

                })
                    .padding(.horizontal)
                    .frame(maxWidth: UIScreen.main.bounds.width - 56, maxHeight: 44, alignment: .center)
                    .background(Color("Neutral3").opacity(0.2))
                    .cornerRadius(10)
                    
                    
                
                
                Spacer()
                
                HStack {
                    Button {
                        
                    } label: {
                        Text("Send")
                            .foregroundColor(Color.white)
                            .frame(width: UIScreen.main.bounds.width - 56, height: 44)
                            .background(self.onEditing ? Color("Primary") : Color("Neutral3"))
                            .cornerRadius(10)
                    }
                }
                
            }
            .navigationBarTitle("Forgot Password", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                
            }, label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(Color.black)
            }))
        }
        
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
