# ThinkPad X390 OpenCore EFI

适用于联想 ThinkPad X390 的 OpenCore EFI 配置。

## 当前环境

- 机型：Lenovo ThinkPad X390
- macOS 版本：macOS 14.8
- OpenCore 版本：1.0.7
- SMBIOS 机型：`MacBookPro15,2`

## 驱动状态

本 EFI 已在 macOS 14.8 下使用。除下列两项外，其余已配置的硬件与驱动均正常工作：

- 指纹识别：macOS 下无法驱动。
- 人脸识别：X390 的 Windows Hello 红外人脸识别无法在 macOS 中作为 Face ID 使用。

正常工作的部分包括核显硬件加速、屏幕亮度与亮度快捷键、声音、Wi-Fi、蓝牙、有线网络、USB、NVMe、键盘、触控板、电池状态与传感器等。

## SMBIOS 脱敏说明

为避免泄露本机的唯一标识，公开仓库中的 `EFI/OC/config.plist` 已经脱敏。当前占位值如下：

| 配置项 | 当前脱敏值 |
| --- | --- |
| `PlatformInfo -> Generic -> SystemSerialNumber` | `W00000000001` |
| `PlatformInfo -> Generic -> MLB` | `M0000000000000001` |
| `PlatformInfo -> Generic -> SystemUUID` | `00000000-0000-0000-0000-000000000000` |
| `PlatformInfo -> Generic -> ROM` | `11 22 33 44 55 66` |

上述值取自 OpenCore 1.0.7 官方 `Sample.plist`，字段格式合法，但仍然只是公开示例占位值，不能直接用于正常登录 Apple 服务。使用前请通过 GenSMBIOS 或其他可信工具，为 `MacBookPro15,2` 生成属于你自己设备的唯一 SMBIOS 信息，并替换全部四项占位值。

请勿复用他人的 SMBIOS，也不要将自己的真实序列号、MLB、UUID 或 ROM 公开上传。替换后，建议使用 OpenCore 1.0.7 附带的 `ocvalidate` 重新检查 `config.plist`。

## 仓库内容

仓库仅包含可启动的 `EFI` 目录和本说明文件，不包含研究资料、参考 EFI、辅助工具、本机 SMBIOS 或其他个人化唯一标识。
