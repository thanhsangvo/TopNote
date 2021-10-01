//
//  NewNotesView.swift
//  NewNotesView
//
//  Created by Vo Thanh Sang on 11/09/2021.
//

import SwiftUI

struct NewNotesView: View {
    
    var body: some View {
        

        VStack(spacing: 20) {
            
            VStack(alignment: .center, spacing: 12) {
                
                Image(systemName: "leaf.fill")
                    .foregroundColor(Color("Primary"))
                    .frame(width: 44, height: 44)
                
                Text("Start writing")
                    .fontWeight(.regular)
                    .foregroundColor(Color.gray)
            }
            .frame(maxWidth: UIScreen.main.bounds.width - 56, maxHeight: 152)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(color: Color.gray.opacity(0.5), radius: 20)
            
            
            VStack(alignment: .center, spacing: 12) {
                
                Image(systemName: "leaf.fill")
                    .foregroundColor(Color("Primary"))
                    .frame(width: 44, height: 44)
                
                Text("Choose a template")
                    .fontWeight(.regular)
                    .foregroundColor(Color.gray)
            }
            .frame(maxWidth: UIScreen.main.bounds.width - 56, maxHeight: 152)
            .background(Color.white)
            .cornerRadius(15)
            .shadow(color: Color.gray.opacity(0.5), radius: 20)
            
        }

                
    }
}

struct NewNotesView_Previews: PreviewProvider {
    static var previews: some View {
        NewNotesView()
    }
}
