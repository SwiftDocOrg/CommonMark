import CommonMark

extension HTML {
    public convenience init(_ closure: () -> String) {
        self.init(literal: closure())
    }
}
