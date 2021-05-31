function getElementByXPath(xpath) {
  return new XPathEvaluator()
    .createExpression(xpath)
    .evaluate(document, XPathResult.FIRST_ORDERED_NODE_TYPE).singleNodeValue;
}

// https://stackoverflow.com/questions/34849001/check-if-css-selector-is-valid
const isSelectorValid = ((dummyElement) => (selector) => {
  try {
    dummyElement.querySelector(selector);
  } catch {
    return false;
  }
  return true;
})(document.createDocumentFragment());

function waitForElementToDisplay(
  selector,
  callback,
  checkFrequencyInMs,
  timeoutInMs
) {
  var startTimeInMs = Date.now();
  (function loopSearch() {
    if (isSelectorValid(selector)) {
      if (document.querySelector(selector) != null) {
        callback();
        return;
      }
    } else {
      if (getElementByXPath(selector) != null) {
        callback();
        return;
      }
    }
    setTimeout(function () {
      if (timeoutInMs && Date.now() - startTimeInMs > timeoutInMs) return;
      loopSearch();
    }, checkFrequencyInMs);
  })();
}

waitForElementToDisplay(
  'input[name="datenschutz"]',
  function () {},
  1000,
  9000
);
document.querySelector('input[name="datenschutz"]').click();

getElementByXPath("//button[@type='button' and span[.=' Weiter ']]").click();

getElementByXPath("//button[@type='button' and span[.=' Weiter ']]").click();

waitForElementToDisplay('input[id="mat-input-2"]', function () {}, 1000, 9000);
document.querySelector('input[id="mat-input-2"]').value = "20.08.1994";
document
  .querySelector('input[id="mat-input-2"]')
  .dispatchEvent(new Event("input"));

getElementByXPath("//button[@type='button' and span[.=' Weiter ']]").click();

waitForElementToDisplay(
  'input[id="mat-radio-2-input"]',
  function () {},
  1000,
  9000
);
document.querySelector('input[id="mat-radio-2-input"]').click();

// popup
waitForElementToDisplay(
  "//button[@type='button' and span[.='Verstanden']]",
  function () {},
  1000,
  9000
);
getElementByXPath("//button[@type='button' and span[.='Verstanden']]").click();
getElementByXPath("//button[@type='button' and span[.=' Weiter ']]").click();
getElementByXPath("//button[@type='button' and span[.=' Weiter ']]").click();

waitForElementToDisplay('input[id="mat-input-0"]', function () {}, 1000, 9000);
document.querySelector('input[id="mat-input-0"]').value = "49088";
document
  .querySelector('input[id="mat-input-0"]')
  .dispatchEvent(new Event("input"));

getElementByXPath("//button[@type='button' and span[.='Suchen']]").click();
document.querySelector("div.available").click();
