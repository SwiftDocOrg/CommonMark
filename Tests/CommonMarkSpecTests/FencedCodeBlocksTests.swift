// This file was automatically generated and should not be edited.

import XCTest
import CommonMark

final class CommonMarkSpecFencedCodeBlocksTests: XCTestCase {
    func testExample89() throws {
        let markdown = #######"""
        ```
        <
         >
        ```

        """#######

        let html = #######"""
        <pre><code>&lt;
         &gt;
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample90() throws {
        let markdown = #######"""
        ~~~
        <
         >
        ~~~

        """#######

        let html = #######"""
        <pre><code>&lt;
         &gt;
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample91() throws {
        let markdown = #######"""
        ``
        foo
        ``

        """#######

        let html = #######"""
        <p><code>foo</code></p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample92() throws {
        let markdown = #######"""
        ```
        aaa
        ~~~
        ```

        """#######

        let html = #######"""
        <pre><code>aaa
        ~~~
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample93() throws {
        let markdown = #######"""
        ~~~
        aaa
        ```
        ~~~

        """#######

        let html = #######"""
        <pre><code>aaa
        ```
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample94() throws {
        let markdown = #######"""
        ````
        aaa
        ```
        ``````

        """#######

        let html = #######"""
        <pre><code>aaa
        ```
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample95() throws {
        let markdown = #######"""
        ~~~~
        aaa
        ~~~
        ~~~~

        """#######

        let html = #######"""
        <pre><code>aaa
        ~~~
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample96() throws {
        let markdown = #######"""
        ```

        """#######

        let html = #######"""
        <pre><code></code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample97() throws {
        let markdown = #######"""
        `````
        
        ```
        aaa

        """#######

        let html = #######"""
        <pre><code>
        ```
        aaa
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample98() throws {
        let markdown = #######"""
        > ```
        > aaa
        
        bbb

        """#######

        let html = #######"""
        <blockquote>
        <pre><code>aaa
        </code></pre>
        </blockquote>
        <p>bbb</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample99() throws {
        let markdown = #######"""
        ```
        
          
        ```

        """#######

        let html = #######"""
        <pre><code>
          
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample100() throws {
        let markdown = #######"""
        ```
        ```

        """#######

        let html = #######"""
        <pre><code></code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample101() throws {
        let markdown = #######"""
         ```
         aaa
        aaa
        ```

        """#######

        let html = #######"""
        <pre><code>aaa
        aaa
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample102() throws {
        let markdown = #######"""
          ```
        aaa
          aaa
        aaa
          ```

        """#######

        let html = #######"""
        <pre><code>aaa
        aaa
        aaa
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample103() throws {
        let markdown = #######"""
           ```
           aaa
            aaa
          aaa
           ```

        """#######

        let html = #######"""
        <pre><code>aaa
         aaa
        aaa
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample104() throws {
        let markdown = #######"""
            ```
            aaa
            ```

        """#######

        let html = #######"""
        <pre><code>```
        aaa
        ```
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample105() throws {
        let markdown = #######"""
        ```
        aaa
          ```

        """#######

        let html = #######"""
        <pre><code>aaa
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample106() throws {
        let markdown = #######"""
           ```
        aaa
          ```

        """#######

        let html = #######"""
        <pre><code>aaa
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample107() throws {
        let markdown = #######"""
        ```
        aaa
            ```

        """#######

        let html = #######"""
        <pre><code>aaa
            ```
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample108() throws {
        let markdown = #######"""
        ``` ```
        aaa

        """#######

        let html = #######"""
        <p><code> </code>
        aaa</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample109() throws {
        let markdown = #######"""
        ~~~~~~
        aaa
        ~~~ ~~

        """#######

        let html = #######"""
        <pre><code>aaa
        ~~~ ~~
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample110() throws {
        let markdown = #######"""
        foo
        ```
        bar
        ```
        baz

        """#######

        let html = #######"""
        <p>foo</p>
        <pre><code>bar
        </code></pre>
        <p>baz</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample111() throws {
        let markdown = #######"""
        foo
        ---
        ~~~
        bar
        ~~~
        # baz

        """#######

        let html = #######"""
        <h2>foo</h2>
        <pre><code>bar
        </code></pre>
        <h1>baz</h1>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample112() throws {
        let markdown = #######"""
        ```ruby
        def foo(x)
          return 3
        end
        ```

        """#######

        let html = #######"""
        <pre><code class="language-ruby">def foo(x)
          return 3
        end
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample113() throws {
        let markdown = #######"""
        ~~~~    ruby startline=3 $%@#$
        def foo(x)
          return 3
        end
        ~~~~~~~

        """#######

        let html = #######"""
        <pre><code class="language-ruby">def foo(x)
          return 3
        end
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample114() throws {
        let markdown = #######"""
        ````;
        ````

        """#######

        let html = #######"""
        <pre><code class="language-;"></code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample115() throws {
        let markdown = #######"""
        ``` aa ```
        foo

        """#######

        let html = #######"""
        <p><code>aa</code>
        foo</p>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample116() throws {
        let markdown = #######"""
        ~~~ aa ``` ~~~
        foo
        ~~~

        """#######

        let html = #######"""
        <pre><code class="language-aa">foo
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

    func testExample117() throws {
        let markdown = #######"""
        ```
        ``` aaa
        ```

        """#######

        let html = #######"""
        <pre><code>``` aaa
        </code></pre>

        """#######

        let document = try Document(markdown)

        let actual = document.render(format: .html, options: [.unsafe])
        let expected = html

        XCTAssertEqual(actual, expected)
    }

}
