//  CinemaListRoutingProtocol.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 14.02.2023.

import Foundation

/// Протокол роутера модуля со списком стран
protocol CountryListRoutingProtocol {
    func routTo(hotels: [Hotel])
}
