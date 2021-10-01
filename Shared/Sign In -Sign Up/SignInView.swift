//
//  SignInView.swift
//  SignInView
//
//  Created by Vo Thanh Sang on 10/09/2021.
//

import SwiftUI

struct SignInView: View {
    @State private var email = ""
    @State private var pass = ""
    @State private var show = false
    var body: some View {
        
        VStack {
            
            Image("SignIn")
                .resizable()
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 230, alignment: .center)
            Spacer()
            
            Text("Sign In")
                .font(.largeTitle)
            
            VStack(spacing: 20) {
                
                TextField("Enter email", text: $email)
                    .padding(.horizontal)
                    .frame(width: UIScreen.main.bounds.width - 56, height: 44, alignment: .center)
                    .background(Color("Neutral3").opacity(0.2))
                    .cornerRadius(10)
                
                ZStack(alignment: .trailing) {
                    
                    if show {
                        SecureField("Enter password", text: $pass)
                            .padding(.horizontal)
                            .frame(width: UIScreen.main.bounds.width - 56, height: 44, alignment: .center)
                            .background(Color("Neutral3").opacity(0.2))
                            .cornerRadius(10)
                    } else {
                        TextField("Enter password", text: $pass)
                            .padding(.horizontal)
                            .frame(width: UIScreen.main.bounds.width - 56, height: 44, alignment: .center)
                            .background(Color("Neutral3").opacity(0.2))
                            .cornerRadius(10)
                    }
                    
                    Button {
                        self.show.toggle()
                    } label: {
                        Image(systemName: self.show ? "eye.fill" : "eye.slash.fill")
                            
                    }
                    .padding(.trailing, 20)

                }
                
                HStack {
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Fogot your\npassword?")
                            .font(.caption)
                            .foregroundColor(Color("Neutral3"))
                    }

                }
                .frame(width: UIScreen.main.bounds.width - 56, height: 44, alignment: .center)

            }
            
            Spacer()

            // button
            VStack(alignment: .center, spacing: 24) {
                
                HStack {
                    Button {
                        
                    } label: {
                        Text("Sign Up")
                            .foregroundColor(Color("Neutral4"))
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 56, height: 44)
                .background(Color("Primary"))
                .cornerRadius(10)
                
                Text("----- Or -----")
                    .foregroundColor(Color("Neutral3"))
                
                HStack(spacing: 0) {
                    
                    HStack {
                        Button {
                            
                        } label: {
                          
                            Label("Facebook", image: "f")
                                .foregroundColor(Color.white)
                        }
                    }
                    .frame(width: UIScreen.main.bounds.width / 2.5, height: 44)
                    .background(Color(red: 0.208, green: 0.35, blue: 0.619))
                    .cornerRadius(10)
                    
                    Spacer()
                    
                    HStack {
                        Button {
                            
                        } label: {
                            Label("Google", image: "google-plus")
                                .foregroundColor(Color.white)

                        }
                    }
                    .frame(width: UIScreen.main.bounds.width / 2.5, height: 44)
                    .background(Color("Red"))
                    .cornerRadius(10)
                }
                .frame(width: UIScreen.main.bounds.width - 56, height: 44)
               
            }
            
            Spacer()
            
            HStack(alignment: .center, spacing: 20) {
                
                Button {
                    
                } label: {
                    Text("Don't have\naccount?")
                        .font(.callout)
                        .foregroundColor(Color.gray)
                }
                
                Button {
                    
                } label: {
                    Text("Sign\nUp")
                        .font(.callout)
                        .foregroundColor(Color("Primary"))
                }

            }
            .padding([.top, .bottom])

        }
        .ignoresSafeArea(.all, edges: .all)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
