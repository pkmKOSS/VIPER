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
    let hontels: [Hotel]
}

/// Отель
struct Hotel {
    /// Название
    let name: String
    /// Цена
    let cost: Int
    /// Имя изображения
    let imageName: String
    /// Описание
    let hotelDescription: String
}
