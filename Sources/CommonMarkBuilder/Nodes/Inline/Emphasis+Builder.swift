import CommonMark

extension Emphasis {
    public convenience init(_ closure: () -> String) {
        self.init(text: closure())
    }

    public convenience init(@CommonMarkBuilder _ builder: () -> InlineConvertible) {
        self.init(children: builder().inlineValue)
    }
}
