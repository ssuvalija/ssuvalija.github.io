async function testPage(page) {
      await page.goto(\"https:\/\/www.github.com\/\");
      await page.screenshot({ path: \"screenshot.jpg\" });
    }
    
module.exports = testPage;
