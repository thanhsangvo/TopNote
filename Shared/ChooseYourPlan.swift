//
//  ChooseYourPlan.swift
//  ChooseYourPlan
//
//  Created by Vo Thanh Sang on 10/09/2021.
//

import SwiftUI

struct ChooseYourPlan: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing: 15) {
                        
                        VStack(alignment: .center, spacing: 15) {
                            
                            Text("Premium")
                                .font(.largeTitle)
                            
                            Label("Sync on multiple devices", systemImage: "checkmark")
                            Label("Sync on multiple devices", systemImage: "checkmark")
                            Label("Sync on multiple devices", systemImage: "checkmark")
                            Label("Sync on multiple devices", systemImage: "checkmark")
                            Label("Sync on multiple devices", systemImage: "checkmark")
                            
                            Text("$6,99 Per month")
                                .font(.title2)
                            
                            Button {
                                
                            } label: {
                                Text("Select")
                                    .frame(width: 160, height: 44)
                                    .foregroundColor(Color.white)
                                    .background(Color("Primary"))
                                    .cornerRadius(10)
                            }
                            
                        }
                        .padding()
                        .frame(maxWidth: 244, maxHeight: 474)
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: Color.gray.opacity(0.3), radius: 10)
                        
                        VStack(alignment: .center, spacing: 15) {
                            
                            Text("Premium")
                                .font(.largeTitle)
                            
                            Label("Sync on multiple devices", systemImage: "checkmark")
                            Label("Sync on multiple devices", systemImage: "checkmark")
                            Label("Sync on multiple devices", systemImage: "checkmark")
                            Label("Sync on multiple devices", systemImage: "checkmark")
                            Label("Sync on multiple devices", systemImage: "checkmark")
                            
                            Text("$6,99 Per month")
                                .font(.title2)
                            
                            Button {
                                
                            } label: {
                                Text("Select")
                                    .frame(width: 160, height: 44)
                                    .foregroundColor(Color.white)
                                    .background(Color("Primary"))
                                    .cornerRadius(10)
                            }
                            
                        }
                        .padding()
                        .frame(maxWidth: 244, maxHeight: 474)
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: Color.gray.opacity(0.3), radius: 10)
                        
                    }
                    .padding()
                    
                }
            }
            .navigationBarTitle("Choose Your Plan", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: Button(action: {
                
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color.black)
            }))
            
        }
    }
}

struct ChooseYourPlan_Previews: PreviewProvider {
    static var previews: some View {
        ChooseYourPlan()
    }
}
