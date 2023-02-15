//  CountryDescriptionBuilderProtocol.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 14.02.2023.

import UIKit

/// Протокол билдера модуля с описанием страны
protocol CountryDescriptionBuilderProtocol {
    func build(hotels: [Hotel]) -> UIViewController
}
