//  CinemaListInteractorProtocol.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 14.02.2023.

import Foundation

/// Протокол интерактора модуля со списком стран
protocol CountryListInteractorProtocol {
    func fetchCountries(completion: @escaping ([Country]) -> ())
}
