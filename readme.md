[![](https://img.shields.io/github/last-commit/cypress0522/AImage)](https://github.com/cypress0522/AImage/commits/main)[![](https://img.shields.io/github/issues/cypress0522/AImage)](https://github.com/cypress0522/AImage/issues)[![](https://img.shields.io/github/issues-pr/cypress0522/AImage)](https://github.com/cypress0522/AImage/pulls)[![](https://img.shields.io/github/v/release/cypress0522/AImage?include_prereleases)](https://github.com/cypress0522/AImage/releases)

### [Lua脚本版本](https://forum.kokona.tech/d/1552-aihua-hua-ji-yu-naifu-apide-aihui-hua-jiao-ben/1)
1. 下载。
2. 修改后缀为`.lua`并放入`DiceQQ\plugin\`文件夹下。
3. 使用`.system load`命令重载bot。
4. 发送`AI绘画 1girl`尝尝鲜。
> tips:指令格式为:`AI绘画 xxx,xxx,xxx,xxx···`

### [Mod模块版本](https://forum.kokona.tech/d/1552-aihua-hua-ji-yu-naifu-apide-aihui-hua-jiao-ben/2)


- Dice版本2.6.5beta12(624+)以上安装方法:

 1. 在 `./DiceQQ/conf/mod/source.list`文件内（没有mod文件夹和这文件就新建）输入 
    ```
    https://raw.sevencdn.com/Dice-Developer-Team/DiceModIndex/main/
    https://raw.githubusercontent.com/Dice-Developer-Team/DiceModIndex/main/
    https://ssjskfjdj.netlify.app/Module/
    ```
 2. 使用 `.system load`命令重载bot，这样做的目的是为了让步骤1里的远程地址生效。
 3. 对bot发送 `.mod get AImage`命令，等待安装。
 4. 回到第二步，这样做的目的是为了让mod被加载。
 5. Enjoy Your Self!

- Dice版本2.6.4b(612+)以上安装方法：

 1. 浏览器访问 https://github.com/ssJSKFJDJ/AImage 并点击绿色按钮 `Code`下的 `Download Zip`按钮下载仓库压缩包。
 2. 解压压缩包，将里面的文件和文件夹全部丢进 `./DiceQQ/mod/`文件夹内。
 3. 使用 `.system load`命令重载。
 4. Enjoy Your Self!

> tips:指令格式为:`.naifu:xxx,xxx,xxx···`

### Lua版与Mod模块版有何不同？
1. 可支持的Dice!版本不同，Mod版本最低需要Dice! 2.6.4(612)的支持，而Lua版本范围更加宽泛，几乎所有Dice!版本都可以使用。
2. 延展性不同。Lua版本~~较为简陋~~,更多的是让用户自己根据需要去修改脚本，比如添加白名单群或者指令次数上限等；而Mod版本更可能的会持续更新，你只需要`.mod update AImage`即可。