	.file	"1008.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d\n"
.LC2:
	.string	"%d. %s %d"
.LC3:
	.string	"%d %s %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 384
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -352[rbp], 7368560
	mov	WORD PTR -348[rbp], 0
	mov	BYTE PTR -346[rbp], 0
	mov	DWORD PTR -345[rbp], 28526
	mov	WORD PTR -341[rbp], 0
	mov	BYTE PTR -339[rbp], 0
	mov	DWORD PTR -338[rbp], 7367034
	mov	WORD PTR -334[rbp], 0
	mov	BYTE PTR -332[rbp], 0
	mov	DWORD PTR -331[rbp], 2054451066
	mov	WORD PTR -327[rbp], 0
	mov	BYTE PTR -325[rbp], 0
	mov	DWORD PTR -324[rbp], 1667594868
	mov	WORD PTR -320[rbp], 0
	mov	BYTE PTR -318[rbp], 0
	mov	DWORD PTR -317[rbp], 7107960
	mov	WORD PTR -313[rbp], 0
	mov	BYTE PTR -311[rbp], 0
	mov	DWORD PTR -310[rbp], 1803054969
	mov	WORD PTR -306[rbp], 28265
	mov	BYTE PTR -304[rbp], 0
	mov	DWORD PTR -303[rbp], 7106413
	mov	WORD PTR -299[rbp], 0
	mov	BYTE PTR -297[rbp], 0
	mov	DWORD PTR -296[rbp], 1852139619
	mov	WORD PTR -292[rbp], 0
	mov	BYTE PTR -290[rbp], 0
	mov	DWORD PTR -289[rbp], 7889273
	mov	WORD PTR -285[rbp], 0
	mov	BYTE PTR -283[rbp], 0
	mov	DWORD PTR -282[rbp], 6513018
	mov	WORD PTR -278[rbp], 0
	mov	BYTE PTR -276[rbp], 0
	mov	DWORD PTR -275[rbp], 6841699
	mov	WORD PTR -271[rbp], 0
	mov	BYTE PTR -269[rbp], 0
	mov	DWORD PTR -268[rbp], 6513005
	mov	WORD PTR -264[rbp], 0
	mov	BYTE PTR -262[rbp], 0
	mov	DWORD PTR -261[rbp], 1802396011
	mov	WORD PTR -257[rbp], 28265
	mov	BYTE PTR -255[rbp], 0
	mov	DWORD PTR -254[rbp], 1851880813
	mov	WORD PTR -250[rbp], 0
	mov	BYTE PTR -248[rbp], 0
	mov	DWORD PTR -247[rbp], 7889264
	mov	WORD PTR -243[rbp], 0
	mov	BYTE PTR -241[rbp], 0
	mov	DWORD PTR -240[rbp], 1635348331
	mov	WORD PTR -236[rbp], 98
	mov	BYTE PTR -234[rbp], 0
	mov	DWORD PTR -233[rbp], 1752003939
	mov	WORD PTR -229[rbp], 117
	mov	BYTE PTR -227[rbp], 0
	mov	DWORD PTR -226[rbp], 1702453621
	mov	WORD PTR -222[rbp], 116
	mov	BYTE PTR -220[rbp], 0
	mov	QWORD PTR -208[rbp], 2020175209
	mov	BYTE PTR -200[rbp], 0
	mov	QWORD PTR -199[rbp], 27497
	mov	BYTE PTR -191[rbp], 0
	movabs	rax, 465490307937
	mov	QWORD PTR -190[rbp], rax
	mov	BYTE PTR -182[rbp], 0
	mov	QWORD PTR -181[rbp], 7233899
	mov	BYTE PTR -173[rbp], 0
	movabs	rax, 7953753192991909987
	mov	QWORD PTR -172[rbp], rax
	mov	BYTE PTR -164[rbp], 0
	mov	QWORD PTR -163[rbp], 1768778083
	mov	BYTE PTR -155[rbp], 0
	movabs	rax, 461330342253
	mov	QWORD PTR -154[rbp], rax
	mov	BYTE PTR -146[rbp], 0
	movabs	rax, 499850764652
	mov	QWORD PTR -145[rbp], rax
	mov	BYTE PTR -137[rbp], 0
	movabs	rax, 461531542893
	mov	QWORD PTR -136[rbp], rax
	mov	BYTE PTR -128[rbp], 0
	mov	QWORD PTR -127[rbp], 27503
	mov	BYTE PTR -119[rbp], 0
	movabs	rax, 474148595811
	mov	QWORD PTR -118[rbp], rax
	mov	BYTE PTR -110[rbp], 0
	mov	QWORD PTR -109[rbp], 25189
	mov	BYTE PTR -101[rbp], 0
	mov	QWORD PTR -100[rbp], 7234914
	mov	BYTE PTR -92[rbp], 0
	mov	QWORD PTR -91[rbp], 30825
	mov	BYTE PTR -83[rbp], 0
	mov	QWORD PTR -82[rbp], 7169389
	mov	BYTE PTR -74[rbp], 0
	mov	QWORD PTR -73[rbp], 6449507
	mov	BYTE PTR -65[rbp], 0
	movabs	rax, 474080239971
	mov	QWORD PTR -64[rbp], rax
	mov	BYTE PTR -56[rbp], 0
	movabs	rax, 422541425253
	mov	QWORD PTR -55[rbp], rax
	mov	BYTE PTR -47[rbp], 0
	movabs	rax, 426836386147
	mov	QWORD PTR -46[rbp], rax
	mov	BYTE PTR -38[rbp], 0
	mov	QWORD PTR -37[rbp], 1969317985
	mov	BYTE PTR -29[rbp], 0
	lea	rax, -376[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	eax, DWORD PTR -376[rbp]
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -364[rbp], 0
	jmp	.L2
.L7:
	lea	rcx, -368[rbp]
	lea	rdx, -15[rbp]
	lea	rax, -372[rbp]
	mov	rsi, rax
	lea	rax, .LC2[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	mov	DWORD PTR -360[rbp], 0
	jmp	.L3
.L6:
	lea	rcx, -352[rbp]
	mov	eax, DWORD PTR -360[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 3
	sub	rax, rdx
	lea	rdx, [rcx+rax]
	lea	rax, -15[rbp]
	mov	rsi, rax
	mov	rdi, rdx
	call	strcmp@PLT
	test	eax, eax
	je	.L10
	add	DWORD PTR -360[rbp], 1
.L3:
	cmp	DWORD PTR -360[rbp], 18
	jle	.L6
	jmp	.L5
.L10:
	nop
.L5:
	mov	eax, DWORD PTR -368[rbp]
	imul	ecx, eax, 365
	mov	edx, DWORD PTR -360[rbp]
	mov	eax, edx
	sal	eax, 2
	add	eax, edx
	sal	eax, 2
	lea	edx, [rcx+rax]
	mov	eax, DWORD PTR -372[rbp]
	add	eax, edx
	mov	DWORD PTR -356[rbp], eax
	mov	eax, DWORD PTR -356[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, 2114445439
	shr	rdx, 32
	sar	edx, 7
	sar	eax, 31
	mov	ecx, eax
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -368[rbp], eax
	mov	eax, DWORD PTR -368[rbp]
	imul	eax, eax, -260
	add	DWORD PTR -356[rbp], eax
	mov	edx, DWORD PTR -356[rbp]
	movsx	rax, edx
	imul	rax, rax, 1717986919
	shr	rax, 32
	sar	eax, 3
	mov	esi, edx
	sar	esi, 31
	sub	eax, esi
	mov	ecx, eax
	mov	eax, ecx
	sal	eax, 2
	add	eax, ecx
	sal	eax, 2
	sub	edx, eax
	mov	DWORD PTR -360[rbp], edx
	mov	ecx, DWORD PTR -356[rbp]
	movsx	rax, ecx
	imul	rax, rax, 1321528399
	shr	rax, 32
	sar	eax, 2
	mov	esi, ecx
	sar	esi, 31
	sub	eax, esi
	mov	edx, eax
	mov	eax, edx
	add	eax, eax
	add	eax, edx
	sal	eax, 2
	add	eax, edx
	sub	ecx, eax
	mov	edx, ecx
	lea	eax, 1[rdx]
	mov	DWORD PTR -372[rbp], eax
	mov	edx, DWORD PTR -368[rbp]
	lea	rsi, -208[rbp]
	mov	eax, DWORD PTR -360[rbp]
	movsx	rcx, eax
	mov	rax, rcx
	sal	rax, 3
	add	rax, rcx
	add	rsi, rax
	mov	eax, DWORD PTR -372[rbp]
	mov	ecx, edx
	mov	rdx, rsi
	mov	esi, eax
	lea	rax, .LC3[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -364[rbp], 1
.L2:
	mov	eax, DWORD PTR -376[rbp]
	cmp	DWORD PTR -364[rbp], eax
	jl	.L7
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04.2) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
