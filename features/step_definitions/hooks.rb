Before do
  @bank_project_url = 'https://demo.guru99.com/V1/index.php'
end

After do
  Capybara.reset_sessions!
end