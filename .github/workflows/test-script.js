//appId=;monitorId=xxxtTODO
async function testPage(page) {
  // Replace YOUR_WEBPAGE_URL with URL of the webpage to be monitored
  await page.goto("https://selma.github.io/index.html#");
  await page.goto("https://selma.github.io/elements.html");
  
  await page.screenshot({ path: 'screenshot.jpg' });
}
module.exports = testPage;