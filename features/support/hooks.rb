Before do
  $driver.start_driver
end

After do |scenario|
  if !File.directory?("screenshots")
    FileUtils.mkdir_p("screenshots")
  end

  if scenario.failed?
    screenshot_name = Time.now.strftime("%Y-%m-%d_%H.%M.%S")+".png"
    screenshot_file = File.join("screenshots",screenshot_name)
    $driver.screenshot(screenshot_file)
    embed("#{screenshot_file}", "image/png")
  end
  $driver.driver_quit
end

AfterConfiguration do
  FileUtils.rm_r("screenshots") if File.directory?("screenshots")
end