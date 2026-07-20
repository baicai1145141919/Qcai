<p align="center">
  <img src="res/drawable/contact_icon.png" width="96" height="96" alt="Qcai 图标"><br>
  <h1>Qcai 扩展功能包</h1>
  <p>一个基于 Xposed（NPatch / LSPatch）的 QQ 扩展模块</p>
</p>

<p align="center">
  <a href="https://github.com/baicai1145141919/Qcai"><img src="https://img.shields.io/badge/GitHub-查看仓库-181717?style=for-the-badge&logo=github&logoColor=white" alt="在 GitHub 上查看"></a>
  <a href="https://github.com/baicai1145141919/Qcai/releases/download/v1.0.10/Qcai_v1.0.10.apk"><img src="https://img.shields.io/badge/APK-下载最新版-07C160?style=for-the-badge&logo=android&logoColor=white" alt="下载最新版"></a>
</p>

---

## ✨ 功能特性

| 功能 | 说明 |
| --- | --- |
| 🔁 语音转发 | 在语音消息菜单加入转发能力 |
| 👉 戳一戳无限戳 | 清除冷却字段，解除「戳一戳」频率限制 |

## 📱 安装方式（NPatch / LSPatch，免 Root）

本模块通过 **NPatch**（LSPatch 分支）嵌入 QQ 进程，**不需要 Root、不需要 LSPosed**。

1. 准备：
   - 未改过的 **QQ 9.3.10.37675**（模块 hook 落点以此版本为准）
   - 本仓库发布的 `Qcai扩展功能包_x.x.x.apk`
   - NPatch 工具
2. 用 NPatch 修补 QQ：把模块 APK 作为模块一起打包进 QQ，生成重打包后的 QQ。
3. 卸载原 QQ → 安装重打包后的 QQ（重打包 = 卸载重装，会清空应用数据）。
4. 打开 QQ，进入「设置」页底部，应能看到模块入口；桌面会出现「Qcai扩展功能包」图标。

> ⚠️ 若模块完全不生效（连日志都没有），基本是 NPatch 没加载：重打包时确保 NPatch manager 在前台、未被系统杀掉，干净重打包一次即可。

## 🔗 模块如何工作

- 入口 `MainHook`（实现 `IXposedHookLoadPackage`），在 `handleLoadPackage` 中按包名自判目标（`com.tencent.mobileqq` / `com.tencent.tim`）。
- 核心功能：
  - 语音转发：菜单方法上遍历无参方法找「返回 PttElement」者并 `getFilePath()`
  - 戳一戳无限戳：`PaiYiPaiApiImpl.sendDoubleClickReq` before 清零 `this` 上所有 long 字段，原方法照常执行（保留显示）

## 🛠️ 从源码构建

仓库 `smali/` 下为模块**自有源码**（不含任何反编译的 QQ 代码）。

```bash
# 需要：apktool 2.11.1、Java 17、uber-apk-signer、release 密钥库
apktool b . -o out/unsigned.apk --use-aapt2
java -jar uber-apk-signer.jar \
  --apk out/unsigned.apk \
  --ks keys/release.keystore --ksAlias qcai \
  --ksPass 'QcaiMod@2026' --ksKeyPass 'QcaiMod@2026' \
  --out out
```

> 注：模块以「合并进 QQ dex」的形式随 NPatch 重打包分发。本仓库只发布模块自身源码，不附带 QQ 的闭源字节码。

## 📇 联系作者

- QQ：2505976626
- GitHub：[baicai1145141919/Qcai](https://github.com/baicai1145141919/Qcai)（点击「点击此处前往作者GitHub」按钮复制仓库链接）
- 本模块功能极少，建议配合其他模块使用
## ⚠️ 免责声明

本模块仅供**个人学习与技术研究**使用。使用本模块可能违反 QQ 用户协议、存在封号风险，由此产生的任何后果由使用者自行承担。请遵守所在地区法律法规。

<p align="center">
  <a href="https://github.com/baicai1145141919/Qcai"><img src="https://img.shields.io/badge/⭐-在 GitHub 上 Star 本项目-FFD700?style=for-the-badge" alt="Star"></a>
</p>
