When(/^I swipe in the menu$/) do
  action = Appium::TouchAction.new.swipe(start_x: 0.01,start_y: 0.5,end_x: 0.9,end_y: 0.5,duration: 500)
  action.perform
end

Then(/^I see app menu$/) do
  find_element(id:"design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='Area']")
  find_element(id:"design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='Cooking']")
  find_element(id:"design_navigation_view").find_element(xpath: "//android.widget.CheckedTextView[@text='Currency']")
end

And(/^I select "([^"]*)" from menu$/) do |value|
  element = Appium::TouchAction.new.scroll_to_exact("#{value}",0)
  element.click
end