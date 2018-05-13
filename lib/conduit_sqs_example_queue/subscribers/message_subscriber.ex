defmodule ConduitSqsExampleQueue.MessageSubscriber do
  use Conduit.Subscriber
  require Logger

  def process(message, _opts) do
    message
    |> inspect()
    |> Code.format_string!()
    |> Logger.info()

    message
  end
end
