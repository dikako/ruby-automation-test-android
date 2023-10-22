require 'appium_lib'
require 'rspec/expectations'
require 'dotenv'

Dotenv.load

capabilities = {
  caps: {
    deviceName: ENV["DEVICE_NAME"],
    platformName: "Android",
    platformVersion: ENV["PLATFORM_VERSION"],
    automationName: "UiAutomator2",
    app: ENV["APP"]
  },
  appium_lib: {
    server_url: ENV["APPIUM_URL"],
    wait: 5
  }
}

@driver = Appium::Driver.new(capabilities, true)
