use Mix.Config

config :explorer,
  json_rpc_named_arguments: [
    transport: EthereumJSONRPC.HTTP,
    transport_options: [
      http: EthereumJSONRPC.HTTP.HTTPoison,
      url: "http://etheth653-dns-reg1.westeurope.cloudapp.azure.com:8540",
      method_to_url: [
        eth_getBalance: "http://etheth653-dns-reg1.westeurope.cloudapp.azure.com:8540",
        trace_replayTransaction: "http://etheth653-dns-reg1.westeurope.cloudapp.azure.com:8540"
      ],
      http_options: [recv_timeout: 60_000, timeout: 60_000, hackney: [pool: :ethereum_jsonrpc]]
    ],
    variant: EthereumJSONRPC.Parity
  ],
  subscribe_named_arguments: [
    transport: EthereumJSONRPC.WebSocket,
    transport_options: [
      web_socket: EthereumJSONRPC.WebSocket.WebSocketClient,
      url: "wss://sokol-ws.poa.network/ws"
    ],
    variant: EthereumJSONRPC.Parity
  ]
