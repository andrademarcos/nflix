Quando('eu faço login com {string} e {string}') do |email, password|
  @login.go
  @login.with(email, password)
  sleep 2
end

Então('devo ser autenticado') do
  js_script = 'return window.localStorage.getItem("default_auth_token");'
  token = page.execute_script(js_script)
  expect(token.length).to be 147
  sleep 2
end

Então('devo ver {string} na área logada') do |expected_name|
  expect(@sidebar.logged_user).to eql expected_name
end

Então('não devo ser autenticado') do
  js_script = 'return window.localStorage.getItem("default_auth_token");'
  token = page.execute_script(js_script)
  expect(token).to be nil
end

Então('devo ver a mensagem de alerta {string}') do |expected_message|
  expect(@login.alert).to eql expected_message
end
