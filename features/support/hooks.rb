Before do
  $driver.start_driver
end

After do |scenario|
  if scenario.failed?
    path = "screenshot/error/#{scenario.name.gsub(" ", "_")}.png"
    $driver.screenshot(path)
    attach(path, "image/png")
  end

  $driver.driver_quit
end
