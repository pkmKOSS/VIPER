//  CinemaListRouter.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 14.02.2023.

import UIKit

/// Роутер модуля со списком стран
final class CountryListRouter: CountryListRoutingProtocol {

    // MARK: - Publoc properties

    weak var viewController: CountryListViewController?

    // MARK: - Public methods
    
    func routTo(hotels: [Hotel]) {
        let descriprionViewController = CountryDescriptionBuilder().build(hotels: hotels)
        self.viewController?.navigationController?.pushViewController(descriprionViewController, animated: true)
    }
}
