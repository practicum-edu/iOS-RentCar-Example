//
//  SpecificationView.swift
//  RentCar
//
//

import SwiftUI

struct SpecificationView: View {
    let specification: CarSpecification
    let isVertical: Bool
    
    init(specification: CarSpecification, isVertical: Bool) {
        self.specification = specification
        self.isVertical = isVertical
    }
    
    var body: some View {
        if isVertical {
            VStack(alignment: .leading, spacing: 8) {
                specifications
            }
        }
        else {
            HStack(spacing: 8) {
                specifications
            }
        }
    }
    
    @ViewBuilder var specifications: some View {
        HStack(spacing: 4) {
            Image("gas")
            Text(specification.gas)
        }
        HStack(spacing: 4) {
            Image("drive")
            Text(specification.drive)
        }
        HStack(spacing: 4) {
            Image("capacity")
            Text(specification.capacity)
        }
    }
}

#Preview {
    SpecificationView(
        specification: CarSpecification(
            gas: "70L",
            drive: "Manual",
            capacity: "4 People"
        ), 
        isVertical: true
    )
}
