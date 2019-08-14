### 求最长的三个字符串 ###
1. 实现功能：在目标目录或文件中取最长的三个单词字符串，实现参数包含关系的判断，避免了文件重复读取<br>
2. 格式内容：输出分三行，格式为 字符串长度：字符串：字符串所在文件：行号<br>
3. 运行环境：Linux系统<br>
4. 代码主要组成：<br>
&ensp;&ensp;&ensp;&ensp;&ensp;FindDir() //递归处理目录<br>
&ensp;&ensp;&ensp;&ensp;&ensp;FindFile() //遍历文件并判断每行长度<br>
&ensp;&ensp;&ensp;&ensp;&ensp;pd_dir() //判断是否当前文件包含在前面遍历过的参数内<br>
5. 运行截图：<br>
![image](https://github.com/FuHongbao/Shell-practice/blob/master/longest_str/picture/long01.png)
![image](https://github.com/FuHongbao/Shell-practice/blob/master/longest_str/picture/long02.png)
![image](https://github.com/FuHongbao/Shell-practice/blob/master/longest_str/picture/long03.png)
