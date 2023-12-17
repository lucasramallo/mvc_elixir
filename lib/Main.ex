defmodule Main do
  alias User_controller
  alias Controllers.AccountController, as: Account_controller
  alias Controllers.Transaction

  def main() do
    IO.inspect user = User_controller.create_user("Lucas", "132.156.892.65", "lucas@gmail.com", 18, :COMMON)
    IO.inspect user2 = User_controller.create_user("MAria", "1456.321.745.87", "maria@gmail.com", 18, :COMMON)
    IO.inspect account1 = Account_controller.create_account(user)
    IO.inspect account2 = Account_controller.create_account(user2)

    Controllers.Transaction.transaction(account1, account2, 100)
  end
end
