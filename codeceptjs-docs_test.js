Feature('Local codeceptJS documentation');

Scenario('It starts up', (I) => {
  I.amOnPage('/');
  I.see('Supercharged');
  I.see('End 2 End Testing');
});
