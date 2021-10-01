async function testPage(page) {
  await page.goto('https:\/\/www.apple.comm\/');
  await page.screenshot({ path: 'screenshot.jpg' });
}
module.exports = testPage;

