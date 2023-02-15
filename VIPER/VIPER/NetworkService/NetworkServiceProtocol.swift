//  NetworkServiceProtocol.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 14.02.2023.

import Foundation

/// Протокол сервия работы с сетью
protocol NetworkServiceProtocol {
    func fetchCountry(completion: @escaping ([Country]) -> ())
}
