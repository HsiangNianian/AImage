local port = "15700"
local nude = "/delete_msg"
local api = "http://localhost:" .. port .. nude
local message_id = string.match(msg.fromMsg, "[-]?[0-9]+") or "笨蛋"
local para = {}
local json = require("json")
para["message_id"] = tonumber(message_id)

if getUserConf(msg.fromQQ, "trust", 0) >= 4 then
    stat, data = http.post(api, json.encode(para))
else
    return "你的想法有点奇怪呢..."
end
