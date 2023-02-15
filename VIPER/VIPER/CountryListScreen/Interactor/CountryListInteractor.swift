//  CinemaListInteractor.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 14.02.2023.

import Foundation

/// Интерактор модуля со списком стран
final class CountryListInteractor: CountryListInteractorProtocol {

    // MARK: - Private properties

    private let networkService: NetworkServiceProtocol

    // MARK: - Init

    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }

    // MARK: - Public methods

    func fetchCountries(completion: @escaping ([Country]) -> ()) {
        networkService.fetchCountry { countries in
            completion(countries)
        }
    }
}
