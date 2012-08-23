Given /^(?:|I) am on the (.+)$/ do |page_name|
	visit path_to(page_name)
end