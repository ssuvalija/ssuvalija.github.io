// This script loads the webpage and takes a screenshot of the loaded page.
async function testPage(page) {
  // Replace YOUR_WEBPAGE_URL with URL of the webpage to be monitored
  await page.goto("https://ssuvalija.github.io/index.html#");
  await page.goto("https://ssuvalija.github.io/elements.html");
  
  await page.screenshot({ path: 'screenshot.jpg' });
}
module.exports = testPage;