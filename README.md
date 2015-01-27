<a href="http://github.com/dataduke/xlt-testsuite-documentation/blob/master/LICENSE.md" target="_blank"><img src="http://img.shields.io/badge/License-MIT-blue.svg" alt="MIT-license badge"></a>

# SiteGenesis-Community-TestSuite

The test suite focuses on functional frontend blackbox regression testing. It was build and may be run with the __XLT Script Developer__ in Firefox and the __XLT Framework__ by orchestrating different WebDrivers. 

As there are already many complex test suites (including some for SiteGenesis) we realized it is time to build a small and clearly structured test suite to showcase best practises with a well-defined set of tests. Thus the project idea is to collect experiences, consolidate knowledge and share ideas of testing practises. 

This test suite is based on testing the storefront of the demo shop __Demandware__ __SiteGenesis__ but the underlying concepts and the communicated know-how are valid for building test suites of other web applications as well. Everybody is invited to use it, learn from it, improve it and adapt it to their needs. Possible purposes encompass:

- Demonstration of test automation and test suite structuring.
- Entry point for test development with fast learning curve.
- Reuse of collected best practises in other (existing) projects.
- Initial test suite to automate new shops based on SiteGenesis.

## Test Suite Documentation

Please visit the [generated ScriptDoc](http://dataduke.github.io/xlt-testsuite-documentation/scriptdoc/index.html) for extended information on test data, packages, test cases and modules. The provided [test suite guide](https://github.com/dataduke/xlt-testsuite-documentation/blob/gh-pages/GUIDE.md) delivers instructions for test suite development, conventions for test suite styling and pointers to other helpful resources.

## Test Suite Backlog

All planned features are publicly tracked as [GitHub issues](https://github.com/Xceptance/SiteGenesis-Community-TestSuite/issues). Feel free to add feature requests!

## Test Suite Setup Guide 

The following prerequisites and installation steps are needed to run the test suite with the __XLT Script Developer__ in Firefox or the __XLT Framework__ orchestrating different WebDrivers. For further help on how to setup or configurate you test suite please refer to [XLT Online](https://lab.xceptance.de/releases/xlt/latest/):

### XLT Script Developer

#### Prerequisites

- XLT&reg; Script Developer v4.5.0 or higher: [Download](https://www.xceptance.com/en/xlt/download.html)
- [Demandware](http://www.demandware.com/) [SiteGenesis](ttp://www.demandware.com/on/demandware.store/
Sites-SiteGenesis-Site) v15.1.0.14 or higher
- Firefox

#### Installation

- [Download](https://github.com/Xceptance/SiteGenesis-Community-TestSuite/archive/master.zip) and unzip this test suite in a directory of your choice.
- Install Firefox add-on `XLT Script Developer`.
- Open `Tools > XLT Script Developer` in Firefox.
- Import this test suite by clicking the `folder` icon above the navigation panel.
- `XLT Scipt Developer > Manage Global Test Data` set the **SiteGenesis** `storefront_url`.
- Open a test case in the navigaton panel and click replay button in toolbar.

### XLT Framework

#### Prerequisites

- XLT&reg; Framework v4.5.0 or higher: [Download](https://www.xceptance.com/en/xlt/download.html)
- JDK
- Java IDE (e.g. Eclipse, IDEA, NetBeans)

#### Installation

- [Download](https://github.com/Xceptance/SiteGenesis-Community-TestSuite/archive/master.zip) and unzip this test suite in a directory of your choice.
- Import test suite as new Java project (with JDK runtime).
- Import XLT libraries.
- Edit configuration see below.
- Run test as JUnit test (default configuration: Firefox WebDriver).
- Adapt WebDriver configurations in `project.properties` if you like.

## Test Suite Structure

### Project Tree

    .
    |-- bin                                # executables
    |-- config                             # IDE configuration
    |   \-- data                           # test data dictionaries
    |       \-- default                    
    |-- scripts
    |   |-- modules/helper                 # basic scripts
    |   |-- modules/pages                  # scripts for specific pages
    |   |   |-- account                    # scripts on Account pages
    |   |   |-- cart                       # scripts on Cart page
    |   |   |-- catalog                    # scripts on Catalog pages
    |   |   |-- checkout                   # scripts on Checkout pages
    |   |   |-- homepage                   # scripts on Homepage
    |   |   |-- minicart                   # scripts on MiniCart popup
    |   |   |-- productdetailpage          # scripts on ProductDetailPage
    |   |   \-- search                     # scripts for Searching
    |   \-- tests
    |       |-- account                    # tests for Account pages
    |       |-- cart                       # tests for Cart page
    |       |-- catalog                    # tests for Catalog pages
    |       |-- checkout                   # tests for Checkout pages
    |       \-- search                     # tests for Searches
    |-- src
    |   \-- tests                          # XLT java wrapper classes
    |-- build.properties                   # XLT ant build properties
    |-- build.xml                          # XLT ant build configuration
    |-- xlt-scriptdeveloper.properties     # XLT settings
    \-- global_testdata.properties         # global testdata properties

### Tests

The aim of our test set is to cover standard functions of the shop system. Every test simulates a shopping behaviour of a customer. Regarded closely a test even focuses on a specific part of the buying process which is tested in depth. This test focus describes several shop area in the package structrue in which tests are ordered. 

All tests cover a wide variety of different test pathes and are build up on script modules. Each test consists of test setup (ensuring that all preconditions are met), test scope (focusing on all relevant testing steps) and test teardown (cleaning up of changed data in your browser and reversing the state of the shop system to its origin).

### Modules

A script module contains actions, commands and comments. Each module interacts with elements of ta specifc webpage. Thus it makes sense to structured them by their accordnig pages. Each module can be reused by different tests.

#### Validation Modules

Validation of webpage elements and dynamic data is a very essential part of testing. Hence these special modules evalute that a needed fit criterion is met (mostly via assertions).

#### Flow Modules

Some modules mimic more sophisticated shopping behaviours by interacting with several pages in a flow. The achieved specific goal at the end of the process is of most importance (in contrast to the taken singular steps). Flows often reuse other modules and may enable a compact test case structure (implemented in setup, scope or teardown). Examples: Add any basic product to cart, Create any new customer, Add any address to a customer, Check order status in order history.

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
