function getElementByXPath(xpath) {
  return new XPathEvaluator()
    .createExpression(xpath)
    .evaluate(document, XPathResult.FIRST_ORDERED_NODE_TYPE).singleNodeValue;
}

document.querySelector('input[name="datenschutz"]').click();

getElementByXPath("//button[@type='button' and span[.=' Weiter ']]").click();

// Einzeltermin
getElementByXPath("//button[@type='button' and span[.=' Weiter ']]").click();

// Geburtstag
document.querySelector('input[id="mat-input-2"]').value = birthday;
document
  .querySelector('input[id="mat-input-2"]')
  .dispatchEvent(new Event("input"));

getElementByXPath("//button[@type='button' and span[.=' Weiter ']]").click();

// Job Indication
// switch (group) {
//   case "job":
//     document.querySelector('input[id="mat-radio-2-input"]').click();
//     getElementByXPath(
//       "//button[@type='button' and span[.='Verstanden']]"
//     ).click();
//     getElementByXPath(
//       "//button[@type='button' and span[.=' Weiter ']]"
//     ).click();
//     break;
//   case "medicalOrElse":
//     document.querySelector('input[id="mat-radio-3-input"]').click();
//     getElementByXPath(
//       "//button[@type='button' and span[.=' Weiter ']]"
//     ).click();
//     document.querySelector('input[id="mat-radio-9-input"]').click();
//     getElementByXPath(
//       "//button[@type='button' and span[.='Verstanden']]"
//     ).click();
//     document.querySelector('input[id="mat-radio-12-input"]').click();
//     getElementByXPath(
//       "//button[@type='button' and span[.=' Weiter ']]"
//     ).click();
//     break;
//   case "none":
//     document.querySelector('input[id="mat-radio-3-input"]').click();
//     getElementByXPath(
//       "//button[@type='button' and span[.=' Weiter ']]"
//     ).click();
//     document.querySelector('input[id="mat-radio-9-input"]').click();
//     getElementByXPath(
//       "//button[@type='button' and span[.='Verstanden']]"
//     ).click();
//     document.querySelector('input[id="mat-radio-13-input"]').click();
//     getElementByXPath(
//       "//button[@type='button' and span[.=' Weiter ']]"
//     ).click();
//     break;
// }

// getElementByXPath("//button[@type='button' and span[.=' Weiter ']]").click();

document.querySelector('input[id="mat-input-0"]').value = postal;
document
  .querySelector('input[id="mat-input-0"]')
  .dispatchEvent(new Event("input"));

getElementByXPath("//button[@type='button' and span[.='Suchen']]").click();
document.querySelector("div.available").click();
