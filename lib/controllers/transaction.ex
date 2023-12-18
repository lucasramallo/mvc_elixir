defmodule Controllers.Transaction do
  alias Transaction

  def transaction(sender, reciever, value) do
    transaction = %Transaction{id: generate_id(), sender: sender, receiver: reciever, value: value}
    |> handle_transaction()
  end

  defp handle_transaction(transaction) do
    {:ok, sender} = transaction.sender
    {:ok, reciever} = transaction.receiver
    value = transaction.value

    %{
      transaction: transaction,
      new_accounts: {
        %Account{sender | balance: sender.balance - value},
        %Account{reciever | balance: reciever.balance + value}
      }
    }
  end

  defp generate_id do
    Enum.join(for _ <- 1..5, do: Integer.to_string(:rand.uniform(10)))
  end
end
