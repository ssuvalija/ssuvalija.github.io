async function testPage(page) {
      //update script test
      // visit the home pagee
      await page.goto('https://www.github.com/');
      
      // take screenshot of the home page
      
      await page.screenshot({ path: 'screenshot.jpg' });
    }
    
module.exports = testPage;
