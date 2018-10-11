class AutenticacaoController < ApplicationController

  def login
  	if params[:Acesso] == "Login"
      if ((params[:nome] == "admin") && (params[:password] == "admin"))
        cookies[:login] = { :value => { nick: params[:nome], senha: params[:password] } }
        redirect_to controller: "admins", action: "index"
      end
    end
  end

  def logout
    cookies.delete :login
    redirect_to action: "login"
  end

end
