import CommonMark

extension List {
    public convenience init(delimiter: Delimiter = .none, @CommonMarkBuilder _ builder: () -> ListItemConvertible) {
        self.init(delimiter: delimiter, children: builder().listItemValue)
    }
}

// MARK: -

extension List.Item {
    public convenience init(_ closure: () -> String) {
        self.init(children: [List.Item(children: [Paragraph(text: closure())])])
    }
    
    public convenience init(@CommonMarkBuilder _ builder: () -> BlockConvertible) {
        self.init(children: builder().blockValue)
    }
}
