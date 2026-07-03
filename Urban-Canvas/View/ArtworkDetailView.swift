//
//  SwiftUIView.swift
//  Urban-Canvas
//
//  Created by Apprenant 72 on 02/07/2026.
//

import SwiftUI

struct ArtworkDetailView: View {
    
    var artwork: Artwork
    
    var body: some View {
        VStack {
            Image (artwork.image)
                .resizable()
                .scaledToFit()
                .opacity(0.7)
            
//          AsyncImage(url: URL(string: "https://example.com/icon.png")) { image in
//            image.resizable()
//        } placeholder: {
//            ProgressView()
//        }
//        .frame(width: 50, height: 50)
            
            Text(artwork.title)
                .font(.title)
                .foregroundStyle(.mainOrange)
            Text(artwork.description)//description artwork
            
            VStack{//listing type, condition, date, author, localisation
                Text(artwork.type)
                Text(artwork.conservation)
                Text(artwork.date)
                Text(artwork.localisation)
                Text(String(artwork.latitude))
                Text(String(artwork.longitude))
            }
            
           
        }
       
    }
}

#Preview {
    ArtworkDetailView(artwork: artworks[1])
}
