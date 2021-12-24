//appId=3981;monitorId=
async function testPage(page) {
  // Replace YOUR_WEBPAGE_URL with URL of the webpage to be monitored
  await page.goto("https://apps.eu.sematext.com/ui/login");

  await page.screenshot({ path: 'screenshot.jpg' });
}
module.exports = testPage;





