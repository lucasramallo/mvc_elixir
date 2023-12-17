defmodule Controllers.AccountController do

  alias Account

  def create_account({:ok, user}) do
    account = %Account{number: generate_number(), user: user, balance: 0}
    {:ok, account}
  end

  defp generate_number do
    Enum.join(for _ <- 1..16, do: Integer.to_string(:rand.uniform(10)))
  end
end
