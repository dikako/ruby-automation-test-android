class LoginPage
  def tap_hamburger_menu
    $driver.find_element(:accessibility_id, "open menu").click
  end

  def tap_login_menu
    $driver.find_element(:accessibility_id, "menu item log in").click
  end

  def input_username(username)
    $driver.find_element(:accessibility_id, "Username input field").send_keys(username)
  end

  def input_password(password)
    $driver.find_element(:accessibility_id, "Password input field").send_keys(password)
  end

  def tap_login_button
    $driver.find_element(:accessibility_id, "Login button").click
  end

  def product_page?
    $driver.find_element(:xpath, "//android.widget.TextView[@text='Products']").displayed?
  end
end