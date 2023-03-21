import Foundation
import UIKit

/// Базовый класс ячейки таблицы
public class BaseTableViewCell: ConfigurableCell {
    public static var reuseIdentifier: String = ""
    
    public static var estimatedHeight: CGFloat?
    
    public static var defaultHeight: CGFloat?
    
    
    public typealias CellData = BaseCellViewModel
    
    // MARK: - Life cycle
    
    init() {
        addViews()
        configureAppearance()
        configureLayout()
    }
    
    // MARK: - Methods

    func addViews() {
        // Override
    }

    func configureAppearance() {
        // Override
    }

    func configureLayout() {
        // Override
    }
    
    public func configure(with _: BaseCellViewModel) {
        // Override
    }
}
