-- 一个AI画画的请求lua，可以自由替换后端（NAIFU）,本后端模型为Anything V3.0
-- 本脚本后端推理服务器由国家超级计算广州中心提供，特此致谢。
-- 感谢@简律纯协助编写
msg_order = {}

function getImage(msg)
    local api = "http://261090.proxy.nscc-gz.cn:8888/"
    -- local tags = raw:match("[,%sA-Za-z0-9%{%}%(%)%[%]]+[^;]?") or "Baka"
    -- local kv = raw:match(";(.*)") or "Default Config"
    local json = require("json")

    local seed = ranint(0, 1919810)
    local raw = msg.fromMsg:sub(#".naifu:" + 1)
    local prompt = "masterpiece, best quality, " .. raw -- tags

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

    WhlstfromGroup = {971050440, 10086} -- 白名单群 等咱睡醒继续改） by 简律纯 08点46分
    WhlstfromQQ = {2753364619, 1712724531} -- 白名单用户

    for k = 1, #WhlstfromGroup do
        if msg.gid == WhlstfromGroup[k] then
            sendMsg("绘图ing...", msg.fromGroup, msg.fromQQ)
            status, receive = http.post(api, data)
            image = "[CQ:image,file=" .. receive .. "]"
            return image
        end
    end

    for k = 1, #WhlstfromQQ do
        if msg.uid == WhlstfromQQ[k] then
            sendMsg("绘图ing...", msg.fromGroup, msg.fromQQ)
            status, receive = http.post(api, data)
            image = "[CQ:image,file=" .. receive .. "]"
            return image
        end
    end
    return "你没有权限哦~"
end
msg_order[".naifu:"] = getImage
