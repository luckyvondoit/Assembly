assume cs:code, ds:data, ss:stack

; 栈段
stack segment
    db 100 dup(0)
stack ends  


; 数据段
data segment 
    db 100 dup(0) 
    string db 'Hello!$'
data ends


; 代码段
code segment
start:
    ; 手动设置ds、ss的值
    mov ax, data
    mov ds, ax
    mov ax, stack
    mov ss, ax  
    
    ; 业务逻辑 
    call print
    
    mov ax, 1122h
    mov bx, 3344h
    add ax, bx  
    
    ; 退出
    mov ax, 4c00h
    int 21h 
    
; 打印字符串    
print:    

    ; ds:dx告知字符串地址    
    mov dx, offset string
    mov ah, 9h
    int 21h
    
    ret 
                
code ends  

end start 

; 函数的要素
; 1.参数
; 2.返回值
; 3.局部变量