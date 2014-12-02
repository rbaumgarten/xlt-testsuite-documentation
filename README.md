<!-- <a href="https://gitter.im/dataduke/xlt-testsuite-documentation?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge" target="_blank"><img src="https://badges.gitter.im/Join Chat.svg" alt="Gitter badge"></a> &nbsp; &nbsp; --> <a href="http://github.com/dataduke/xlt-testsuite-documentation/blob/master/LICENSE.md" target="_blank"><img src="http://img.shields.io/badge/License-MIT-blue.svg" alt="MIT-license badge"></a>

# XLT SiteGenesis-Community-TestSuite

##### The Xceptance LoadTest (XLT) Script Developer SiteGenesis-Community-TestSuite contains a base test suite for functional test automation and load and performance testing of Demandware based shops systems. 
##### The test object of this test suite for [XLT Script Developer](https://addons.mozilla.org/en-US/firefox/addon/xceptance-script-developer/) is the default demonstration implementation of the shop known as [SiteGenesis](http://www.demandware.com/on/demandware.store/Sites-SiteGenesis-Site).

## Versions

- XLT Script Developer: Version **4.5.0 alpha1**
- Demandware SiteGenesis: Version **15.1.0.14**

## Concept

By dividing the Demandware SiteGenesis shop in certain **page types** (like Homepage, Catalog Page or ProductDetailPage) a basic project structure for the SiteGenesis-Community-TestSuite inside of XLT Script Developer can be arranged accordingly. 

Hence **every page has its own module** with scripts that can interact with this page. This layer of interactions is **directly mapped** with the actions you can execute when you actually visit the page inside of your web browser. This means for every page certain interactions can be invoked by scripts (bundled in modules packages for each page type).

Each **test** can utilize these scripts from their pages module to create **workflows** that interact in a certain way with all pages to **simulate interactions** of a user with the shop system and to **evaluate assumptions** of business and technical scenarios of the shop system. All tests are bundled in packages matching their **scope of testing** (main purpose or shop area for validation).

## Structure

    .
    |-- bin                                # executables
    |-- config                             # IDE configuration
    |   |-- data                           # test data dictionaries
    |   |   \-- default                    
    |-- scripts
    |   |-- modules.helper                 # basic scripts
    |   |-- modules.pages                  # scripts for specific pages
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

## Definitions

#### Users

- **Customer**: registered user with account.
- **Guest**: unregistered user without account.

#### Pages

- **Homepage**: main landing page.
- **Search**: search box and search result page.
- **Catalog**: catalog page, product grid/listing/overview page (PGP/PLP/POP).
- **ProductDetailPage**: product detail page (PDP).
- **MiniCart**: minicart pop up.
- **Cart**: cart page.
- **Checkout**: checkout pages and steps: addresses (shipping/billing), payement, order submit.
- **Account**: account page, my account.

#### Interactions

- **order**: purchase or buy products.
- **verify**: validate and assert values, information or elements.

# Framework

## Guide

_While shopping with your web browser at a shop you may change product attributes like color, size and quantity at a specific ProductDetailPage via clicking menu items or typing values inside of input fields._

With **XLT Script Developer** Firefox extension and **XLT SiteGenesis-Community-TestSuite** framework from GitHub it is easy to create test cases for the described scenario by following this short **step-by-step guide**:

- **Identify** the workflow you want to simulate by making a informal list of page interactions.
- **Search** for all interactions in the according modules inside of the test suite.
- **Create** a new testcase and drag and drop the needed scripts in the fitting order inside and specify all needed variables. You may also add local variables at the test package by right-clicking the tests packages and select "Manage Test Data".
- **Run** your tests as often as you like and enjoy the automized test execution with a warm cup of coffee and fluffy feeling of happiness!

## Test Data

The used **variables** are stored in **property** files. The variables are defined in the global test data property file `global_testdata.properties`, the package (module/tests) specific property files `package_testdata.properties` or annotated at the scripts (modules/tests) themselves. Each variable is inheritated in descending file tree order and may be overwritten. Caution: PLEASE DO NOT EDIT PROPERTY FILES WITH AN EXTERNAL TEXT EDITOR!

## Modules

The bundled **modules script packages** are arranged by the pages of the shop they can be applied to. Every module has the ability to envoke actions, commands or reuse other modules to interact with the corresponding page.

## Tests

The bundled **tests script packages** are arranged by the business domain aspects of the shop. Every test may consist of a test setup, test start, test steps, and test end. 

### tests.account

- **TCreateAccount**: Register new user and validate account page.

### tests.cart

- **TCart**: Add three products to cart and validate cart page with manipulation.

### tests.catalog

- **TCatalogBrowsing**: Browse and validate homepage, catalog page, product detail page.

### tests.checkout

- **TGuestOrder**: Order random product via search with guest checkout via visa.
- **TNewCustomerOrder**: Order random product via search and checkout with new user via visa.
- **TReturningCusomerOrder**: Register new user and order random product via shop naviagtion and checkout with created user and via visa.

### tests.search

- **TSearch**: Search for color, product number and not existing search term with suggestion and validate results.

# References

## Xceptance

- [Xceptance](https://www.xceptance.de/en/)
- [Xceptance Blog](http://blog.xceptance.com/)
- Xceptance Blog: [Test Automation for Demandware SiteGenesis with XLT](http://blog.xceptance.com/2012/10/27/test-automation-for-demandware-sitegenesis-with-xlt/)
- Xceptance Blog: [Use XLT with Sauce Labs and BrowserStack](http://blog.xceptance.com/2014/03/12/use-xlt-with-sauce-labs-and-browserstack/)

## XLT

- XLT [Main](https://www.xceptance.de/en/xlt/)
- XLT [Manual](https://lab.xceptance.de/releases/xlt/latest/user-manual.html)
- XLT [Quick Start](https://lab.xceptance.de/releases/xlt/latest/quick-start-guide.html)
- XLT Script Developer: [Firefox Addon EN](https://addons.mozilla.org/en-US/firefox/addon/xceptance-script-developer/), [Firefox Addon DE](https://addons.mozilla.org/de/firefox/addon/xceptance-script-developer/)

## Demandware

- [Demandware](http://www.demandware.com/)
- Demandware [SiteGenesis](http://www.demandware.com/on/demandware.store/Sites-SiteGenesis-Site) (Default Shop Implementation)

## Technology

- w3schools [HTML](http://www.w3schools.com/html/)
- w3schools [JavaScript and HTML DOM](http://www.w3schools.com/jsref/)
- w3schools [CSS](http://www.w3schools.com/cssref/), [CSS Selectors](http://www.w3schools.com/cssref/css_selectors.asp)
- w3schools [XPath, XQuery and XSLT Functions](http://www.w3schools.com/xpath/)
- w3schools [JavaScript RegEx](http://www.w3schools.com/jsref/jsref_obj_regexp.asp)
- Selenium [Docs](http://docs.seleniumhq.org/docs/), [RegEx](http://docs.seleniumhq.org/docs/02_selenium_ide.jsp#regular-expression-patterns)
- RegEx [Quickstart](http://www.rexegg.com/regex-quickstart.html)
- Ant [Manual](https://ant.apache.org/manual/running.html)

