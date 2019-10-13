Feature('Local machine setup');

Scenario('CodeceptJS documentation works', (I) => {
  I.amOnPage('http://localhost:3000');
  I.see('Supercharged');
  I.see('End 2 End Testing');
});

Scenario('TodoMVC app works', (I) => {
  I.amOnPage('http://localhost:8080');
  I.see('todos');
});
