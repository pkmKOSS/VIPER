//  CinemaListPresenterProtocol.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 14.02.2023.

import Foundation

/// Протокол презентеря модуля со списком стран
protocol CountryListPresenterProtocol {
    func fetchCountries()
    func routTo(hotels: [Hotel])
}
