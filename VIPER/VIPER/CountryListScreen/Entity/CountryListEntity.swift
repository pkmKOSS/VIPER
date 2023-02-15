//  CinemaListEntity.swift
//  VIPER
//  Created by Григоренко Александр Игоревич on 14.02.2023.

import Foundation

/// Страна отдыха
struct Country {
    /// Название страны отдыха
    let name: String
    /// Описание страны отдыха
    let description: String
    /// Изображение
    let imageName: String
    /// Отели страны
    let hontel: [Hotel]
}
