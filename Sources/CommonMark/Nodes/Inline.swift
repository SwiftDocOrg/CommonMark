/// An inline content element.
public protocol Inline: Node {}

// MARK: -

extension Text: Inline {}
extension Strong: Inline {}
extension Emphasis: Inline {}
extension Link: Inline {}
extension Image: Inline {}
extension Code: Inline {}
extension HTML: Inline {}
extension SoftLineBreak: Inline {}
extension HardLineBreak: Inline {}
