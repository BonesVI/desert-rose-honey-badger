Given /^(?:|I) am on the (.+)$/ do |page_name|
	visit path_to(page_name)
end

When /^(?:|I) follow "(.*?)"$/ do |link_text|
	click_link link_text
end 

When /^(?:|I) fill in "(.*?)" with "(.*?)"$/ do |field, value|
	if field == "Minbid"
		field = "Minimum Bid"
	end
	fill_in field, :with => value
end

When /^(?:|I) press "(.*?)"$/ do |button|
	click_button button
end

Then /^(?:|I) should see "(.*?)"$/ do |message|
	if page.has_content?(message)
		assert true
	else
		assert false
	end
end

Then /^(?:|I) should not see "(.*?)"$/ do |message|
	unless page.has_content?(message)
		assert true
	else
		assert false
	end
end
