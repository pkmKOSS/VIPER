//  CountryListConstant.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 15.02.2023.

import Foundation

/// Список стран
struct CountryListConstant {

    // MARK: - Public properties

    let countrysList = [
        Country(
            name: s.shirName,
            description: s.shirDescription,
            imageName: s.shirImageName,
            hontels: [Hotel(name: s.shirHotelName, cost: 5, imageName: s.shirHotelName, hotelDescription: s.shirHotelDescription)]
        ),

        Country(
            name: s.nargrandName,
            description: s.nargrandDescription,
            imageName: s.nargrandImageName,
            hontels: [Hotel(name: s.nargrandHotelName, cost: 200, imageName: s.nargrandHotelImageName, hotelDescription: s.nargrandHotelDescription)]
        ),

        Country(
            name: s.caerMorchenName,
            description: s.caerMorchenDescription,
            imageName: s.caerMorchenImageName,
            hontels: [Hotel(name: s.caerMorchenHotelName, cost: 0, imageName: s.caerMorchenImageName, hotelDescription: s.caerMorchenHotelDescription)]
        )
    ]
}
