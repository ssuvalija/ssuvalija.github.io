//appId=15920;monitorId=271
async function testPage(page) {
  await page.goto("https://apps.eu.sematext.com/");

  await page.screenshot({ path: 'screenshot.jpg' });
}
module.exports = testPage;
    