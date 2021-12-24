//appId=3981
async function testPage(page) {
  // Replace YOUR_WEBPAGE_URL with URL of the webpage to be monitored
  await page.goto("https://sematext.com/docs");

  await page.screenshot({ path: 'screenshot.jpg' });
}
module.exports = testPage;





