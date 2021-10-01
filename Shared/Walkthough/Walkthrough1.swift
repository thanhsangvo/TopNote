//
//  Walkthrough1.swift
//  Walkthrough1
//
//  Created by Vo Thanh Sang on 10/09/2021.
//

import SwiftUI

struct Walkthrough1: View {
    
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
                
                Text("Focus on what matters most. \nManage everything, from big  projects to personal monents.")
                    .foregroundColor(Color("Neutral2"))
                    .multilineTextAlignment(.leading)

            }
            
            Spacer()
            
            Image("Illus")
                .resizable()
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height / 2, alignment: .center)
        }
    }
}

struct Walkthrough1_Previews: PreviewProvider {
    static var previews: some View {
        Walkthrough1()
    }
}
