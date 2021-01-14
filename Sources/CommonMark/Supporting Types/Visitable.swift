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
        visitor.visitPost(document: self)
    }
}

// MARK: - Container Blocks

extension BlockQuote: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(blockQuote: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
        visitor.visitPost(blockQuote: self)
    }
}

extension List: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(list: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
        visitor.visitPost(list: self)
    }
}

extension List.Item: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(listItem: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
        visitor.visitPost(listItem: self)
    }
}

// MARK: - Leaf Blocks

extension Heading: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(heading: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
        visitor.visitPost(heading: self)
    }
}

extension Paragraph: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(paragraph: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
        visitor.visitPost(paragraph: self)
    }
}

extension HTMLBlock: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        _ = visitor.visit(self, by: visitor.visit(htmlBlock: self))
        visitor.visitPost(htmlBlock: self)
    }
}

extension CodeBlock: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(codeBlock: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
        visitor.visitPost(codeBlock: self)
    }
}

extension ThematicBreak: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(thematicBreak: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
        visitor.visitPost(thematicBreak: self)
    }
}

// MARK: - Inline

extension Text: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        _ = visitor.visit(self, by: visitor.visit(text: self))
        visitor.visitPost(text: self)
    }
}

extension Strong: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(strong: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
        visitor.visitPost(strong: self)
    }
}

extension Emphasis: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(emphasis: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
        visitor.visitPost(emphasis: self)
    }
}

extension Link: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        let continueKind = visitor.visit(self, by: visitor.visit(link: self))
        if continueKind == .visitChildren {
            self.walkVisitableChildren(with: visitor)
        }
        visitor.visitPost(link: self)
    }
}

extension Image: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        _ = visitor.visit(self, by: visitor.visit(image: self))
        visitor.visitPost(image: self)
    }
}

extension Code: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        _ = visitor.visit(self, by: visitor.visit(code: self))
        visitor.visitPost(code: self)
    }
}

extension RawHTML: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        _ = visitor.visit(self, by: visitor.visit(rawHTML: self))
        visitor.visitPost(rawHTML: self)
    }
}

extension SoftLineBreak: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        _ = visitor.visit(self, by: visitor.visit(softLineBreak: self))
        visitor.visitPost(softLineBreak: self)
    }
}

extension HardLineBreak: Visitable {
    public func accept<T: Visitor>(visitor: T) {
        _ = visitor.visit(self, by: visitor.visit(hardLineBreak: self))
        visitor.visitPost(hardLineBreak: self)
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
