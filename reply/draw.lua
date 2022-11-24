msg_reply.draw = {
    keyword = {
        prefix = {".naifu:"}
    },
    echo = {
        lua = "draw"
    }
}
msg_reply.delete = {
    keyword = {
        regex = {"(.*)/delete"}
    },
    echo = {
        lua = "delete"
    }
}
