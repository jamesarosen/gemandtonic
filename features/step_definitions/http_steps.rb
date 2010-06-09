Given /^I am on (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^I go to (.+)$/ do |page_name|
  visit path_to(page_name)
end

Then /^the response should be OK$/ do
  last_response.status.should == 200
end
