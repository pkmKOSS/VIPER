//  CountryListCellTableViewCell.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 14.02.2023.

import UIKit

/// Ячейка с описанием страны.
final class CountryListTableViewCell: UITableViewCell {
    
    // MARK: - Private visual components

    private var cinemaAvatarImageView = UIImageView()
    private var cinemaDescriptionLabel = UILabel()
    private var cinemaNameLabel = UILabel()

    // MARK: Init

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        nil
    }

    // MARK: - Public methods

    func configure(
        country: Country
    ) {
        configureCinemaAvatarImageView(imageName: country.imageName)
        configureCinemaNameLabel(title: country.name)
        configureCinemaDescriptionLabel(modelOverview: country.description)
    }

    // MARK: - Private methods

    private func configureCinemaAvatarImageView(imageName: String) {
        addSubview(cinemaAvatarImageView)
        cinemaAvatarImageView.image = UIImage(named: imageName)
        cinemaAvatarImageView.translatesAutoresizingMaskIntoConstraints = false
        cinemaAvatarImageView.contentMode = .scaleAspectFill
        cinemaAvatarImageView.clipsToBounds = true
        cinemaAvatarImageView.layer.cornerRadius = 10

        NSLayoutConstraint.activate([
            cinemaAvatarImageView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: +10),
            cinemaAvatarImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: +10),
            cinemaAvatarImageView.heightAnchor.constraint(equalToConstant: 200),
            cinemaAvatarImageView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -10),
        ])
    }

    private func configureCinemaNameLabel(title: String) {
        addSubview(cinemaNameLabel)
        cinemaNameLabel.translatesAutoresizingMaskIntoConstraints = false
        cinemaNameLabel.text = title
        cinemaNameLabel.textAlignment = .center
        cinemaNameLabel.font = UIFont.boldSystemFont(ofSize: 30)
        cinemaNameLabel.textColor = .systemYellow
        cinemaNameLabel.numberOfLines = 0

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

    private func configureCinemaDescriptionLabel(modelOverview: String) {
        addSubview(cinemaDescriptionLabel)
        cinemaDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        cinemaDescriptionLabel.text = "\(modelOverview)"
        cinemaDescriptionLabel.textAlignment = .justified
        cinemaDescriptionLabel.lineBreakMode = .byClipping
        cinemaDescriptionLabel.numberOfLines = 0
        cinemaDescriptionLabel.textAlignment = .center

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

