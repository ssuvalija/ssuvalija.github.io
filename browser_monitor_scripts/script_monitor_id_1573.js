//appId=3981;monitorId=1153,1189
async function testPage(page) {
  // Replace YOUR_WEBPAGE_URL with URL of the webpage to be monitored
  await page.goto("https://sematext.com/");

  await page.screenshot({ path: 'screenshot.jpg' });
}
module.exports = testPage;



















