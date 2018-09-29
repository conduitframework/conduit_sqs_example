use Mix.Config

config :conduit_sqs_example, ConduitSqsExampleQueue.Broker,
      adapter: ConduitSQS,
      access_key_id: [{:system, "ACCESS_KEY_ID"}, :instance_role],
      secret_access_key: [{:system, "SECRET_ACCESS_KEY"}, :instance_role]
