defmodule BigBrother.Core do
  def say({name, something}) do
    "#{name} say #{something}"
  end

  def state_for(:julia) do
    {"Julia", "Let's play"}
  end

  def state_for(:winston) do
    {"Winston", "Welcome to the revolution."}
  end

  def state_for(:syme) do
    {"Syme", "I'd say something witty but you'd miss it."}
  end
end