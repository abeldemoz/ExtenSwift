#if !os(macOS)
import UIKit

@available(iOS 11.0, *)
public extension UIView {

    enum ALEdge {
        case top
        case leading
        case bottom
        case trailing
    }

    func pinToSuperviewMargins(priority: UILayoutPriority = .required) {
        guard let margins = superview?.layoutMarginsGuide else {
            return
        }

        activate(
            constraints: [
                topAnchor.constraint(equalTo: margins.topAnchor),
                bottomAnchor.constraint(equalTo: margins.bottomAnchor),
                leadingAnchor.constraint(equalTo: margins.leadingAnchor),
                trailingAnchor.constraint(equalTo: margins.trailingAnchor)
            ],
            priority: priority
        )
    }

    func pinToSuperviewTopAndBottomMargins(priority: UILayoutPriority = .required) {
        guard let margins = superview?.layoutMarginsGuide else {
            return
        }

        activate(
            constraints: [
                topAnchor.constraint(equalTo: margins.topAnchor),
                bottomAnchor.constraint(equalTo: margins.bottomAnchor)
            ],
            priority: priority
        )
    }

    func pinToSuperviewLeadingAndTrailingMargins(priority: UILayoutPriority = .required) {
        guard let margins = superview?.layoutMarginsGuide else {
            return
        }

        activate(
            constraints: [
                leadingAnchor.constraint(equalTo: margins.leadingAnchor),
                trailingAnchor.constraint(equalTo: margins.trailingAnchor)
            ],
            priority: priority
        )
    }

    func pinToSuperviewEdges(priority: UILayoutPriority = .required) {
        guard let superview = superview else {
            return
        }

        activate(
            constraints: [
                topAnchor.constraint(equalTo: superview.topAnchor),
                bottomAnchor.constraint(equalTo: superview.bottomAnchor),
                leadingAnchor.constraint(equalTo: superview.leadingAnchor),
                trailingAnchor.constraint(equalTo: superview.trailingAnchor)
            ],
            priority: priority
        )
    }

    func pinToSuperviewEdges(excludingEdges edges: [ALEdge], priority: UILayoutPriority = .required) {
        guard let superview = superview else {
            return
        }

        var constraints = [NSLayoutConstraint]()
        if !edges.contains(.top) {
            constraints.append(topAnchor.constraint(equalTo: superview.topAnchor))
        }

        if !edges.contains(.leading) {
            constraints.append(leadingAnchor.constraint(equalTo: superview.leadingAnchor))
        }

        if !edges.contains(.bottom) {
            constraints.append(bottomAnchor.constraint(equalTo: superview.bottomAnchor))
        }

        if !edges.contains(.trailing) {
            constraints.append(trailingAnchor.constraint(equalTo: superview.trailingAnchor))
        }

        activate(constraints: constraints, priority: priority)
    }

    func pinToSuperviewSafeArea(excludingEdges edges: [ALEdge] = [], priority: UILayoutPriority = .required) {
        guard let superview = superview else {
            return
        }

        var constraints = [NSLayoutConstraint]()
        if !edges.contains(.top) {
            constraints.append(topAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.topAnchor))
        }

        if !edges.contains(.leading) {
            constraints.append(leadingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.leadingAnchor))
        }

        if !edges.contains(.bottom) {
            constraints.append(bottomAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.bottomAnchor))
        }

        if !edges.contains(.trailing) {
            constraints.append(trailingAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.trailingAnchor))
        }

        activate(constraints: constraints, priority: priority)
    }

    func pinToSuperviewSafeAreaCenterY(priority: UILayoutPriority = .required) {
        guard let superview = superview else {
            return
        }

        activate(constraints: [centerYAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.centerYAnchor)], priority: priority)
    }

    func pinToSuperviewSafeAreaCenterX(priority: UILayoutPriority = .required) {
        guard let superview = superview else {
            return
        }

        activate(constraints: [centerXAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.centerXAnchor)], priority: priority)
    }

    func pinToSuperviewSafeAreaTop(inset: CGFloat = 0, priority: UILayoutPriority = .required) {
        guard let superview = superview else {
            return
        }

        activate(constraints: [topAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.topAnchor, constant: inset)], priority: priority)
    }

    func pinToSuperviewSafeAreaBottom(inset: CGFloat = 0, priority: UILayoutPriority = .required) {
        guard let superview = superview else {
            return
        }

        activate(constraints: [bottomAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.bottomAnchor, constant: -inset)], priority: priority)
    }

    func pinToSuperviewCenterY(offset: CGFloat = 0) {
        guard let superview = superview else {
            return
        }

        centerYAnchor.constraint(equalTo: superview.centerYAnchor, constant: offset).isActive = true
    }

    func pinToSuperviewCenterX(offset: CGFloat = 0) {
        guard let superview = superview else {
            return
        }

        centerXAnchor.constraint(equalTo: superview.centerXAnchor, constant: offset).isActive = true
    }

    func pinToSuperviewCenter(offset: CGPoint = .zero) {
        pinToSuperviewCenterX(offset: offset.x)
        pinToSuperviewCenterY(offset: offset.y)
    }

    private func activate(constraints: [NSLayoutConstraint], priority: UILayoutPriority) {
        translatesAutoresizingMaskIntoConstraints = false
        constraints.forEach { $0.priority = priority }
        NSLayoutConstraint.activate(constraints)
    }

}

public extension NSLayoutConstraint {
    func withPriority(_ priority: UILayoutPriority) -> Self {
        self.priority = priority
        return self
    }

    @discardableResult
    func activated() -> Self {
        isActive = true
        return self
    }
}
#endif
