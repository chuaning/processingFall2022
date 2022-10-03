# processingFall2022
homework
# 文件sketch_221003d
是第二次作业，灵感来源于SOL LEWITT: A WALL DRAWING RETROSPECTIVE系列Wall Drawing 304部分，由于原作较为简单，因此编辑代码时将条纹宽度以及颜色改成与鼠标位置（以及条纹序号）有关。
# 存在问题
代码中在循环结构里有一行被注释的代码saveFrame("#####.png");用于生成序列图进而用movie maker导出视频。然而，将此代码写入循环会使生成图案随鼠标移动时变化十分卡顿，而将代码直接放入draw函数中则只能生成一张图片。生成位图之后，使用movie maker将位图路径文件夹，生成大小帧率，生成文件路径都填好但是create movie按钮呈灰色。因此使用录屏录制。
# Lisence
无
