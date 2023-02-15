//  CountryDescriptionPresenter.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 14.02.2023.

import Foundation

/// Презентер модуля описания страны
final class CountryDescriptionPresenter: CountryDescriptionPresenterProtocol {

    // MARK: - Private properties

    private let interactor: CountryDescriptionInteractorProtocol
    private let router: CountryDescriptionRouterProtocol

    // MARK: - Init
    init(interactor: CountryDescriptionInteractorProtocol, router: CountryDescriptionRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}
