//  ViewController.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 13.02.2023.

import UIKit

/// Контроллер представления со списком странн для отдыха
final class CountryListViewController: UIViewController, CountryListViewProtocol {
    
    // MARK: - Visual components
    
    var countryTableView = UITableView()

    // MARK: - Public properties


    // MARK: - Private properties

    private let presenter: CountryListPresenterProtocol
    private var countrys: [Country] = []

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
    
    func showCountrys(countrys: [Country]) {
        self.countrys = countrys
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
        presenter.fetchCountrys()
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
        presenter.routTo(hotels: countrys[indexPath.row].hontels)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        countrys.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView
                .dequeueReusableCell(withIdentifier: s.countryListCellName) as? CountryListTableViewCell
        else {
            return UITableViewCell()
        }
        cell.configure(country: countrys[indexPath.row])
        return cell
    }
}
