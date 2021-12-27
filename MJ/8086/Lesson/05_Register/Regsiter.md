## CPU的典型构成

![image-20211202201651740](images/image-20211202201651740.png)

![image-20211202201712762](images/image-20211202201712762.png)

## 通用寄存器

![image-20211202201851873](images/image-20211202201851873.png)

![image-20211202201909515](images/image-20211202201909515.png)

![image-20211202201942257](images/image-20211202201942257.png)

## 字节与字

![image-20211202202008028](images/image-20211202202008028.png)

## 段寄存器

![image-20211202202055448](images/image-20211202202055448.png)

## 标志寄存器

### JCC指令

![image-20211204105426039](images/image-20211204105426039.png)

```assembly
assume cs:code, ds:data, ss:stack

; 栈段
stack segment
    db 100 dup(0)
stack ends  

; 数据段
data segment  
    db 100 dup(0) 
data ends

; 代码段
code segment
start:
    ; 手动设置ds、ss的值
    mov ax, data
    mov ds, ax
    mov ax, stack
    mov ss, ax 
    
    
    mov ax, 11
    mov bx, 11
    sub ax, bx
    
    ; 退出
    mov ax, 4c00h
    int 21h 
                
code ends  

end start
```

