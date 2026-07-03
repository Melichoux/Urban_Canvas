//
//  ArtworkRowView.swift
//  Urban-Canvas
//
//  Created by Apprenant 72 on 02/07/2026.
//

import SwiftUI

struct ArtworkRowView: View {
    let artwork: Artwork
    var body: some View {
        HStack(spacing: 16) {
            Image(artwork.image)
                .resizable() // pour redimensionner
                .scaledToFill() // pour arrondir
                .frame(width: 80, height: 80)
                .clipShape(
                    UnevenRoundedRectangle(cornerRadii:
                            .init(
                                topLeading: 100,
                                bottomLeading: 100,
                                bottomTrailing: 100,
                                topTrailing: 100
                            )
                    )
                )
            VStack (spacing: 8) {
                Text(artwork.title)
                HStack{
                    Image(systemName: "mappin.circle")
                    Text(artwork.city)
                }
            }
        }
    }
}

#Preview {
    ArtworkRowView(artwork: (artworks[0]))
}
