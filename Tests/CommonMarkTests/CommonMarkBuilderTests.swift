import XCTest
import CommonMark

final class CommonMarkBuilderTests: XCTestCase {
    func testCommonMarkBuilder() throws {
        let urlString: String? = "https://www.un.org/en/universal-declaration-human-rights/"

        let articles: [String] = [
            """
            All human beings are born free and equal in dignity and rights.
            They are endowed with reason and conscience
            and should act towards one another in a spirit of brotherhood.
            """
        ]

        let document = Document {
            Heading {
                if let urlString = urlString {
                    Link(urlString: urlString, title: "View full version") {
                        "Universal Declaration of Human Rights"
                    }
                }
            }

            for (number, body) in zip(1..., articles) {
                Section {
                    Heading { "Article \(number)." }
                    body
                }
            }
        }

        let expected = try Document(Fixtures.udhr)

        XCTAssertEqual(document.description, expected.description)
    }

    func testListBuilder() throws {
        let numbers = 1...3

        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        formatter.locale = Locale(identifier: "en-US")

        do {
            let list = List(of: numbers) { n in
                formatter.string(for: n)
            }

            let expected = #"""
                             - one
                             - two
                             - three

                           """#

            let actual = list.description

            XCTAssertEqual(expected, actual)
        }

        do {
            let list = List(of: numbers, delimiter: .period(1)) { n in
                formatter.string(for: n)
            }

            let expected = #"""
                           1.  one
                           2.  two
                           3.  three

                           """#

            let actual = list.description

            XCTAssertEqual(expected, actual)
        }
    }

    func testHTMLBlock() throws {
        let document = Document {
            HTMLBlock.wrap {
                Paragraph { "Hello, world!" }
            } before: {
                "<div>"
            } after: {
                "</div>"
            }
        }

        let expected = #"""
        <div>

        Hello, world\!

        </div>

        """#

        let actual = document.description

        XCTAssertEqual(expected, actual)
    }
}
