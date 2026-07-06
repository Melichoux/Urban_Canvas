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
        VStack (alignment: .leading){
            Image(uiImage: UIImage(named: artwork.image) ?? UIImage(named: "placeholder")!)
                .resizable()
            //                .scaledToFit()
                .scaledToFill()
                .frame(maxWidth: .infinity, maxHeight: 250)
                .clipped()
                .opacity(0.7)
            
            //          AsyncImage(url: URL(string: "https://example.com/icon.png")) { image in
            //            image.resizable()
            //        } placeholder: {
            //            ProgressView()
            //        }
            //        .frame(width: 50, height: 50)
            VStack(alignment: .leading){
                Text(artwork.title)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundStyle(.mainOrange)
                    .padding(.bottom)
                Text(artwork.description)//description artwork
                    .padding(.bottom)
                
                VStack(alignment: .leading){//listing type, condition, date, author, localisation
                    HStack{
                        Text("Type: ")
                            .fontWeight(.semibold)
                        Text(artwork.type)
                    }
                    HStack{
                        Text("Conservation: ")
                            .fontWeight(.semibold)
                        Text(artwork.conservation)
                    }
                    HStack{
                        Text("Date: ")
                            .fontWeight(.semibold)
                        Text(artwork.date)
                    }
                    HStack{
                        Text("Localisation: ")
                            .fontWeight(.semibold)
                        Text("\(artwork.localisation)(Latitude: \(artwork.latitude), Longitude: \(artwork.longitude)")
                    }
                }
                
                MapDetailView(artwork: artwork)
                    .frame(height: 250)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .padding(.top, 8)
                
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ArtworkDetailView(artwork: artworks[1])
}
