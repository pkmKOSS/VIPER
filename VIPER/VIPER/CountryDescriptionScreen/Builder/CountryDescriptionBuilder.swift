//  CountryDescriptionBuilder.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 14.02.2023.

import UIKit

/// Билдер модуля с описанием страны
final class CountryDescriptionBuilder: CountryDescriptionBuilderProtocol {
    // MARK: - Public methods
    func build(hotels: [Hotel]) -> UIViewController {
        let interactor = CountryDescriptionInteractor()
        let router = CountryDescriptionRouter()
        let presenter = CountryDescriptionPresenter(interactor: interactor, router: router)
        let viewController = CountryDescriptionViewController(presenter: presenter, hotels: [])

        router.viewController = viewController
        viewController.configureDescriptionScreen(hotels: hotels)

        return viewController
    }
}
