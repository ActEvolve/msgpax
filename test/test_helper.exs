ExUnit.start

defmodule Msgpax.Case do
  defmacro __using__(_) do
    quote do
      use ExUnit.Case, async: true

      import Msgpax, only: :functions

      defp string(len), do: String.duplicate("X", len)

      defp map(len), do: List.duplicate({ "X", -32 }, len)

      defp array(len), do: List.duplicate(255, len)
    end
  end
end
