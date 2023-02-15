//  ViewController.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 13.02.2023.

import UIKit

/// Контроллер представления со списком странн для отдыха
final class CountryListViewController: UIViewController, CountryListViewProtocol {
    
    // MARK: - Visual components
    
    var countryTableView = UITableView()


    // MARK: - Private properties

    private let presenter: CountryListPresenterProtocol
    private var countries: [Country] = []

    // MARK: - Init

    init(countryTableView: UITableView = UITableView(), presenter: CountryListPresenterProtocol) {
        self.countryTableView = countryTableView
        self.presenter = presenter
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        nil
    }

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSreen()
    }
    
    // MARK: - Public methods
    
    func showCountries(countries: [Country]) {
        self.countries = countries
        DispatchQueue.main.async {
            self.countryTableView.reloadData()
        }
    }

    // MARK: - Private methods

    private func registerCountryListCell() {
        countryTableView.register(CountryListTableViewCell.self, forCellReuseIdentifier: s.countryListCellName)
    }

    private func configureSreen() {
        registerCountryListCell()
        configureCountryTableView()
        presenter.fetchCountries()
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

// UITableViewDelegate, UITableViewDataSource methods
extension CountryListViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.routTo(hotels: countries[indexPath.row].hontel)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        countries.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView
                .dequeueReusableCell(withIdentifier: s.countryListCellName) as? CountryListTableViewCell
        else {
            return UITableViewCell()
        }
        cell.configure(country: countries[indexPath.row])
        return cell
    }
}
