//  CinemaListScreenBuilder.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 14.02.2023.

import UIKit

/// Билдер модуля со списком стран
final class CountryListScreenBuilder: CountryListScreenBuilderProtocol {

    // MARK: - Public methods
    
    func build() -> UIViewController {
        let builder = CountryDescriptionBuilder()
        let networkService = MockNetworkService()
        let interactor = CountryListInteractor(networkService: networkService)
        let router = CountryListRouter(builder: builder)
        let presenter = CountryListPresenter(interactor: interactor, router: router)
        let viewController = CountryListViewController(presenter: presenter)
        router.viewController = viewController
        presenter.viewInput = viewController
        return viewController
    }
}
