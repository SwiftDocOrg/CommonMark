import CommonMark

extension Heading {
    public convenience init(level: Int = 1, @CommonMarkBuilder _ builder: () -> InlineConvertible) {
        self.init(level: level, children: builder().inlineValue)
    }
}
