public protocol Visitable {
    func accept<T: Visitor>(visitor: T)
}

// MARK: - Document

extension Document: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(document: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
    }
}

// MARK: - Container Blocks

extension BlockQuote: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(blockQuote: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
    }
}

extension List: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(list: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
    }
}

extension List.Item: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(listItem: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
    }
}

// MARK: - Leaf Blocks

extension Heading: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(heading: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
    }
}

extension Paragraph: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(paragraph: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
    }
}

extension HTMLBlock: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(htmlBlock: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
    }
}

extension CodeBlock: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(codeBlock: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
    }
}

extension ThematicBreak: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(thematicBreak: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
    }
}

// MARK: - Inline

extension Text: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(text: self))
        if continueKind == .visitChildren {
            // type has no visitable children for now
        }
    }
}

extension Strong: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(strong: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
    }
}

extension Emphasis: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(emphasis: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
    }
}

extension Link: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(link: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
    }
}

extension Image: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(image: self))
        if continueKind == .visitChildren {
            // type has no visitable children for now
        }
    }
}

extension Code: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(code: self))
        if continueKind == .visitChildren {
            // type has no visitable children for now
        }
    }
}

extension RawHTML: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(rawHTML: self))
        if continueKind == .visitChildren {
            // type has no visitable children for now
        }
    }
}

extension SoftLineBreak: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(softLineBreak: self))
        if continueKind == .visitChildren {
            // type has no visitable children for now
        }
    }
}

extension HardLineBreak: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(hardLineBreak: self))
        if continueKind == .visitChildren {
            // type has no visitable children for now
        }
    }
}

// MARK: - Convenience Helpers

extension ContainerOfBlocks {
    internal var visitableChildren: AnyCollection<Visitable & Block & Node> {
        return AnyCollection(self.children.lazy.compactMap {
            $0 as? Visitable & Block & Node
        })
    }

    internal func walkVisitableChildren<T: Visitor>(with visitor: T) {
        for child in self.visitableChildren {
            child.accept(visitor: visitor)
        }
    }
}

extension ContainerOfInlineElements {
    internal var visitableChildren: AnyCollection<Visitable & Inline & Node> {
        return AnyCollection(self.children.lazy.compactMap {
            $0 as? Visitable & Inline & Node
        })
    }

    internal func walkVisitableChildren<T: Visitor>(with visitor: T) {
        for child in self.visitableChildren {
            child.accept(visitor: visitor)
        }
    }
}

extension List {
    internal var visitableChildren: AnyCollection<Visitable & List.Item> {
        return AnyCollection(self.children)
    }

    internal func walkVisitableChildren<T: Visitor>(with visitor: T) {
        for child in self.visitableChildren {
            child.accept(visitor: visitor)
        }
    }
}

extension List.Item {
    internal var visitableChildren: AnyCollection<Visitable & Node> {
        return AnyCollection(self.children.lazy.compactMap {
            $0 as? Visitable & Node
        })
    }

    internal func walkVisitableChildren<T: Visitor>(with visitor: T) {
        for child in self.visitableChildren {
            child.accept(visitor: visitor)
        }
    }
}
