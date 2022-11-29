msg_reply.t2i = {
    keyword = {
        prefix = {
            '/t2i',
         },
    },
    echo = {
        lua = 't2i',
     },
}
msg_reply.i2i = {
    keyword = {
        prefix = {
            '/i2i',
         },
    },
    echo = {
        lua = 'i2i',
     },
}
msg_reply.delete = {
    keyword = {
        regex = {
            '(.*)/del',
         },
    },
    echo = {
        lua = 'delete',
     },
}
