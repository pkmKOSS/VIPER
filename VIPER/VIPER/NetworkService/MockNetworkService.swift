//  NetworkService.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 14.02.2023.

import Foundation

/// Мок сервиса работы с сетью
final class MockNetworkService: NetworkServiceProtocol {

    // MARK: - Private properties

    private let countryList = CountryListConstant().countriesList

    // MARK: - Public method

    func fetchCountry(completion: @escaping (([Country]) -> ())) {
        completion(countryList)
    }
}
