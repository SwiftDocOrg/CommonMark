import CommonMark

extension BlockQuote {
    public convenience init(_ closure: () -> String) {
        self.init(children: [List.Item(children: [Paragraph(text: closure())])])
    }
    
    public convenience init(@CommonMarkBuilder _ builder: () -> BlockConvertible) {
        self.init(children: builder().blockValue)
    }
}
