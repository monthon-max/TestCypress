require('./commands');

// eslint-disable-next-line no-unused-vars
Cypress.on('uncaught:exception', (err) => {
  return false;
});

// Hide fetch/XHR requests from command log
if (Cypress.config('hideXHRInCommandLog')) {
  const app = window.top;
  if (app && !app.document.head.querySelector('[data-hide-command-log-request]')) {
    const style = app.document.createElement('style');
    style.innerHTML = '.command-name-request, .command-name-xhr { display: none }';
    style.setAttribute('data-hide-command-log-request', '');
    app.document.head.appendChild(style);
  }
}
Cypress.Commands.add('generateThaiID', () => {
  let id = '';
  let sum = 0;
  for (let i = 0; i < 12; i++) {
    const digit = Math.floor(Math.random() * 10);
    id += digit;
    sum += digit * (13 - i);
  }
  const checkDigit = (11 - (sum % 11)) % 10;
  id += checkDigit;
  return id;
});
