resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
dependency "vrp"

client_scripts{ 
  "lib/Tunnel.lua",
  "lib/Proxy.lua",
  "cl_jobhours.lua"
}

server_scripts{ 
  "@zts/lib/utils.lua",
  "sv_jobhours.lua"
}
