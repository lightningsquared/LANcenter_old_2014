module KnowsAboutEmail
  def current_email_address
    @email || (@current_user && @current_user.email) || "kenneth.szovati+LANcenter@gmail.com"
  end
end

World(KnowsAboutEmail)
