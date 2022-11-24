local api = "http://261090.proxy.nscc-gz.cn:8888/"
local tags = msg.fromMsg:sub(#'.naifu:' + 1)
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
tab["negative_prompt"] = "nsfw, lowres, text, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry,sex"

local data = json.encode(tab)

if msg.gid == 971050440 then
    sendMsg("绘图ing...", msg.fromGroup, msg.fromQQ)
    status, receive = http.post(api, data)
    image = "[CQ:image,file=" .. receive .. "]"
    return image
else
    return "你没有权限哦!"
end
