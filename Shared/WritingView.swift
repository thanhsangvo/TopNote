//
//  WritingView.swift
//  WritingView
//
//  Created by Vo Thanh Sang on 11/09/2021.
//

import SwiftUI

struct WritingView: View {
    
    @State private var placeholderString = "Start writing..."
    @State private var note = "Start writing..."

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
                
                TextEditor(text: $note)
                    .font(.body)
                    .foregroundColor(self.note == placeholderString ? .gray : Color("Primary"))
                    .onTapGesture {
                        if self.note == placeholderString {
                            self.note = ""
                        }
                    }
                    .padding(.horizontal)
                    
                Spacer()
                
                HStack {
                    Image(systemName: "leaf.fill")
                        .foregroundColor(Color("Primary"))
                    
                    Spacer()
                    
                    Image(systemName: "camera.fill")
                        .foregroundColor(Color("Primary"))
                    
                    Spacer()
                    
                    Image(systemName: "scribble")
                        .foregroundColor(Color("Primary"))
                    
                    Spacer()
                    
                    Image(systemName: "mic.fill")
                        .foregroundColor(Color("Primary"))
                    
                    Spacer()
                    
                    Image(systemName: "paperclip")
                        .foregroundColor(Color("Primary"))
                }
                .padding()
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

struct WritingView_Previews: PreviewProvider {
    static var previews: some View {
        WritingView()
    }
}
