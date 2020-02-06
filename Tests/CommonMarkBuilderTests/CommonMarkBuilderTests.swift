import XCTest
import CommonMark
import CommonMarkBuilder
//import enum CommonMarkTests.Fixtures

final class CommonMarkBuilderTests: XCTestCase {
    func testCommonMarkBuilder() throws {
        let document = Document {
            Heading {
                Link(urlString: "https://www.un.org/en/universal-declaration-human-rights/" as String?,
                     title: "View full version" as String?) {
                    "Universal Declaration of Human Rights"
                }
            }

            Section {
                Heading { "Article 1." }
            }

            Fragment {
                """
                All human beings are born free and equal in dignity and rights.
                They are endowed with reason and conscience
                and should act towards one another in a spirit of brotherhood.
                """
            }
        }

        let expected = try Document(Fixtures.uhdr)

        XCTAssertEqual(document.description, expected.description)
    }
}
