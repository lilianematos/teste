# encoding: utf-8
# !/usr/bin/env ruby

Quando(/^eu preencher os campos$/) do
  fill_in 'Email', :with => "lily@hotmail.com"
  fill_in 'user_password', :with => "123456"
  click_button 'Entrar'
end

Então(/^eu devo estar logado na pagina$/) do
  have_content('lily@hotmail.com')
end