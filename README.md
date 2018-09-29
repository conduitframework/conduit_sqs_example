# ConduitSqsExample

Example App that uses [Conduit](https://github.com/conduitframework/conduit) and [ConduitSQS](https://github.com/conduitframework/conduit_sqs).

## Running

You should can run the project by doing:

``` bash
export ACCESS_KEY_ID=YOUR_AWS_ACCESS_KEY_ID
export SECRET_ACCESS_KEY=YOUR_AWS_SECRET_ACCESS_KEY
iex -S mix run
```

You should see logs mentioning that it has created the `message` and `message-error` queue at startup.

```
22:28:46.712 [info]  SQS Adapter started!
22:28:46.723 [info]  Declaring queue message
22:28:47.062 [info]  Declaring queue message-error
```

Once you have an iex prompt, you can send a message by doing:

``` elixir
import Conduit.Message
alias Conduit.Message
alias ConduitSqsExampleQueue.Broker

message = put_body(%Message{}, %{"my" => "message"})

Broker.publish(message, :message)
```
