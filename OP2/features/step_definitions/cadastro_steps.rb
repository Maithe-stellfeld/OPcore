Dado('que acesso a página de cadastro') do
    visit "http://op-des.01tec.com.br/login"
    sleep 3
end


Quando('submeto o meu cadastro com:') do |table|
    user = table.rows_hash
    find("input[name*= txtLogin]").set user[:email]
    find("input[name= txtSenha]").set user[:senha]
    click_on "ACESSAR"

end


Então('estou no primeiro tutorial e devo fechá-lo') do  
    expect(page).to have_css'.#LinkButton1'
    
   


end