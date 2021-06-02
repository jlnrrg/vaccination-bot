function getElementByXPath(xpath) {
  return new XPathEvaluator()
    .createExpression(xpath)
    .evaluate(document, XPathResult.FIRST_ORDERED_NODE_TYPE).singleNodeValue;
}

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
