//  CountryDescriptionViewController.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 14.02.2023.

import UIKit

/// Контроллер представления модуля с описанием страны
final class CountryDescriptionViewController: UIViewController, CountryDescriptionViewProtocol {

    // MARK: - Private properties

    private var presenter: CountryDescriptionPresenterProtocol
    private var hotels: [Hotel] = []

    // MARK: - Init

    init(presenter: CountryDescriptionPresenterProtocol, hotels: [Hotel]) {
        self.presenter = presenter
        self.hotels = hotels
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        nil
    }

    // MARK: - Visual components

    var countryTableView = UITableView()

    // MARK: - life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
        configureCountryTableView()
    }

    // MARK: - Public methods

    public func configureDescriptionScreen(hotels: [Hotel]) {
        self.hotels = hotels
        countryTableView.reloadData()
    }

    // MARK: - Private methods

    private func configureViews() {
        countryTableView.register(CountryDescriptionTableViewCell.self, forCellReuseIdentifier: s.countryDescriptionCellName)
    }

    private func configureCountryTableView() {
        view.addSubview(countryTableView)
        countryTableView.dataSource = self
        countryTableView.delegate = self
        countryTableView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            countryTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            countryTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            countryTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            countryTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
}

// UITableViewDelegate, UITableViewDataSource
extension CountryDescriptionViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView
                .dequeueReusableCell(withIdentifier: s.countryDescriptionCellName) as? CountryDescriptionTableViewCell
        else {
            return UITableViewCell()
        }
        cell.configure(hotel: hotels[indexPath.row])
        return cell
    }
}
