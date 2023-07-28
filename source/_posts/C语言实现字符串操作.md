---
title: C语言实现字符串操作
date: 2023-07-27 17:35:36
tags:
---
## 1. 字符串的定义
字符串是由一个或多个字符组成的有限序列，又称为字符串常量。字符串常量是用双引号括起来的字符序列，如"hello"、"C语言"等。字符串常量是一种基本数据类型，它的实质是一维字符数组。字符串常量的长度是字符串中字符的个数加1，即字符串常量的长度等于字符数组的长度加1。例如，字符串常量"hello"的长度是6，字符数组的长度是5。
## 2. 字符串的输入输出
### 2.1 字符串的输入
字符串的输入可以用scanf函数，也可以用gets函数。scanf函数的格式为：
```c
scanf("%s",字符串名);
```
例如：
```c
scanf("%s",str);
```
gets函数的格式为：
```c
gets(字符串名);
```
例如：
```c
gets(str);
```
### 2.2 字符串的输出
字符串的输出可以用printf函数，也可以用puts函数。printf函数的格式为：
```c
printf("%s",字符串名);
```
例如：
```c
printf("%s",str);
```
puts函数的格式为：
```c
puts(字符串名);
```
例如：
```c
puts(str);
```
## 3. 字符串的赋值
字符串的赋值可以用赋值运算符，也可以用strcpy函数。赋值运算符的格式为：
```c
字符串名=字符串;
```
例如：
```c
str="hello";
```
strcpy函数的格式为：
```c
strcpy(字符串名1,字符串名2);
```
例如：
```c
strcpy(str1,str2);
```
## 4. 字符串的连接
字符串的连接可以用strcat函数。strcat函数的格式为：
```c
strcat(字符串名1,字符串名2);
```
例如：
```c
strcat(str1,str2);
```
## 5. 字符串的比较
字符串的比较可以用strcmp函数。strcmp函数的格式为：
```c
strcmp(字符串名1,字符串名2);
```
例如：
```c
strcmp(str1,str2);
```
## 6. 字符串的长度
字符串的长度可以用strlen函数。strlen函数的格式为：
```c
strlen(字符串名);
```
例如：
```c
strlen(str);
```
## 7. 字符串的复制
字符串的复制可以用strncpy函数。strncpy函数的格式为：
```c
strncpy(字符串名1,字符串名2,复制的字符个数);
```
例如：
```c
strncpy(str1,str2,5);
```
## 8. 字符串的查找
字符串的查找可以用strstr函数。strstr函数的格式为：
```c
strstr(字符串名1,字符串名2);
```
例如：
```c
strstr(str1,str2);
```
## 9. 字符串的分割
字符串的分割可以用strtok函数。strtok函数的格式为：
```c
strtok(字符串名1,字符串名2);
```
例如：
```c
strtok(str1,str2);
```
## 10. 字符串的转换
字符串的转换可以用atoi函数、atol函数、atof函数。atoi函数的格式为：
```c
atoi(字符串名);
```
例如：
```c
atoi(str);
```
atol函数的格式为：
```c
atol(字符串名);
```
例如：
```c
atol(str);
```
atof函数的格式为：
```c
atof(字符串名);
```
例如：
```c
atof(str);
```
## 11. 字符串的填充
字符串的填充可以用memset函数。memset函数的格式为：
```c
memset(字符串名,填充的字符,填充的字符个数);
```
例如：
```c
memset(str,'*',5);
```
## 12. 字符串的反转
字符串的反转可以用strrev函数。strrev函数的格式为：
```c
strrev(字符串名);
```
例如：
```c
strrev(str);
```
## 13. 字符串的大小写转换
字符串的大小写转换可以用strupr函数、strlwr函数。strupr函数的格式为：
```c
strupr(字符串名);
```
例如：
```c
strupr(str);
```
strlwr函数的格式为：
```c
strlwr(字符串名);
```
例如：
```c
strlwr(str);
```
## 14. 字符串的排序
字符串的排序可以用strsort函数。strsort函数的格式为：
```c
strsort(字符串名);
```
例如：
```c
strsort(str);
```
## 15. 字符串的插入
字符串的插入可以用strins函数。strins函数的格式为：
```c
strins(字符串名1,字符串名2,插入的位置);
```
例如：
```c
strins(str1,str2,5);
```
## 16. 字符串的删除
字符串的删除可以用strdel函数。strdel函数的格式为：
```c
strdel(字符串名,删除的位置,删除的字符个数);
```
例如：
```c
strdel(str,5,3);
```
## 17. 字符串的替换
字符串的替换可以用strrep函数。strrep函数的格式为：
```c
strrep(字符串名1,字符串名2,替换的位置,替换的字符个数);
```
例如：
```c
strrep(str1,str2,5,3);
```
## 18. 字符串的比较
字符串的比较可以用strcmp函数。strcmp函数的格式为：
```c
strcmp(字符串名1,字符串名2);
```
例如：
```c
strcmp(str1,str2);
```
## 19. 字符串的查找
字符串的查找可以用strstr函数。strstr函数的格式为：
```c
strstr(字符串名1,字符串名2);
```
例如：
```c
strstr(str1,str2);
```
## 20. 字符串的分割
字符串的分割可以用strtok函数。strtok函数的格式为：
```c
strtok(字符串名1,字符串名2);
```
例如：
```c
strtok(str1,str2);
```


