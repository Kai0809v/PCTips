::BAT文件中，REM和::用于注释。用code模式看，别用预览preview


:: 关闭回显，并只显示特意echo输出的内容
@echo off
:: 换成绿色，感觉好看一点
color a

REM ====================================================================================
REM 在批处理脚本（.bat 文件）中，@echo off 是一个非常常见的命令，它用于控制命令行窗口的输出行为。
REM 具体来说，@echo off 的作用是：

REM 1. 隐藏命令本身的输出
REM echo off：关闭命令的回显功能。默认情况下，当你在批处理脚本中输入命令时，命令本身会被显示出来，然后再执行相应的操作。例如，如果你写了一个 echo Hello World 命令，它会在命令行窗口中显示 echo Hello World 这一行。
REM 使用 echo off 后，命令本身就不会被显示出来，只会显示命令的执行结果。
REM 2. @ 符号的作用
REM 在批处理脚本中，@ 是用来避免显示当前行命令本身的。如果你写了 @echo off，它会立即隐藏 echo off 这一命令的输出。
REM 如果没有使用 @，那么如果你写的是 echo off，该命令行会先显示出来（即显示 echo off），然后才关闭回显。
REM ====================================================================================

:: 获取 IPv4 地址
for /f "tokens=14 delims=: " %%i in ('ipconfig ^| findstr /i "IPv4"') do set IP=%%i
REM 解释：for /f：用于处理从命令返回的每一行文本。/f 表示读取并逐行解析命令的输出。
REM delimis是分隔符单词缩写，delims=: "表示用:和"两个符号将内容分成若干个部分
REM tokens=15：指定 for 命令在每行中提取的部分。在这里，我们选择 tokens=15，因为在 ipconfig 输出中，IPv4 地址通常出现在第15个位置
REM ↑中文的是15，英文的应该是14，看情况而定


:: 输出当前的 IPv4 地址
echo Your current IPv4 address is: %IP%
REM 不建议输出中文，因为可能因为莫名其妙的原因乱码

:: 将 IPv4 地址复制到剪贴板
echo %IP% | clip

:: 提示用户操作成功
echo IPv4 address has been copied to clipboard.
pause
