api = "http://proxy.nscc-gz.cn:38885/generate-dice"
raw = msg.fromMsg
tags = raw:sub(#'.naifu:' + 1)
json = require("json")
seed = ranint(0, 1919810)
tab = {}
prompt = "masterpiece, best quality, " .. tags
tab["prompt"] = prompt
tab["width"] = 512
tab["height"] = 768
tab["scale"] = 12
tab["sampler"] = "k_euler_ancestral"
tab["steps"] = 20
tab["seed"] = seed
tab["n_samples"] = 1
tab["ucPreset"] = 4
tab["uc"] =
    "nsfw, lowres, text, cropped, worst quality, low quality, normal quality, jpeg artifacts, signature, watermark, username, blurry"
data = json.encode(tab)

if msg.gid == 971050440 then
    sendMsg("绘图ing...", msg.fromGroup, msg.fromQQ)
    status, receive = http.post(api, data)
    image = "[CQ:image,file=" .. receive .. "]"
    return image
else
    return "你没有权限哦!"
end
