defmodule RocketseatNlwHeatImpulseElixirWeb.MessagesView do
  use RocketseatNlwHeatImpulseElixirWeb, :view

  def render("create.json", %{message: message}) do
    %{
      result: "Message created!",
      message: message
    }
  end
end
