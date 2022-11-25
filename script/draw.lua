local api = "http://261090.proxy.nscc-gz.cn:8888/"
local raw = msg.fromMsg:sub(#".naifu:" + 1)
local tags = raw:match("[,%sA-Za-z0-9%{%}%(%)%[%]]+[^;]?") or "Baka"
local kv = raw:match(";(.*)") or "Default Config"
local json = require("json")
local seed = ranint(0, 1919810)
local prompt = "masterpiece, best quality, " .. tags

local tab = {}
tab["prompt"] = prompt
tab["width"] = 512
tab["height"] = 768
tab["cfg_scale"] = 12
tab["n_iter"] = 1
tab["steps"] = 20
tab["seed"] = seed
tab["batch_size"] = 1
tab["sampler_index"] = "Euler"
tab["negative_prompt"] =
    "nsfw, lowres, text, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry,sex"

local data = json.encode(tab)

local whlstfromGroup = {971050440, 10086}

local whlstfromQQ = {2753364619, 1712724531}

if tags == "Baka" then return "有笨蛋！tags都不会写欸——但是我不说是谁*" end

for k = 1, #whlstfromGroup do
    if msg.gid == whlstfromGroup[k] then
        sendMsg("绘图ing...", msg.fromGroup, msg.fromQQ)
        status, receive = http.post(api, data)
        image = "[CQ:image,file=" .. receive .. "]"
        return image
    end
end

for k = 1, #whlstfromQQ do
    if msg.uid == whlstfromQQ[k] then
        sendMsg("绘图ing...", msg.fromGroup, msg.fromQQ)
        status, receive = http.post(api, data)
        image = "[CQ:image,file=" .. receive .. "]"
        return image
    end
end
return "你没有权限哦~"
