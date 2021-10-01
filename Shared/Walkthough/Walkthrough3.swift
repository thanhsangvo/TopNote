//
//  Walkthrough3.swift
//  Walkthrough3
//
//  Created by Vo Thanh Sang on 10/09/2021.
//

import SwiftUI

struct Walkthrough3: View {
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Text("Pagination dot")
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Skip")
                        .foregroundColor(Color("Primary"))
                        .padding(.trailing)
                }

            }
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 12) {
                
                Text("Welcome!")
                    .font(.largeTitle)
                
                Text("Plan, record and manage projects on any device - even offline.")
                    .font(.body)
                    .foregroundColor(Color("Neutral2"))
                    
            }.padding()
            
            Spacer()
            
            VStack(alignment: .center, spacing: 20) {
                
                HStack {
                    Button {
                        
                    } label: {
                        Text("Sign In")
                            .foregroundColor(Color("Primary"))
                    }
                }
                .frame(width: UIScreen.main.bounds.width - 56, height: 44)
                .background(Color("Neutral4"))
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color("Primary"), lineWidth: 1)
                )
                .cornerRadius(10)
                
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
                
                
            }
            
            Image("Illus3")
                .resizable()
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height / 2, alignment: .center)
        }
    }
}

struct Walkthrough3_Previews: PreviewProvider {
    static var previews: some View {
        Walkthrough3()
    }
}
