//  CountryListConstant.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 15.02.2023.

import Foundation

/// Список стран
struct CountryListConstant {

    // MARK: - Public properties

    let countriesList = [
        Country(
            name: s.shirName,
            description: s.shirDescription,
            imageName: s.shirImageName,
            hontel: [Hotel(name: s.shirHotelName, cost: 5, imageName: s.shirHotelName, hotelDescription: s.shirHotelDescription)]
        ),

        Country(
            name: s.nargrandName,
            description: s.nargrandDescription,
            imageName: s.nargrandImageName,
            hontel: [Hotel(name: s.nargrandHotelName, cost: 200, imageName: s.nargrandHotelImageName, hotelDescription: s.nargrandHotelDescription)]
        ),

        Country(
            name: s.caerMorchenName,
            description: s.caerMorchenDescription,
            imageName: s.caerMorchenImageName,
            hontel: [Hotel(name: s.caerMorchenHotelName, cost: 0, imageName: s.caerMorchenImageName, hotelDescription: s.caerMorchenHotelDescription)]
        )
    ]
}
