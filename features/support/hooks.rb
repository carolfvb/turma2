require 'selenium-webdriver'

Before do |scn|
  Capybara.current_session.driver.browser.manage.delete_all_cookies
  Capybara.page.driver.browser.manage.window.maximize
  @scn_name = "#{scn.name + Time.now.strftime('%H-%M-%S')}"
end

AfterStep do |step|
  data = "#{Time.now.strftime('%Y/%B/%d')}"
  hora = "#{Time.now.strftime('%H-%M-%S')}"
  save_screenshot("data/screenshot/#{@scn_name}/#{hora}.png")
  if step.failed?
    save_screenshot("data/screenshot/failed/#{@scn_name}/#{hora}.png")
  end
 #attach_file("Image", File.open("#{path}.png") )
end


#
# After do |step|
#   if step.failed?
#     binding.pry
#   end
# end
