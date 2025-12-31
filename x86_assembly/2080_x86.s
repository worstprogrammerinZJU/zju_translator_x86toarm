	.file	"2080.c"
	.intel_syntax noprefix
	.text
	.globl	leap
	.type	leap, @function
leap:
	endbr64
	push	rbp
	mov	rbp, rsp
	mov	DWORD PTR -4[rbp], edi
	mov	eax, DWORD PTR -4[rbp]
	and	eax, 3
	test	eax, eax
	jne	.L2
	mov	edx, DWORD PTR -4[rbp]
	movsx	rax, edx
	imul	rax, rax, 1374389535
	shr	rax, 32
	sar	eax, 5
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 100
	mov	eax, edx
	sub	eax, ecx
	test	eax, eax
	jne	.L3
	mov	edx, DWORD PTR -4[rbp]
	movsx	rax, edx
	imul	rax, rax, 1374389535
	shr	rax, 32
	sar	eax, 7
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 400
	mov	eax, edx
	sub	eax, ecx
	test	eax, eax
	jne	.L2
.L3:
	mov	eax, 1
	jmp	.L4
.L2:
	mov	eax, 0
.L4:
	pop	rbp
	ret
	.size	leap, .-leap
	.section	.rodata
.LC0:
	.string	"%d"
.LC1:
	.string	"%d-%s-%s %s\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 336
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -320[rbp], 0
	mov	DWORD PTR -316[rbp], 31
	mov	DWORD PTR -312[rbp], 28
	mov	DWORD PTR -308[rbp], 31
	mov	DWORD PTR -304[rbp], 30
	mov	DWORD PTR -300[rbp], 31
	mov	DWORD PTR -296[rbp], 30
	mov	DWORD PTR -292[rbp], 31
	mov	DWORD PTR -288[rbp], 31
	mov	DWORD PTR -284[rbp], 30
	mov	DWORD PTR -280[rbp], 31
	mov	DWORD PTR -276[rbp], 30
	mov	DWORD PTR -272[rbp], 0
	mov	DWORD PTR -268[rbp], 31
	mov	DWORD PTR -264[rbp], 29
	mov	DWORD PTR -260[rbp], 31
	mov	DWORD PTR -256[rbp], 30
	mov	DWORD PTR -252[rbp], 31
	mov	DWORD PTR -248[rbp], 30
	mov	DWORD PTR -244[rbp], 31
	mov	DWORD PTR -240[rbp], 31
	mov	DWORD PTR -236[rbp], 30
	mov	DWORD PTR -232[rbp], 31
	mov	DWORD PTR -228[rbp], 30
	movabs	rax, 8746382394089824595
	mov	QWORD PTR -128[rbp], rax
	mov	DWORD PTR -120[rbp], 0
	mov	WORD PTR -116[rbp], 0
	mov	BYTE PTR -114[rbp], 0
	movabs	rax, 133459203749203
	mov	QWORD PTR -113[rbp], rax
	mov	DWORD PTR -105[rbp], 0
	mov	WORD PTR -101[rbp], 0
	mov	BYTE PTR -99[rbp], 0
	movabs	rax, 133459203747661
	mov	QWORD PTR -98[rbp], rax
	mov	DWORD PTR -90[rbp], 0
	mov	WORD PTR -86[rbp], 0
	mov	BYTE PTR -84[rbp], 0
	movabs	rax, 34165556242642260
	mov	QWORD PTR -83[rbp], rax
	mov	DWORD PTR -75[rbp], 0
	mov	WORD PTR -71[rbp], 0
	mov	BYTE PTR -69[rbp], 0
	movabs	rax, 7017860998831039831
	mov	QWORD PTR -68[rbp], rax
	mov	DWORD PTR -60[rbp], 121
	mov	WORD PTR -56[rbp], 0
	mov	BYTE PTR -54[rbp], 0
	movabs	rax, 8746382398334527572
	mov	QWORD PTR -53[rbp], rax
	mov	DWORD PTR -45[rbp], 0
	mov	WORD PTR -41[rbp], 0
	mov	BYTE PTR -39[rbp], 0
	movabs	rax, 133459203420742
	mov	QWORD PTR -38[rbp], rax
	mov	DWORD PTR -30[rbp], 0
	mov	WORD PTR -26[rbp], 0
	mov	BYTE PTR -24[rbp], 0
	mov	WORD PTR -224[rbp], 12336
	mov	BYTE PTR -222[rbp], 0
	mov	WORD PTR -221[rbp], 12592
	mov	BYTE PTR -219[rbp], 0
	mov	WORD PTR -218[rbp], 12848
	mov	BYTE PTR -216[rbp], 0
	mov	WORD PTR -215[rbp], 13104
	mov	BYTE PTR -213[rbp], 0
	mov	WORD PTR -212[rbp], 13360
	mov	BYTE PTR -210[rbp], 0
	mov	WORD PTR -209[rbp], 13616
	mov	BYTE PTR -207[rbp], 0
	mov	WORD PTR -206[rbp], 13872
	mov	BYTE PTR -204[rbp], 0
	mov	WORD PTR -203[rbp], 14128
	mov	BYTE PTR -201[rbp], 0
	mov	WORD PTR -200[rbp], 14384
	mov	BYTE PTR -198[rbp], 0
	mov	WORD PTR -197[rbp], 14640
	mov	BYTE PTR -195[rbp], 0
	mov	WORD PTR -194[rbp], 12337
	mov	BYTE PTR -192[rbp], 0
	mov	WORD PTR -191[rbp], 12593
	mov	BYTE PTR -189[rbp], 0
	mov	WORD PTR -188[rbp], 12849
	mov	BYTE PTR -186[rbp], 0
	mov	WORD PTR -185[rbp], 13105
	mov	BYTE PTR -183[rbp], 0
	mov	WORD PTR -182[rbp], 13361
	mov	BYTE PTR -180[rbp], 0
	mov	WORD PTR -179[rbp], 13617
	mov	BYTE PTR -177[rbp], 0
	mov	WORD PTR -176[rbp], 13873
	mov	BYTE PTR -174[rbp], 0
	mov	WORD PTR -173[rbp], 14129
	mov	BYTE PTR -171[rbp], 0
	mov	WORD PTR -170[rbp], 14385
	mov	BYTE PTR -168[rbp], 0
	mov	WORD PTR -167[rbp], 14641
	mov	BYTE PTR -165[rbp], 0
	mov	WORD PTR -164[rbp], 12338
	mov	BYTE PTR -162[rbp], 0
	mov	WORD PTR -161[rbp], 12594
	mov	BYTE PTR -159[rbp], 0
	mov	WORD PTR -158[rbp], 12850
	mov	BYTE PTR -156[rbp], 0
	mov	WORD PTR -155[rbp], 13106
	mov	BYTE PTR -153[rbp], 0
	mov	WORD PTR -152[rbp], 13362
	mov	BYTE PTR -150[rbp], 0
	mov	WORD PTR -149[rbp], 13618
	mov	BYTE PTR -147[rbp], 0
	mov	WORD PTR -146[rbp], 13874
	mov	BYTE PTR -144[rbp], 0
	mov	WORD PTR -143[rbp], 14130
	mov	BYTE PTR -141[rbp], 0
	mov	WORD PTR -140[rbp], 14386
	mov	BYTE PTR -138[rbp], 0
	mov	WORD PTR -137[rbp], 14642
	mov	BYTE PTR -135[rbp], 0
	mov	WORD PTR -134[rbp], 12339
	mov	BYTE PTR -132[rbp], 0
	mov	WORD PTR -131[rbp], 12595
	mov	BYTE PTR -129[rbp], 0
	lea	rax, -336[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
	jmp	.L6
.L20:
	mov	eax, DWORD PTR -336[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, -1840700269
	shr	rdx, 32
	add	edx, eax
	sar	edx, 2
	mov	ecx, eax
	sar	ecx, 31
	sub	edx, ecx
	mov	DWORD PTR -324[rbp], edx
	mov	ecx, DWORD PTR -324[rbp]
	mov	edx, ecx
	sal	edx, 3
	sub	edx, ecx
	sub	eax, edx
	mov	DWORD PTR -324[rbp], eax
	mov	DWORD PTR -332[rbp], 2000
	jmp	.L7
.L8:
	mov	eax, DWORD PTR -332[rbp]
	mov	edi, eax
	call	leap
	lea	edx, 365[rax]
	mov	eax, DWORD PTR -336[rbp]
	sub	eax, edx
	mov	DWORD PTR -336[rbp], eax
	add	DWORD PTR -332[rbp], 1
.L7:
	mov	eax, DWORD PTR -332[rbp]
	mov	edi, eax
	call	leap
	lea	edx, 364[rax]
	mov	eax, DWORD PTR -336[rbp]
	cmp	edx, eax
	jl	.L8
	mov	eax, DWORD PTR -336[rbp]
	add	eax, 1
	mov	DWORD PTR -336[rbp], eax
	mov	eax, DWORD PTR -332[rbp]
	mov	edi, eax
	call	leap
	test	eax, eax
	je	.L9
	mov	DWORD PTR -328[rbp], 1
	jmp	.L10
.L14:
	mov	eax, DWORD PTR -328[rbp]
	cdqe
	mov	edx, DWORD PTR -272[rbp+rax*4]
	mov	eax, DWORD PTR -336[rbp]
	cmp	edx, eax
	jge	.L23
	mov	edx, DWORD PTR -336[rbp]
	mov	eax, DWORD PTR -328[rbp]
	cdqe
	mov	ecx, DWORD PTR -272[rbp+rax*4]
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -336[rbp], eax
	add	DWORD PTR -328[rbp], 1
.L10:
	cmp	DWORD PTR -328[rbp], 11
	jle	.L14
	jmp	.L15
.L9:
	mov	DWORD PTR -328[rbp], 1
	jmp	.L16
.L19:
	mov	eax, DWORD PTR -328[rbp]
	cdqe
	mov	edx, DWORD PTR -320[rbp+rax*4]
	mov	eax, DWORD PTR -336[rbp]
	cmp	edx, eax
	jge	.L24
	mov	edx, DWORD PTR -336[rbp]
	mov	eax, DWORD PTR -328[rbp]
	cdqe
	mov	ecx, DWORD PTR -320[rbp+rax*4]
	mov	eax, edx
	sub	eax, ecx
	mov	DWORD PTR -336[rbp], eax
	add	DWORD PTR -328[rbp], 1
.L16:
	cmp	DWORD PTR -328[rbp], 11
	jle	.L19
	jmp	.L15
.L23:
	nop
	jmp	.L15
.L24:
	nop
.L15:
	lea	rcx, -128[rbp]
	mov	eax, DWORD PTR -324[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	sal	rax, 4
	sub	rax, rdx
	lea	rsi, [rcx+rax]
	mov	eax, DWORD PTR -336[rbp]
	lea	rcx, -224[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	add	rcx, rax
	lea	rdi, -224[rbp]
	mov	eax, DWORD PTR -328[rbp]
	movsx	rdx, eax
	mov	rax, rdx
	add	rax, rax
	add	rax, rdx
	lea	rdx, [rdi+rax]
	mov	eax, DWORD PTR -332[rbp]
	mov	r8, rsi
	mov	esi, eax
	lea	rax, .LC1[rip]
	mov	rdi, rax
	mov	eax, 0
	call	printf@PLT
	lea	rax, -336[rbp]
	mov	rsi, rax
	lea	rax, .LC0[rip]
	mov	rdi, rax
	mov	eax, 0
	call	__isoc99_scanf@PLT
.L6:
	mov	eax, DWORD PTR -336[rbp]
	cmp	eax, -1
	jne	.L20
	mov	eax, 0
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
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
