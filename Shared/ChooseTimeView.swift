//
//  ChooseTimeView.swift
//  ChooseTimeView
//
//  Created by Vo Thanh Sang on 11/09/2021.
//

import SwiftUI

struct ChooseTimeView: View {
    
    @State private var wakeUp = Date()

    var body: some View {
        
        VStack(spacing: 40) {
            
            Text("Choose time")
                .font(.title)
            
            DatePicker("Please enter a time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                .labelsHidden()
        }
        .frame(width: UIScreen.main.bounds.width - 56, height: 380)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: Color.gray.opacity(0.4), radius: 20)
        
        
        
    }
}

struct ChooseTimeView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseTimeView()
    }
}
