//
//  Walkthrough2.swift
//  Walkthrough2
//
//  Created by Vo Thanh Sang on 10/09/2021.
//

import SwiftUI

struct Walkthrough2: View {
    
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
                
                Text("Remember everything important.\nA central place for your notes, ideas, lists and reminders.")
                    .font(.body)
                    .foregroundColor(Color("Neutral2"))
                    .multilineTextAlignment(.leading)
            }
            
            Spacer()
            
            Image("Illus2")
                .resizable()
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height / 2, alignment: .center)
        }
    }
}


struct Walkthrough2_Previews: PreviewProvider {
    static var previews: some View {
        Walkthrough2()
    }
}
