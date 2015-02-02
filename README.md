# Readme to SiteGenesis-Community-TestSuite

The test suite focuses on functional frontend testing. It was build and may be run with __XLT Script Developer__ in Firefox or the __XLT Framework__ by orchestrating different WebDrivers. As test suites sometimes tend to become complex and hard to maintain we realized it is time to build a clearly structured test suite with a well-defined set of tests. 

The project idea is to collect experiences, consolidate knowledge and share ideas of testing practises. Although this test suite is based on testing the storefront of the demo shop __Demandware__ __SiteGenesis__ the underlying concepts and the communicated know-how are valid for building test suites of other web applications as well. Everybody is invited to use it, learn from it, improve it and adapt it to their needs. Possible purposes include:

- Initial test suite to automate new shops based on SiteGenesis
- Entry point for test development with fast learning curve
- Demonstration of test automation and test suite structuring
- Reuse of contained best practises in other (existing) projects

## Test Suite Setup

The following prerequisites and installation steps are needed to run the test suite with __XLT Script Developer__ in Firefox or the __XLT Framework__ orchestrating different WebDrivers. For further help please refer to [XLT Online](https://lab.xceptance.de/releases/xlt/latest/).

### [XLT Script Developer](https://lab.xceptance.de/releases/xlt/4.4.5/xlt-scriptdeveloper-4.4.5.xpi)

#### Prerequisites

- Firefox 17 (or higher)
- XLT&reg; Script Developer v4.5.0 (or higher)
- As system under test (SUT) the demo shop system  [SiteGenesis](http://www.demandware.com/on/demandware.store/Sites-SiteGenesis-Site) v15.1.0.14 (or higher) sold separately by [Demandware](http://www.demandware.com/) needs to be setup.

#### Installation

- [Download XLT Script Developer](https://lab.xceptance.de/releases/xlt/4.4.5/xlt-scriptdeveloper-4.4.5.xpi)  and unzip this test suite in a directory of your choice. (__Caution:__ Please only download the version from our company website and not the outdated version from Firefox Add-ons repositories.)
- Install Firefox add-on `XLT Script Developer`.
- Open `Tools > XLT Script Developer` in Firefox.
- Import this test suite by clicking the `folder` icon above the navigation panel.
- Set `Command Timeout` to 30 sec. and `Implicit Wait Timeout` to 5000 msec. in `XLT Scipt Developer > Settings`.
- Set the `storefront_url` of the shop system under test in `XLT Scipt Developer > Manage Global Test Data`.
- Open a test case in the navigaton panel and click the replay button in the toolbar.

### [XLT Framework](https://lab.xceptance.de/releases/xlt/4.4.5/xlt-4.4.5.zip)

#### Prerequisites

- XLT&reg; Framework v4.5.0 (or higher)
- JDK 7 Update 75 (or higher)
- Java IDE (e.g. Eclipse, IDEA, NetBeans)

#### Installation

- [Download the XLT Framework](https://www.xceptance.com/en/xlt/download.html) and unzip this test suite in a directory of your choice.
- Import test suite as new Java project (with JDK runtime).
- Import XLT libraries.
- Edit configuration see below.
- Run test as JUnit test (default configuration: Firefox WebDriver).
- Adapt WebDriver configurations in `project.properties` if you like.

## Test Suite Structure

This section gives a small introduction to the test suite structure. Please visit the generated [ScriptDoc](http://dataduke.github.io/xlt-testsuite-documentation/scriptdoc/index.html) for extended information on test data, packages, test cases and modules. The provided [Guide](https://github.com/dataduke/xlt-testsuite-documentation/blob/gh-pages/GUIDE.md) delivers instructions for test suite development, conventions for test suite styling and pointers to other helpful resources. All planned features are publicly tracked as [GitHub issues](https://github.com/Xceptance/SiteGenesis-Community-TestSuite/issues). Feel free to add feature requests!

### [General](http://dataduke.github.io/xlt-testsuite-documentation/scriptdoc/index.html)

We have already build a __foundation__ of over __200 modules__ structured in over __30 packages__. Our __test set__ consists of over __20 tests__ based on empirical knowledge from our daily business projects. The aim is to cover standard functions of the shop system. This means all tests have to cover a wide variety of different test pathes. The modules can be used as buliding bricks to enlarge the current test set quickly. 

    .
    |-- bin                                # executables
    |-- config                             # IDE configuration
    |   \-- data                           # test data dictionaries
    |       \-- default                    
    |-- scripts
    |   |-- modules/global                 # scripts for global elements
    |   |   |-- headerfooternav            # scripts for header, footer, nav elements
    |   |   \-- minicart                   # scripts for minicart elements in header
    |   |-- modules/helper                 # scripts for auxiliary services
    |   |-- modules/pages                  # scripts for specific pages
    |   |   |-- account                    # scripts for account pages
    |   |   |-- cart                       # scripts for cart page
    |   |   |-- catalog                    # scripts for catalog pages
    |   |   |-- checkout                   # scripts for checkout pages
    |   |   |-- homepage                   # scripts for homepage
    |   |   |-- productdetailpage          # scripts for productdetailpages
    |   |   \-- search                     # scripts for search and search result pages
    |   \-- tests
    |       |-- account                    # tests for account area
    |       |-- cart                       # tests for cart area
    |       |-- catalog                    # tests for catalog area
    |       |-- checkout                   # tests for checkout area
    |       |-- homepage                   # tests for homepage area
    |       |-- minicart                   # tests for minicart area
    |       \-- search                     # tests for search area
    |-- src
    |   \-- tests                          # XLT java wrapper classes
    |-- build.properties                   # XLT ant build properties
    |-- build.xml                          # XLT ant build configuration
    |-- xlt-scriptdeveloper.properties     # XLT Script Developer settings
    \-- global_testdata.properties         # global testdata properties


### [Test Data](http://dataduke.github.io/xlt-testsuite-documentation/scriptdoc/testdata.html)

__Test Data__ or short __Data__ (named `d...`) can be placed on global, package or test layer. Test data defined inside - at the test case - overwrites test data from outside (antihierarchical handling).

### [Packages](http://dataduke.github.io/xlt-testsuite-documentation/scriptdoc/packages.html)

__Packages__ form the main tree structure of the test suite. Each package may consists of other subpackages (layers) and contains test cases (named `tests.subpackage`), script modules (named `modules.subpackage`) or optional Java modules. The file system implements them as folders. 

### [Tests](http://dataduke.github.io/xlt-testsuite-documentation/scriptdoc/tests.html)

A __Test Case__ or short __Test__ (named `T...`) simulates a shop visit of a customer. A test focuses on a specific process part of the shop visit which is tested in depth. This test focus is assigned to a determined shop area. Every shop area has its own package (folder) so that each test can be filed. A test is build up on script modules. Each test consists of test setup (ensuring preconditions), test scope (focusing on relevant test steps) and test teardown (cleaning up of browser data). 

### [Modules](http://dataduke.github.io/xlt-testsuite-documentation/scriptdoc/modules.html)

A __Script Module__ or short __Module__ (named `M...`), contains actions, commands and comments. Most modules interact with elements of a specifc webpage. Thus it makes sense to structured them by their according pages. Each module can be reused by different tests.

__Validation Modules__ (named `V...`): Validation of webpage elements and dynamic data is a very essential part of testing. Hence these special modules evalute that a needed fit criterion is met (mostly via assertions).

__Flow Modules__ (named `F...`): Some modules mimic more sophisticated shopping behaviours by interacting with several pages in a flow. The achieved specific goal at the end of the process is of most importance (in contrast to the taken singular steps). Flows often reuse other modules and allow a compact test structure. Examples: Add a basic product to cart; Create a new customer; Add an address to a customer; Check order status in order history.

There are also several __global modules__ for interactions with elements in header, footer or nav (placed in `modules.global`) and some __helper modules__ for converting text, generating random values and other auxiliaries (placed in `modules.helper`).

## Test Suite Metadata

- Name: SiteGenesis-Community-TestSuite
- Version: v15.1.0.14 (matches SiteGenesis)
- Release: January 2015
- License: MIT License
- License URI: http://opensource.org/licenses/MIT
- Tags: xlt, testing, best practises, test automation, funtional testing, regression test, selenium

## Test Suite Contributors

- René Schwietzke, Xceptance Software Technologies GmbH
- Robert Baumgarten, Xceptance Software Technologies GmbH
- Benjamin Nothdurft, Xceptance Software Technologies GmbH
- your name here ;-)
