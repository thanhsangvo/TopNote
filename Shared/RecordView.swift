//
//  RecordView.swift
//  RecordView
//
//  Created by Vo Thanh Sang on 11/09/2021.
//

import SwiftUI

struct RecordView: View {
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                HStack {
                    
                    HStack {
                        
                        Image(systemName: "text.book.closed.fill")
                            .foregroundColor(Color("Primary"))
                        Text("All note")
                            .foregroundColor(Color("Primary"))
                        Image(systemName: "chevron.down")
                            .foregroundColor(Color("Primary"))

                    }
                    .padding(.horizontal, 5)
                    .frame(maxWidth: 131, maxHeight: 40)
                    .background(Color("Primary").opacity(0.2))
                    .cornerRadius(10)
                    
                    Spacer()
                }
                .padding(.leading)
                
                Divider()
                    .padding()
                
                    
                Spacer()
                
                Text("0:00")
                    .font(.title)
                    .foregroundColor(Color("Neutral3"))
                
                HStack(spacing: 27) {
                    
                    Button {
                        
                    } label: {
                        Text("Cancel")
                            .foregroundColor(Color("Primary"))
                            .frame(width: 146, height: 44)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                                    .stroke(Color("Primary"), lineWidth: 1)
                            )
                            
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Record")
                            .foregroundColor(Color.white)
                            .frame(width: 146, height: 44)
                            .background(Color("Primary"))
                            .cornerRadius(10)
                            
                        
                    }

                }
                .frame(width: UIScreen.main.bounds.width - 56, height: 44)
                .padding(.bottom)
                
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "bell.fill")
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color.black)
                    }

                    
                    Button {
                        
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color.black)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Done")
                            .foregroundColor(Color("Primary"))
                    }
                }
                
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Image(systemName: "chevron.left")
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color.black)
                    }
                }
                
            }
        }
    }

}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView()
    }
}
