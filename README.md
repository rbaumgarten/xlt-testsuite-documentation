<a href="http://github.com/dataduke/xlt-testsuite-documentation/blob/master/LICENSE.md" target="_blank"><img src="http://img.shields.io/badge/License-MIT-blue.svg" alt="MIT-license badge"></a>

# SiteGenesis-Community-TestSuite

The test suite focuses on functional frontend blackbox regression testing. It was build and may be run with the __XLT Script Developer__ in Firefox and the __XLT Framework__ by orchestrating different WebDrivers. 

As there are already many complex test suites (including some for SiteGenesis) we realized it is time to build a small and clearly structured test suite to showcase best practises with a well-defined set of tests. Thus the project idea is to collect experiences, consolidate this knowledge and share ideas of testing practises. 

This test suite is based on the demo shop __Demandware__ __SiteGenesis__ but the underlying concepts and the communicated know-how are valid for building test suites of other web applications as well. Everybody is invited to use it, learn from it, improve it and adapt it to their needs. Possible purposes encompass:

- Demonstration of test automation and test suite structuring.
- Entry point for test development with fast learning curve.
- Reuse of collected best practises in other (existing) projectss.
- Initial test suite to automate new shops based on SiteGenesis.

For more information please visit the [extended description](http://dataduke.github.io/xlt-testsuite-documentation/scriptdoc/index.html) generated with the included **ScriptDoc** tool.

## System Prerequisites

To run the test suite with the __XLT Script Developer__ in Firefox you only need:

- Firefox
- XLT Script Developer v4.5.0 or higher: [Download](https://www.xceptance.com/en/xlt/download.html)
- [Demandware](http://www.demandware.com/) [SiteGenesis](ttp://www.demandware.com/on/demandware.store/Sites-SiteGenesis-Site) v15.1.0.14 or higher

To run the test suite with the __XLT Framework__ you also need:

- XLT&reg;: [Download](https://www.xceptance.com/en/xlt/download.html)
- JDK
- Java IDE (e.g. Eclipse, IDEA, NetBeans)

## Installation

- Download and unzip the test suite in a directory of your choice.

To run the test suite with the __XLT Script Developer__ in Firefox you only need:

- Install Firefox add-on `XLT Script Developer`.
- Open `Tools > XLT Script Developer` in Firefox.
- Import this test suite by clicking the `folder` icon above the navigation panel.
- `XLT Scipt Developer > Manage Global Test Data` set the **SiteGenesis** `storefront_url`.
- Open a test case in the navigaton panel and click replay button in toolbar.

To run the test suite with the __XLT Framework__ you also need:

- Import test suite as new Java project (with JDK runtime).
- Import XLT libraries.
- Edit configuration see below.
- Run test as JUnit test (default configuration: Firefox WebDriver).
- Adapt WebDriver configurations in `project.properties` if you like.

For further information please visit [XLT Online](https://lab.xceptance.de/releases/xlt/latest/).

## Feature Backlog

All planned features are tracked as issues[https://github.com/Xceptance/SiteGenesis-Community-TestSuite/issues].

## Metadata

- Name: SiteGenesis-Community-TestSuite
- Version: v15.1.0.14 (matches SiteGenesis)
- Release: January 2015
- License: MIT License
- License URI: http://opensource.org/licenses/MIT
- Tags: xlt, testing, best practises, test automation, funtional testing, regression test, selenium

## Contributors

- René Schwietzke, Xceptance Software Technologies GmbH
- Robert Baumgarten, Xceptance Software Technologies GmbH
- Benjamin Nothdurft, Xceptance Software Technologies GmbH
