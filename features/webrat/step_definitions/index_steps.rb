Then /^I should be welcomed with "([^\"]*)"$/ do |title|
  response.should have_tag("div.title")  do
    have_content( title )
  end
end

