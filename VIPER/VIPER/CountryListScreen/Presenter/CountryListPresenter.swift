//  CinemaListPresenter.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 14.02.2023.

import Foundation

/// Презентер модуля со списком стран
final class CountryListPresenter: CountryListPresenterProtocol {

    // MARK: - Private properties
    
    private let interactor: CountryListInteractorProtocol
    private let router: CountryListRoutingProtocol

    // MARK: - Public properties
    weak var viewInput: CountryListViewController?

    // MARK: - Init

    init(interactor: CountryListInteractorProtocol, router: CountryListRoutingProtocol) {
        self.interactor = interactor
        self.router = router
    }

    // MARK: - Public methods

    func fetchCountrys() {
        interactor.fetchCountrys { [ weak self ] countrys in
            guard let self = self else { return }
            self.viewInput?.showCountrys(countrys: countrys)
        }
    }

    func routTo(hotels: [Hotel]) {
        router.routTo(hotels: hotels)
    }
}
