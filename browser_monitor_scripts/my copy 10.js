//appId=11557;monitorId=2648
async function testPage(page) {
  // Replace YOUR_WEBPAGE_URL with URL of the webpage to be monitored
  //update    
  //new update
  await page.goto("https://ssuvalija.github.io/index.html");

  await page.screenshot({ path: 'screenshot.jpg' });
}
module.exports = testPage;

//sync both scripts
//test test test

//test test test2