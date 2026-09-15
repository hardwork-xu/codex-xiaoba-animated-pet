<div align="center">

# 小八 Xiaoba · Codex Pet

让小八陪你写代码、等结果、一起摸鱼。

A tiny blue-and-white companion for your Codex desktop.

<img src="assets/waving.gif" width="192" height="208" alt="小八向你挥手 / Xiaoba waving hello">

**[在线逗逗小八](https://hardwork-xu.github.io/xiaoba-codex-pet/) · [下载宠物包](https://github.com/hardwork-xu/xiaoba-codex-pet/releases/latest/download/Xiaoba-pet.zip) · [⭐ 给小八一颗 Star](https://github.com/hardwork-xu/xiaoba-codex-pet)**

喜欢这个小家伙的话，点一下仓库右上角的 **Star**，也欢迎分享给朋友。

</div>

## 小八会做什么？

- **9 种动作**：待机、向右跑、向左跑、挥手、跳跃、失落、等待、工作、查看结果。
- **16 个环视方向**：头部自然转向，跟随你的鼠标。
- **蓝白玩具质感**：圆脑袋、粉色腮红、小小的手脚。
- **透明背景**：适配深浅背景，附带可离线打开的动画预览。

<table>
  <tr><th>安静陪你</th><th>向左跑</th><th>四处看看</th></tr>
  <tr>
    <td><img src="assets/idle.gif" width="192" height="208" alt="小八待机动画"></td>
    <td><img src="assets/running-left.gif" width="192" height="208" alt="小八向左跑动画"></td>
    <td><img src="assets/look.gif" width="192" height="208" alt="小八环视动画"></td>
  </tr>
</table>

<a id="install"></a>

## 安装 · macOS

需要支持自定义 **Pets** 的 Codex 桌面版。网页预览可以独立使用；安装桌面宠物需要 Codex 的 Pets 功能。

### 手动安装

1. [下载 Xiaoba-pet.zip](https://github.com/hardwork-xu/xiaoba-codex-pet/releases/latest/download/Xiaoba-pet.zip)，解压后打开 `Xiaoba` 文件夹。
2. 在 Finder 中按 **⌘⇧G**，输入 `~/.codex/pets/`。目录不存在时，先在 `~/.codex/` 下创建 `pets` 文件夹。
3. 在 `pets` 中创建 `xiaoba` 文件夹，将包内的 **`pet.json` 和 `spritesheet.webp`** 一起复制进去。已有同名宠物时，先备份旧文件。
4. 在 **Settings → Pets** 中点击 **Refresh** 并选择 **Xiaoba**。若没有浮层，使用 **Show pet** 或输入 `/pet`。这些入口见 [OpenAI 官方 Pets 说明](https://learn.chatgpt.com/docs/pets?surface=app)。

最终应是：

```text
~/.codex/pets/xiaoba/
├── pet.json
└── spritesheet.webp
```

如果设置过 `CODEX_HOME`，将上面的 `~/.codex` 换成该目录。

### 使用安装脚本

在解压后的 `Xiaoba` 文件夹打开终端，运行：

```sh
bash install.sh
```

脚本会自动安装这两个文件，已有的 `xiaoba` 文件夹会移到 `~/.codex/pet-backups/`，并显示备份位置。支持 `CODEX_HOME`；无需管理员权限、Python 或额外依赖。

### 常见问题

- **列表里没出现？** 确认两个文件直接位于 `pets/xiaoba/` 下，没有多套一层文件夹，再点 Refresh；必要时重新打开 Codex。
- **看不到 Pets 设置？** 当前 Codex 版本需要具备该功能；可以先用[在线预览](https://hardwork-xu.github.io/xiaoba-codex-pet/)体验小八。
- **只想看动画？** 双击包内的 `index.html`，或打开在线预览。选择“环视”后在展示区域移动鼠标；回到中心会恢复待机。
- **想卸载？** 在 Codex 中切换到其他宠物，再移走 `pets/xiaoba/` 文件夹即可。

## English quick start

Download and unzip the [pet package](https://github.com/hardwork-xu/xiaoba-codex-pet/releases/latest/download/Xiaoba-pet.zip). Copy `pet.json` and `spritesheet.webp` into `~/.codex/pets/xiaoba/`, or run `bash install.sh` from the extracted folder. In a Codex desktop build with custom Pets support, select **Refresh → Xiaoba** in **Settings → Pets**. Use **Show pet** or `/pet` to show the floating companion. If you use `CODEX_HOME`, install under that directory instead.

You can also [try the interactive demo](https://hardwork-xu.github.io/xiaoba-codex-pet/) or open `index.html` locally. If Xiaoba makes your day a little nicer, a **Star** is always appreciated!

## 文件与兼容性

| 文件 | 用途 |
| --- | --- |
| `pet.json` | 宠物名称与 Codex 精灵格式版本 |
| `spritesheet.webp` | 透明动画图集，1536 × 2288，8 × 11 格 |
| `install.sh` | macOS / Bash 安装助手，包含旧版本备份 |
| `index.html` | 在线与离线动画预览 |
| `assets/` | README 的动态预览 |

宠物使用 **`spriteVersionNumber: 2`**，每格 192 × 208 像素。项目发布版本 `v1.0.0` 与该精灵格式版本是两个不同的编号。本次发布已包含向左跑动画的残影修复。

## 来源与许可

这是一个非官方同人宠物项目。形象依据小八模型与实物照片制作，动画由 AI 辅助生成并完成逐帧整理；没有附带原始 STL 或参考照片。

代码与说明文档采用 [MIT License](LICENSE)。图像资源的使用范围与来源说明见 [ASSET-NOTICE.md](ASSET-NOTICE.md)；原角色及参考素材的权利归各自权利人。本项目与 OpenAI 或角色权利人没有隶属关系。

## 分享与反馈

欢迎把[仓库链接](https://github.com/hardwork-xu/xiaoba-codex-pet)发给朋友。发现动作问题时，可以在 [Issues](https://github.com/hardwork-xu/xiaoba-codex-pet/issues) 留下动作名称和截图，方便修复。

**喜欢小八，请点一下右上角的 ⭐ Star。谢谢你收养它！**
