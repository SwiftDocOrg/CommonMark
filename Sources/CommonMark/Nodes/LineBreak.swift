/// A line break element.
public protocol LineBreak {}

// MARK: -

extension HardLineBreak: LineBreak {}
extension SoftLineBreak: LineBreak {}
