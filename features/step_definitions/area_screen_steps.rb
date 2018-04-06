
When(/^I click on Got it button$/) do
  find_element(id:"button1").click
end

Then(/^I land on screen that has text: "([^"]*)"$/) do |value|
  find_element(xpath: "//android.widget.TextView[@text='#{value}']")
end

When(/^I click on swap button$/) do
  find_element(id:"fab").click
end

Then(/^I see "([^"]*)" in From header$/) do |value|
  actual_value = find_element(id:"header_text_unit_from").text
  if actual_value != value
    fail("Expected value was #{value} but Actual value is #{actual_value}")
  end
end

Then(/^I see "([^"]*)" in To header$/) do |value|
  actual_value = find_element(id:"header_text_unit_to").text
  if actual_value != value
    fail("Expected value was #{value} but Actual value is #{actual_value}")
  end
end

And(/^I click on clear button$/) do
  find_element(id:"menu_clear").click
end

When(/^I enter "([^"]*)" to From field$/) do |value|
  find_element(id:"header_value_from").send_keys(value)
end

Then(/^I get "([^"]*)" in To field$/) do |value|
  actual_value = find_element(id:"header_value_to").text
  if actual_value != value
    fail("Expected value was #{value} but Actual value is #{actual_value}")
  end
end

When(/^I click on From field$/) do
  find_element(id:"header_value_from").click
end

And(/^I press "([^"]*)" on soft keyboard$/) do |value|
  digits = value.split ""
  digits.each do |key|
  digit = Integer(key)
  press_keycode 7 + digit
    end
end

When(/^Iselect "([^"]*)" from the left column$/) do |value|
  find_element(id:"radio_group_from").find_element(xpath: "//android.widget.RadioButton[@text='#{value}']").click
end