class ConfirmationSender
  def self.send_confirmation_to(user)
    confirmation_code = CodeGenerator.generator
    user.update_columns(confirmation_code: confirmation_code)
    MessageSender.send_code(user.phone_number, confirmation_code)
  end
end
