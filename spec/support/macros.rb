def sign_in(a_user=nil)
  user ||= a_user || Fabricate(:user)
  visit root_path
  click_on('Sign in')
  fill_in('email', with: user.email)
  fill_in('password', with: user.password)
  click_button('Login')  
end

def set_current_user
  thupten = Fabricate(:user)
  session[:user_id] = thupten.id
end

def current_user
  User.find(session[:user_id])
end

def clear_current_user
  session[:user_id] = nil
end

def sign_up(a_user=nil)
  user ||= a_user || Fabricate(:user)
  visit root_path
  fill_in('user[full_name]', with: user.full_name)
  fill_in('user[email]', with: user.email)
  fill_in('user[password]', with: user.password)
  click_button('Sign me up!')
end
