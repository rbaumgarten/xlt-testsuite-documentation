<a href="http://github.com/dataduke/xlt-testsuite-documentation/blob/master/LICENSE.md" target="_blank"><img src="http://img.shields.io/badge/License-MIT-blue.svg" alt="MIT-license badge"></a>

# SiteGenesis-Community-TestSuite

This is a test suite for __XLT Script Developer__ and __XLT__ to collect testing experience, consolidate testing knowledge and share ideas for testing. This project is based on the demo shop __Demandware__ __SiteGenesis__ but the underlying concepts and the communicated know-how are valid for building test suites of other web applications as well.

- Name: SiteGenesis-Community-TestSuite
- Version: v15.1.0.14 (matches SiteGenesis)
- Release: January 2015
- License: MIT License
- License URI: http://opensource.org/licenses/MIT
- Tags: xlt, testing, best practises, test automation, funtional testing, regression test, selenium
- Contributors:
    - René Schwietzke, Xceptance Software Technologies GmbH
    - Robert Baumgarten, Xceptance Software Technologies GmbH
    - Benjamin Nothdurft, Xceptance Software Technologies GmbH

## Requirements

Besides this test suite you only need the following requirements:

- Firefox
- XLT Script Developer v4.5.0 or higher: [Download](https://www.xceptance.com/en/xlt/download.html)
- [Demandware](http://www.demandware.com/) [SiteGenesis](ttp://www.demandware.com/on/demandware.store/Sites-SiteGenesis-Site) v15.1.0.14 or higher

If you want to run more extended tests (e.g. with webdriver or full Java stack) please install the following requirements:

- XLT&reg;: [Download](https://www.xceptance.com/en/xlt/download.html)
- JDK
- Java IDE (e.g. eclipse)

## Installation

Using this test suite with **XLT Script Developer**:

1. Install Firefox add-on XLT Script Developer.
2. Open XLT Script Developer.
3. Import this (unzipped) test suite by clicking the folder icon above the navigation panel.
4. Configure the **SiteGenesis** storefront URL in global test data.
5. Open a test case in the navigaton panel and click replay button in toolbar.

Using this test suite with **XLT**:

1. Create new Java project (with JDK runtime) based on unzipped test suite.
2. Import XLT libraries.
2. Edit configuration see below.
4. Run test as JUnit test. (default: Firefox webdriver)
5. Adapt webdriver configurations in `project.properties` if you like.

For further information please refer to the official [documentation](https://lab.xceptance.de/releases/xlt/latest/).

## Project Idea

As there are complex test suites (including SiteGenesis) we realized it is time to bundle the collected testing know-how by building a small and clearly structured test suite to showcase best practises with a well-defined set of tests. Everybody is invited to use it, learn from it, improve it and adapt it to their needs.

## Use Cases

The test suite is a handy reference for everybody interested in test automation:

- Introduction
    - demonstrate test automation and structure
    - use it as entry point with fast learning curve
- Existing Projects 
    - serve as collection of examples and show cases
    - reuse best practises for QA of other projects 
- New Projects
    - utilize for initial test automation of new shop projects based on SiteGenesis

## Feature Backlog

All planned features are tracked as issues of this GitHub repository.

## Manual

For an extended description please refer to the test suite [manual](https://github.com/dataduke/xlt-testsuite-documentation/blob/master/MANUAL.md).
