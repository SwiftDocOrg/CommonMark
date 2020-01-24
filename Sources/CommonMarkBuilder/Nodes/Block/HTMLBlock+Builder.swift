import CommonMark

extension HTMLBlock {
    public convenience init(_ closure: () -> String) {
        self.init(literal: closure())
    }

    public convenience init(_ literal: String, @CommonMarkBuilder _ builder: () -> InlineConvertible) {
        self.init(literal: literal, children: builder().inlineValue)
    }
}
