<a href="https://gitter.im/dataduke/xlt-testsuite-documentation?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge" target="_blank"><img src="https://badges.gitter.im/Join Chat.svg" alt="Gitter badge"></a> &nbsp; &nbsp; <a href="http://github.com/dataduke/xlt-testsuite-documentation/blob/master/LICENSE.md" target="_blank"><img src="http://img.shields.io/badge/License-MIT-blue.svg" alt="MIT-license badge"></a>

# XLT SiteGenesis-Community-TestSuite

##### The Xceptance LoadTest Script Developer (XLT) SiteGenesis-Community-TestSuite contains a base test suite for functional test automation and load and performance testing of Demandware based shops systems. The test object is the default demonstration implementation of the shop system also known as SiteGenesis.

## Versions

- XLT Script Developer: _Version 4.5.0 alpha1_
- Demandware Site Genesis: _Version 15.1.0.14_

## Definitions

- _homepage_ : main landing page.
- _catalog_ : catalog page, product grid page (PGP), product listing page (PLP), product overview page (POP).
- _product detail_ : product detail page (PDP).
- _minicart_ : mini cart pop up.
- _cart_ : cart page.
- _checkout_ : checkout pages and process consisting of three steps (addresses shipping, billing, order submit)
- _account_ : account page, my account.
- _search_ : search box and search result page.

## Test Data

The used **variables** are stored in **property** files. The variables are defined in the global test data property file, the package (module/tests) specific property files or annotated at the scripts (modules/tests) themselves. Each variable is inheritated in descending oder and may be overwritten. Caution: PLEASE DO NOT EDIT PROPERTY FILES WITH AN EXTERNAL TEXT EDITOR!

## Modules

The bundeled **modules script packages** are arranged by the pages of the shop they can be applied to. Every module has the ability to envoke actions, commands or reuse other modules to interact with the corresponding page.

## Tests

The bundeled **tests script packages** are arranged by the business domain aspects of the shop. Every test may consist of a test setup, test start, test steps, and test end. 

### tests.account

- **TCreateAccount**: Register new user and validate account page.

### tests.cart

- **TCart**: Add three products to cart and validate cart page with manipulation.

### tests.catalog

- **TCatalogBrowsing**: Browse and validate homepage, catalog page, product detail page.

### tests.order

- **TGuestOrder**: Order random product via search with guest checkout via visa.
- **TNewCustomerOrder**: Order random product via search and checkout with new user via visa.
- **TReturningCusomerOrder**: Register new user and order random product via shop naviagtion and checkout with created user and via visa.

### tests.search

- **TSearch**: Search for color, product number and not existing search term with suggestion and validate results.

## References

### Xceptance

- [Xceptance](https://www.xceptance.de/en/)
- [Xceptance Blog](http://blog.xceptance.com/)
- Xceptance Blog: [Test Automation for Demandware SiteGenesis with XLT](http://blog.xceptance.com/2012/10/27/test-automation-for-demandware-sitegenesis-with-xlt/)
- Xceptance Blog: [Use XLT with Sauce Labs and BrowserStack](http://blog.xceptance.com/2014/03/12/use-xlt-with-sauce-labs-and-browserstack/)

### XLT

- XLT [Main](https://www.xceptance.de/en/xlt/)
- XLT [Manual](https://lab.xceptance.de/releases/xlt/latest/user-manual.html)
- XLT [Quick Start](https://lab.xceptance.de/releases/xlt/latest/quick-start-guide.html)
- XLT Script Developer [Firefox Addon EN](https://addons.mozilla.org/en-US/firefox/addon/xceptance-script-developer/), [Firefox Addon DE](https://addons.mozilla.org/de/firefox/addon/xceptance-script-developer/)

### Demandware

- [Demandware](http://www.demandware.com/)
- Demandware [SiteGenesis](http://www.demandware.com/on/demandware.store/Sites-SiteGenesis-Site) (Default Shop Implementation)

### Technology

- w3schools Reference: [XPath, XQuery and XSLT Functions](http://www.w3schools.com/jsref/default.asp)
- w3schools Reference: [CSS Selectors](http://www.w3schools.com/cssref/css_selectors.asp)
- w3schools Reference: [JavaScript](http://www.w3schools.com/jsref/default.asp)

