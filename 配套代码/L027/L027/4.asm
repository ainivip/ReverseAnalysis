; Listing generated by Microsoft (R) Optimizing Compiler Version 19.24.28117.0 

include listing.inc

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

CONST	SEGMENT
$SG5092	DB	'f1(%d)', 0aH, 00H
$SG5101	DB	'Hello World!', 0aH, 00H
CONST	ENDS
PUBLIC	__local_stdio_printf_options
PUBLIC	_vfprintf_l
PUBLIC	printf
PUBLIC	?f1@@YAXH@Z					; f1
PUBLIC	?f2@@YAHXZ					; f2
PUBLIC	main
PUBLIC	?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
EXTRN	__acrt_iob_func:PROC
EXTRN	__stdio_common_vfprintf:PROC
;	COMDAT ?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA
_BSS	SEGMENT
?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA DQ 01H DUP (?) ; `__local_stdio_printf_options'::`2'::_OptionsStorage
_BSS	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$_vfprintf_l DD imagerel $LN3
	DD	imagerel $LN3+67
	DD	imagerel $unwind$_vfprintf_l
pdata	ENDS
;	COMDAT pdata
pdata	SEGMENT
$pdata$printf DD imagerel $LN3
	DD	imagerel $LN3+87
	DD	imagerel $unwind$printf
pdata	ENDS
pdata	SEGMENT
$pdata$?f1@@YAXH@Z DD imagerel $LN3
	DD	imagerel $LN3+29
	DD	imagerel $unwind$?f1@@YAXH@Z
$pdata$?f2@@YAHXZ DD imagerel $LN6
	DD	imagerel $LN6+57
	DD	imagerel $unwind$?f2@@YAHXZ
$pdata$main DD	imagerel $LN3
	DD	imagerel $LN3+28
	DD	imagerel $unwind$main
pdata	ENDS
xdata	SEGMENT
$unwind$?f1@@YAXH@Z DD 010801H
	DD	04208H
$unwind$?f2@@YAHXZ DD 010401H
	DD	06204H
$unwind$main DD	010401H
	DD	04204H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$printf DD 011801H
	DD	06218H
xdata	ENDS
;	COMDAT xdata
xdata	SEGMENT
$unwind$_vfprintf_l DD 011801H
	DD	06218H
xdata	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
main	PROC
; File C:\Users\libit\source\repos\L027\L027\L027.cpp
; Line 24
$LN3:
	sub	rsp, 40					; 00000028H
; Line 25
	lea	rcx, OFFSET FLAT:$SG5101
	call	printf
; Line 26
	call	?f2@@YAHXZ				; f2
; Line 27
	xor	eax, eax
	add	rsp, 40					; 00000028H
	ret	0
main	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
i$ = 32
?f2@@YAHXZ PROC						; f2
; File C:\Users\libit\source\repos\L027\L027\L027.cpp
; Line 12
$LN6:
	sub	rsp, 56					; 00000038H
; Line 13
	mov	DWORD PTR i$[rsp], 0
; Line 14
	mov	DWORD PTR i$[rsp], 2
	jmp	SHORT $LN4@f2
$LN2@f2:
	mov	eax, DWORD PTR i$[rsp]
	inc	eax
	mov	DWORD PTR i$[rsp], eax
$LN4@f2:
	cmp	DWORD PTR i$[rsp], 1
	jge	SHORT $LN3@f2
; Line 16
	mov	ecx, DWORD PTR i$[rsp]
	call	?f1@@YAXH@Z				; f1
; Line 17
	jmp	SHORT $LN2@f2
$LN3@f2:
; Line 19
	xor	eax, eax
; Line 20
	add	rsp, 56					; 00000038H
	ret	0
?f2@@YAHXZ ENDP						; f2
_TEXT	ENDS
; Function compile flags: /Odtp
_TEXT	SEGMENT
i$ = 48
?f1@@YAXH@Z PROC					; f1
; File C:\Users\libit\source\repos\L027\L027\L027.cpp
; Line 7
$LN3:
	mov	DWORD PTR [rsp+8], ecx
	sub	rsp, 40					; 00000028H
; Line 8
	mov	edx, DWORD PTR i$[rsp]
	lea	rcx, OFFSET FLAT:$SG5092
	call	printf
; Line 9
	add	rsp, 40					; 00000028H
	ret	0
?f1@@YAXH@Z ENDP					; f1
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT printf
_TEXT	SEGMENT
_Result$ = 32
_ArgList$ = 40
_Format$ = 64
printf	PROC						; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\stdio.h
; Line 954
$LN3:
	mov	QWORD PTR [rsp+8], rcx
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+32], r9
	sub	rsp, 56					; 00000038H
; Line 957
	lea	rax, QWORD PTR _Format$[rsp+8]
	mov	QWORD PTR _ArgList$[rsp], rax
; Line 958
	mov	ecx, 1
	call	__acrt_iob_func
	mov	r9, QWORD PTR _ArgList$[rsp]
	xor	r8d, r8d
	mov	rdx, QWORD PTR _Format$[rsp]
	mov	rcx, rax
	call	_vfprintf_l
	mov	DWORD PTR _Result$[rsp], eax
; Line 959
	mov	QWORD PTR _ArgList$[rsp], 0
; Line 960
	mov	eax, DWORD PTR _Result$[rsp]
; Line 961
	add	rsp, 56					; 00000038H
	ret	0
printf	ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT _vfprintf_l
_TEXT	SEGMENT
_Stream$ = 64
_Format$ = 72
_Locale$ = 80
_ArgList$ = 88
_vfprintf_l PROC					; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\stdio.h
; Line 642
$LN3:
	mov	QWORD PTR [rsp+32], r9
	mov	QWORD PTR [rsp+24], r8
	mov	QWORD PTR [rsp+16], rdx
	mov	QWORD PTR [rsp+8], rcx
	sub	rsp, 56					; 00000038H
; Line 643
	call	__local_stdio_printf_options
	mov	rcx, QWORD PTR _ArgList$[rsp]
	mov	QWORD PTR [rsp+32], rcx
	mov	r9, QWORD PTR _Locale$[rsp]
	mov	r8, QWORD PTR _Format$[rsp]
	mov	rdx, QWORD PTR _Stream$[rsp]
	mov	rcx, QWORD PTR [rax]
	call	__stdio_common_vfprintf
; Line 644
	add	rsp, 56					; 00000038H
	ret	0
_vfprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Odtp
;	COMDAT __local_stdio_printf_options
_TEXT	SEGMENT
__local_stdio_printf_options PROC			; COMDAT
; File C:\Program Files (x86)\Windows Kits\10\include\10.0.17763.0\ucrt\corecrt_stdio_config.h
; Line 88
	lea	rax, OFFSET FLAT:?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA ; `__local_stdio_printf_options'::`2'::_OptionsStorage
; Line 89
	ret	0
__local_stdio_printf_options ENDP
_TEXT	ENDS
END
