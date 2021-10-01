//
//  VerityCodeView.swift
//  VerityCodeView
//
//  Created by Vo Thanh Sang on 10/09/2021.
//

import SwiftUI

struct VerityCodeView: View {
    
    @State private var txt1 = ""
    @State private var txt2 = ""
    @State private var txt3 = ""
    @State private var txt4 = ""
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .center, spacing: 24) {
                
                Text("Check your email address, we have sent you code at pl.thanhsang0710@gmail.com")
                
                HStack(alignment: .center, spacing: 32) {
                    
                    TextField("", text: $txt1)
                        .padding()
                        .foregroundColor(Color("Primary"))
                        .frame(width: 44, height: 44)
                        .background(Color("Neutral3").opacity(0.3))
                        .cornerRadius(15)
                    
                    TextField("", text: $txt2)
                        .padding()
                        .foregroundColor(Color("Primary"))
                        .frame(width: 44, height: 44)
                        .background(Color("Neutral3").opacity(0.3))
                        .cornerRadius(15)
                    
                    TextField("", text: $txt3)
                        .padding()
                        .foregroundColor(Color("Primary"))
                        .frame(width: 44, height: 44)
                        .background(Color("Neutral3").opacity(0.3))
                        .cornerRadius(15)
                    
                    TextField("", text: $txt4)
                        .padding()
                        .foregroundColor(Color("Primary"))
                        .frame(width: 44, height: 44)
                        .background(Color("Neutral3").opacity(0.3))
                        .cornerRadius(15)
                }
                .frame(maxWidth: UIScreen.main.bounds.width - 56, maxHeight: 44, alignment: .center)
                
                VStack {
                    
                    HStack {
                        Text("Didn't receive the code?")
                            .fontWeight(.thin)
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Text("Resend")
                                .fontWeight(.regular)
                                .foregroundColor(Color("Primary"))
                        }

                    }
                    
                    HStack {
                        
                        Spacer()
                        
                        Text("(00:28)")
                            .fontWeight(.thin)
                    }
                }
                
                
                
                Spacer()
                
                HStack {
                    Button {
                        
                    } label: {
                        Text("Send")
                            .foregroundColor(Color.white)
                            .frame(width: UIScreen.main.bounds.width - 56, height: 44)
                            .background(Color("Primary"))
                            .cornerRadius(10)
                    }
                }

            }
            .padding()
            .navigationBarTitle("Verify Code", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                
            }, label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(Color.black)
            }))

        }
    }
}

struct VerityCodeView_Previews: PreviewProvider {
    static var previews: some View {
        VerityCodeView()
    }
}
