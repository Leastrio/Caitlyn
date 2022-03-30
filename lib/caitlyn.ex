defmodule Caitlyn do
  @moduledoc """
  `Caitlyn` is a League of Legends API wrapper.
  """

  @doc """
  Initialize the api wrapper
  """
  def create do
    api_key = Application.fetch_env!(:caitlyn, :api_key)
    Agent.start_link(fn -> api_key end, name: __MODULE__)
  end

  @doc """
  Initialize the api wrapper
  """
  def create(api_key) do
    Agent.start_link(fn -> api_key end, name: __MODULE__)
  end

  @doc """
  Get your api key
  """
  def key do
    Agent.get(__MODULE__, fn state -> state end)
  end
end
