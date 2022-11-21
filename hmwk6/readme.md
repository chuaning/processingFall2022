## 第六次作业
我好像不记得readme怎么写了，也许这不是一个markdown文档
灵感来源于老师给的代码（吸取了作业五的经验，完全自己从一无所有开始写太难太费时间太容易出错了怕交不上。。）
https://github.com/ddurAdvisor/CreativeCoding2022Fall/tree/main/Week06/complexity_flocking_v1_2D）

主要更改了separate函数，把两个粒子相碰分离改为两个粒子相碰后一个消失（不能被看见，本来想用Arrylist里的remove函数但是发现在循环里面没有用，
于是设置了生命周期让更小的那个球相撞后lifespan变为0，更大的那个在每次碰撞后lifespan都增加），改变了粒子形态和颜色（碰撞后的形态：半径根据被吸收的小球半径大小变大，碰撞后颜色中和）。
原本更改了群体行为函数，让小的粒子如果没有被吃掉就跟着大大粒子走，但是改变了背景以后看不见粒子的轨迹了。
其他的在ppt里面。

## license
无，以链接代码的license为主
