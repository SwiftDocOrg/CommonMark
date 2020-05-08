import CommonMark

extension Paragraph {
    public convenience init(@CommonMarkBuilder _ builder: () -> InlineConvertible) {
        self.init(children: builder().inlineValue)
    }
}
