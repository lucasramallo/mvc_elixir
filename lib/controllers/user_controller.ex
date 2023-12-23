defmodule User_controller do
  alias User
  alias UserView

  def create_user(name, document, email, age, type) do
    user = %User{id: generate_id(), name: name, document: document, email: email, age: age, type: type}
    {:ok, user}
  end

  defp generate_id do
    Enum.join(for _ <- 1..5, do: Integer.to_string(:rand.uniform(10)))
  end
end
