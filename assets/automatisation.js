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
document.querySelector('input[id="mat-input-2"]').value = birthday;
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
document.querySelector('input[id="mat-input-0"]').value = postal;
document
  .querySelector('input[id="mat-input-0"]')
  .dispatchEvent(new Event("input"));

getElementByXPath("//button[@type='button' and span[.='Suchen']]").click();
document.querySelector("div.available").click();

// barrier

// title
// document.querySelector('mat-select[id="mat-select-2"]').value = "Julian";
// document
//   .querySelector('input[id="mat-input-2"]')
//   .dispatchEvent(new Event("input"));

// firstName
document.querySelector('input[id="mat-input-8"]').value = firstName;
document
  .querySelector('input[id="mat-input-8"]')
  .dispatchEvent(new Event("input"));

// lastName
document.querySelector('input[id="mat-input-9"]').value = lastName;
document
  .querySelector('input[id="mat-input-9"]')
  .dispatchEvent(new Event("input"));

// postal
document.querySelector('input[id="mat-input-10"]').value = postal;

document
  .querySelector('input[id="mat-input-10"]')
  .dispatchEvent(new Event("input"));

// needs a short delay to grab the city
setTimeout(function () {
  // place is grapped automatically
  // document.querySelector('input[id="mat-input-23"]').value = "49088";
  // document
  //   .querySelector('input[id="mat-input-23"]')
  //   .dispatchEvent(new Event("input"));

  // street
  document.querySelector('input[id="mat-input-24"]').value = street;
  document
    .querySelector('input[id="mat-input-24"]')
    .dispatchEvent(new Event("input"));

  // streetNr
  document.querySelector('input[id="mat-input-11"]').value = streetNr;
  document
    .querySelector('input[id="mat-input-24"]')
    .dispatchEvent(new Event("input"));

  // birthday
  document.querySelector('input[id="mat-input-13"]').value = birthday;
  document
    .querySelector('input[id="mat-input-13"]')
    .dispatchEvent(new Event("input"));

  // phone
  document.querySelector('input[id="mat-input-14"]').value = phone;
  document
    .querySelector('input[id="mat-input-14"]')
    .dispatchEvent(new Event("input"));

  // email1
  document.querySelector('input[id="mat-input-15"]').value = email;
  document
    .querySelector('input[id="mat-input-15"]')
    .dispatchEvent(new Event("input"));

  // email2
  document.querySelector('input[id="mat-input-19"]').value = email;
  document
    .querySelector('input[id="mat-input-19"]')
    .dispatchEvent(new Event("input"));
}, 200);
