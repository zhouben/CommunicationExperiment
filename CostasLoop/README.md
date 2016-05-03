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


## 步骤
1. 切换到 Verilog 目录，运行``vsim -do pll_tb.do``。即可观察到
    1. Matlab生成的两路信号（一路单一频率。一路叠加doppler），
    2. 通过编程 NCO IP core实现的本振信号。
2. 对于 lpf 输入和输出的数据，可以打印出来，然后用matlab的 conv进行卷积计算。lpf的coefficientvector 可以在 \*.xco 文件中找到。
3. 混频+LPF的观察
    1. 通过调整 本振的初始相位，在同频但是相位不同时，可以发现混频器+LPF输出的误差信号的强度会跟初始相位有很大关系。基本成线性关系。
    2. 不同频的情况下，误差信号按照频率之差振荡。基本符合预期。

4. 使用截止频率更小的低通滤波器
    1. Matlab 目录下的 pll\_lpf.m 可以生成 长度为38的滤波器。过渡带为 0.2121MHz ~ 1MHz。采样频率依旧是 16MHz。该程序会在 Data 目录下生成 locklpf.coe 文件。
    2. Xilinx实现FIR滤波器，采用上一步的coe文件，生成 Verilog/Lpf 下的三个文件
    3. 修改pll\_tb.do 等文件，采用 Lpf下的滤波器
