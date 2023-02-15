//  Cell.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 15.02.2023.

import UIKit

/// Ячейка с описанием страны.
final class CountryDescriptionTableViewCell: UITableViewCell {

    // MARK: - Private visual components

    private var cinemaAvatarImageView = UIImageView()
    private var cinemaDescriptionLabel = UILabel()
    private var cinemaNameLabel = UILabel()

    // MARK: - Public methods

    func configure(
        hotel: Hotel
    ) {
        configureCountryAvatarImageView(imageName: hotel.imageName)
        configureCountryNameLabel(title: hotel.name)
        configureCountryDescriptionLabel(modelOverview: hotel.hotelDescription)
    }

    // MARK: - Private methods

    private func configureCountryAvatarImageView(imageName: String) {
        addSubview(cinemaAvatarImageView)
        makeCountryAvatarImageLayout()
        cinemaAvatarImageView.image = UIImage(named: imageName)
        cinemaAvatarImageView.translatesAutoresizingMaskIntoConstraints = false
        cinemaAvatarImageView.contentMode = .scaleAspectFit
        cinemaAvatarImageView.clipsToBounds = true
        cinemaAvatarImageView.layer.cornerRadius = 10
    }

    private func makeCountryAvatarImageLayout() {
        NSLayoutConstraint.activate([
            cinemaAvatarImageView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: +10),
            cinemaAvatarImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: +10),
            cinemaAvatarImageView.heightAnchor.constraint(equalToConstant: 200),
            cinemaAvatarImageView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
        ])
    }

    private func configureCountryNameLabel(title: String) {
        addSubview(cinemaNameLabel)
        makeCountryNameLabel()
        cinemaNameLabel.translatesAutoresizingMaskIntoConstraints = false
        cinemaNameLabel.text = title
        cinemaNameLabel.textAlignment = .center
        cinemaNameLabel.font = UIFont.boldSystemFont(ofSize: 30)
        cinemaNameLabel.textColor = .systemYellow
        cinemaNameLabel.numberOfLines = 0
    }

    private func makeCountryNameLabel() {
        NSLayoutConstraint.activate([
            cinemaNameLabel.leadingAnchor.constraint(
                equalTo: cinemaAvatarImageView.leadingAnchor
            ),
            cinemaNameLabel.topAnchor.constraint(equalTo: cinemaAvatarImageView.bottomAnchor, constant: +10),
            cinemaNameLabel.trailingAnchor.constraint(
                equalTo: safeAreaLayoutGuide.trailingAnchor,
                constant: -10
            )
        ])
    }

    private func configureCountryDescriptionLabel(modelOverview: String) {
        addSubview(cinemaDescriptionLabel)
        makeCountryDescriptionLabelLayout()
        cinemaDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        cinemaDescriptionLabel.text = "\(modelOverview)"
        cinemaDescriptionLabel.textAlignment = .justified
        cinemaDescriptionLabel.lineBreakMode = .byClipping
        cinemaDescriptionLabel.numberOfLines = 0
        cinemaDescriptionLabel.textAlignment = .center
    }

    private func makeCountryDescriptionLabelLayout() {
        NSLayoutConstraint.activate([
            cinemaDescriptionLabel.leadingAnchor.constraint(
                equalTo: cinemaAvatarImageView.leadingAnchor
            ),
            cinemaDescriptionLabel.topAnchor.constraint(equalTo: cinemaNameLabel.bottomAnchor, constant: +10),
            cinemaDescriptionLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            cinemaDescriptionLabel.trailingAnchor.constraint(
                equalTo: cinemaAvatarImageView.trailingAnchor
            ),
        ])
    }
}

