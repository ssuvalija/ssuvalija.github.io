//appId=15920;monitorId=271
async function testPage(page) {
  // Replace YOUR_WEBPAGE_URL with URL of the webpage to be monitored
  //update    
  //new update
  await page.goto("https://ssuvalija.github.io/index.html");

  await page.screenshot({ path: 'screenshot.jpg' });
}
module.exports = testPage;

//create test      