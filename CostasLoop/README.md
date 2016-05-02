测试步骤

# 单一频率信号实验
1. Matlab 生成单一频率的数据文件
2. 使用 verilog 读取上一步的数据文件，使用 ModelSim进行仿真，观察波形。

## 步骤
1. 运行 Matlab/single\_freq.m，会在 data 目录下创建 single\_freq\_doppler.txt and single\_freq\_out.txt
2. 控制台切换到 Verilog目录，运行 vsim -do single\_file\_read\_tb.do

# PLL的实验
1. verilog 加入 xilinx的 NCO 模块，生成一个频率相近的本振信号
2. 使用 xilinx的乘法器，将 matlab生成的信号与本振信号相乘，做混频处理，观察信号波形
3. 使用 FIR 对上一步的信号进行滤波处理，观察滤波以后的波形
4. 使用 IIR 对上一步的信号进行环路滤波处理，观察波形
5. 闭合PLL环路，观察是否可以控制 NCO 改变频率，跟踪输入的信号。
