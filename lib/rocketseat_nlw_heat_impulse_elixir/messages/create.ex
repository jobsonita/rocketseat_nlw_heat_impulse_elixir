defmodule RocketseatNlwHeatImpulseElixir.Messages.Create do
  alias RocketseatNlwHeatImpulseElixir.{Message, Repo}

  def call(params) do
    params
    |> Message.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %Message{}} = result), do: result

  defp handle_insert({:error, result}) do
    {:error, %{result: result, status: :bad_request}}
  end
end
