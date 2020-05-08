import CommonMark

extension List {
    public convenience init(delimiter: Delimiter = .none, tight: Bool = true, @CommonMarkBuilder _ builder: () -> ListItemConvertible) {
        self.init(delimiter: delimiter, children: builder().listItemValue)
        self.tight = tight
    }

    public convenience init<Values>(of values: Values, delimiter: Delimiter = .none, tight: Bool = true, @CommonMarkBuilder _ builder: (Values.Element) -> ListItemConvertible) where Values: Sequence {
        self.init(children: values.flatMap { builder($0).listItemValue })
        self.tight = tight
    }

    public convenience init<Values>(of values: Values, delimiter: Delimiter = .none, tight: Bool = true, _ closure: (Values.Element) -> String) where Values: Sequence {
        self.init(children: values.map { List.Item(children: [Text(literal: closure($0))]) })
        self.tight = tight
    }
}

// MARK: -

extension List.Item {
    public convenience init(@StringBuilder _ builder: () -> String) {
        self.init(children: [List.Item(children: [Paragraph(text: builder())])])
    }

    public convenience init(@CommonMarkBuilder _ builder: () -> BlockConvertible) {
        self.init(children: builder().blockValue)
    }
}
