defmodule BigBrother.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application
  alias BigBrother.Actor

  def start(_type, _args) do
    IO.puts "Big brother is watching"
    children = [cspec(:julia), cspec(:winston), cspec(:syme)]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_all, name: BigBrother.Supervisor]
    Supervisor.start_link(children, opts)
  end

  defp cspec(character_name) do
    %{
      id: character_name,
      start: {Actor, :start_link, [character_name]}
    }
  end
end
