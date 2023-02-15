//  CinemaListRouter.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 14.02.2023.

import UIKit

/// Роутер модуля со списком стран
final class CountryListRouter: CountryListRoutingProtocol {

    // MARK: - Public properties

    weak var viewController: CountryListViewController?

    // MARK: - Private properties

    private let builder: CountryDescriptionBuilderProtocol

    // MARK: - Init

    init(builder: CountryDescriptionBuilderProtocol) {
        self.builder = builder
    }

    // MARK: - Public methods
    
    func routTo(hotels: [Hotel]) {
        let descriprionViewController = builder.build(hotels: hotels)
        self.viewController?.navigationController?.pushViewController(descriprionViewController, animated: true)
    }
}
