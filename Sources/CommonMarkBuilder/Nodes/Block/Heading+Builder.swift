import CommonMark

extension Heading {
    public convenience init(level: Int = 1, _ closure: () -> String) {
        self.init(level: level, text: closure())
    }

    public convenience init(level: Int = 1, @CommonMarkBuilder _ builder: () -> InlineConvertible) {
        self.init(level: level, children: builder().inlineValue)
    }
}
