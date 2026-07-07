//
//  FilterView.swift
//  Urban-Canvas
//
//  Created by Apprenant 72 on 06/07/2026.
//

import SwiftUI

struct FilterView: View {
    @Binding var filteredArtworks: [Artwork]
    @Binding var filterValue: String
    @Binding var isShowModal: Bool

    var arrayTypes: [String] {
        Array(Set(filteredArtworks.map { $0.type })).sorted()
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            VStack(alignment: .leading) {
                Text("Liste des filtres")
                    .font(.title2)
                    .padding(8)
                Text("Choisissez un type d'art")

            }

            VStack(spacing: 10) {
                Button("Tous") {
                    filterValue = "Tous"
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 12)
                .background(Color(.systemGray5))
                .foregroundColor(filterValue == "Tous" ? .orange : .primary)
                .cornerRadius(100)

                ForEach(arrayTypes, id: \.self) { arrayType in
                    Button(arrayType) {
                        filterValue = arrayType
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(Color(.systemGray5))
                    .foregroundColor(filterValue == arrayType ? .orange : .primary)
                    .cornerRadius(100)
                }
            }
        }
        .padding()
    }
}
