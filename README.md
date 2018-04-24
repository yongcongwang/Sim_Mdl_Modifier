# Sim_Mdl_Modifier
整理了之前写的一个Matlab/Simulink模型修改工具，去掉了满足特定需求的两个功能，变得更通用一些。工具基于matlab提供的接口编写，添加了GUI界面。
## Fit to View
此功能可以将Simulink模型当前层或者所有层的SubSystem设置成`Fit to View`模式。
## Adjust Port
Subsystem内部模型修改以后，SubSystem大小会改变，与之对应的输入输出端口就不是对齐状态了，此功能可以将所有的SubSystem的输入输出端口自动对齐。
* Adjust System
  + Current System：当前系统
  + Manual Input：手动输入需要调节系统
* Adjust Depth
  + Current Level：当前层
  + Children Level1：子一层
  + Children Level2：子二层
  + children Level3：子三层
* Adjust Mode
  + SubSystem：子系统
  + Model Reference：引用模型
* Adjust Length：输入输出距离模型距离
## Modify Block
当修改模型的时候，因为公司强制要求或者强迫症的自我修养，总想将所有模型设置成统一的样式，如颜色、大小和名字是否隐藏，此功能能将所有相同的Block设置成相同的属性，省去手工修改的无用功。

## 使用
下载两个文件，打开模型后运行m文件即可
