# automate_wordpress_plans_login_logout

tfw_play.robot (Robot test suite file)
- Add resource files
- Configure suite setup and teardown
- Perform TC1, TC2 and TC3

tfw_initial.robot (Robot resource file)
- Provide site URL
- Open browser
- Set selenium times
- Maximize window size

tfw_header_bar.robot (Robot resource file)
- Get all locators
- Navigate menu links

tfw_plan_price_page.robot (Robot resource file)
- Get all plan type locators
- Validate presence of different types of plans in the page

tfw_login_page.robot (Robot resource file)
- Get all locators
- Read username and password from text files
- Provide username and password and try to login

tfw_loggedin_page.robot (Robot resource file)
- Get locators
- Verify successful login attempt
- Try to logout

tfw_loggedout_page.robot (Robot resource file)
- Get locators
- Verify successful logout attempt

user_name.txt (Text file to read)
- Provide username

user_password.txt (Text file to read)
- Provide password
