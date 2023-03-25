import UIKit

public protocol Row  {
    var reuseIdentifier: String { get }
    var cellType: AnyClass { get }

    var estimatedHeight: CGFloat? { get }
    var defaultHeight: CGFloat? { get }
    var onClick: (() -> Void)? { get }
    
    var hashValue: Int { get }
    
    func configure(_ cell: UITableViewCell)
}

/// Класс строки таблицы
open class TableRow<CellType: ConfigurableCell>: Row where CellType: UITableViewCell {
    
    // MARK: - Properties

    public let item: CellType.CellData
    public let onClick: (() -> Void)?
    
    open var hashValue: Int {
        return ObjectIdentifier(self).hashValue
    }
    
    open var reuseIdentifier: String {
        return CellType.reuseIdentifier
    }
    
    open var estimatedHeight: CGFloat? {
        return CellType.estimatedHeight
    }
    
    open var defaultHeight: CGFloat? {
        return CellType.defaultHeight
    }
    
    open var cellType: AnyClass {
        return CellType.self as AnyClass
    }
    
    // MARK: - Life cycle
    
    public init(item: CellType.CellData,
                onClick: (() -> Void)? = nil) {
        self.item = item
        self.onClick = onClick
    }
    
    // MARK: - Methods
    
    open func configure(_ cell: UITableViewCell) {
        (cell as? CellType)?.configure(with: item)
    }
}
