function getElementByXPath(xpath) {
  return new XPathEvaluator()
    .createExpression(xpath)
    .evaluate(document, XPathResult.FIRST_ORDERED_NODE_TYPE).singleNodeValue;
}

document.querySelector('input[name="datenschutz"]').click();

getElementByXPath("//button[@type='button' and span[.=' Weiter ']]").click();

getElementByXPath("//button[@type='button' and span[.=' Weiter ']]").click();

document.querySelector('input[id="mat-input-2"]').value = birthday;
document
  .querySelector('input[id="mat-input-2"]')
  .dispatchEvent(new Event("input"));

getElementByXPath("//button[@type='button' and span[.=' Weiter ']]").click();

document.querySelector('input[id="mat-radio-2-input"]').click();

getElementByXPath("//button[@type='button' and span[.='Verstanden']]").click();
getElementByXPath("//button[@type='button' and span[.=' Weiter ']]").click();
getElementByXPath("//button[@type='button' and span[.=' Weiter ']]").click();

document.querySelector('input[id="mat-input-0"]').value = postal;
document
  .querySelector('input[id="mat-input-0"]')
  .dispatchEvent(new Event("input"));

getElementByXPath("//button[@type='button' and span[.='Suchen']]").click();
document.querySelector("div.available").click();
