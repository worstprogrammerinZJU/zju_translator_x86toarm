	.file	"1930-unique-length-3-palindromic-subsequences.c"
	.intel_syntax noprefix
	.text
	.globl	countPalindromicSubsequence
	.type	countPalindromicSubsequence, @function
countPalindromicSubsequence:
	endbr64
	push	rbp
	mov	rbp, rsp
	sub	rsp, 384
	mov	QWORD PTR -376[rbp], rdi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	rax, QWORD PTR -376[rbp]
	mov	rdi, rax
	call	strlen@PLT
	mov	DWORD PTR -348[rbp], eax
	mov	DWORD PTR -336[rbp], -1
	mov	DWORD PTR -332[rbp], -1
	mov	DWORD PTR -328[rbp], -1
	mov	DWORD PTR -324[rbp], -1
	mov	DWORD PTR -320[rbp], -1
	mov	DWORD PTR -316[rbp], -1
	mov	DWORD PTR -312[rbp], -1
	mov	DWORD PTR -308[rbp], -1
	mov	DWORD PTR -304[rbp], -1
	mov	DWORD PTR -300[rbp], -1
	mov	DWORD PTR -296[rbp], -1
	mov	DWORD PTR -292[rbp], -1
	mov	DWORD PTR -288[rbp], -1
	mov	DWORD PTR -284[rbp], -1
	mov	DWORD PTR -280[rbp], -1
	mov	DWORD PTR -276[rbp], -1
	mov	DWORD PTR -272[rbp], -1
	mov	DWORD PTR -268[rbp], -1
	mov	DWORD PTR -264[rbp], -1
	mov	DWORD PTR -260[rbp], -1
	mov	DWORD PTR -256[rbp], -1
	mov	DWORD PTR -252[rbp], -1
	mov	DWORD PTR -248[rbp], -1
	mov	DWORD PTR -244[rbp], -1
	mov	DWORD PTR -240[rbp], -1
	mov	DWORD PTR -236[rbp], -1
	mov	DWORD PTR -224[rbp], -1
	mov	DWORD PTR -220[rbp], -1
	mov	DWORD PTR -216[rbp], -1
	mov	DWORD PTR -212[rbp], -1
	mov	DWORD PTR -208[rbp], -1
	mov	DWORD PTR -204[rbp], -1
	mov	DWORD PTR -200[rbp], -1
	mov	DWORD PTR -196[rbp], -1
	mov	DWORD PTR -192[rbp], -1
	mov	DWORD PTR -188[rbp], -1
	mov	DWORD PTR -184[rbp], -1
	mov	DWORD PTR -180[rbp], -1
	mov	DWORD PTR -176[rbp], -1
	mov	DWORD PTR -172[rbp], -1
	mov	DWORD PTR -168[rbp], -1
	mov	DWORD PTR -164[rbp], -1
	mov	DWORD PTR -160[rbp], -1
	mov	DWORD PTR -156[rbp], -1
	mov	DWORD PTR -152[rbp], -1
	mov	DWORD PTR -148[rbp], -1
	mov	DWORD PTR -144[rbp], -1
	mov	DWORD PTR -140[rbp], -1
	mov	DWORD PTR -136[rbp], -1
	mov	DWORD PTR -132[rbp], -1
	mov	DWORD PTR -128[rbp], -1
	mov	DWORD PTR -124[rbp], -1
	mov	DWORD PTR -360[rbp], 0
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -360[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -376[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 97
	mov	DWORD PTR -340[rbp], eax
	mov	eax, DWORD PTR -340[rbp]
	cdqe
	mov	eax, DWORD PTR -336[rbp+rax*4]
	cmp	eax, -1
	jne	.L3
	mov	eax, DWORD PTR -340[rbp]
	cdqe
	mov	edx, DWORD PTR -360[rbp]
	mov	DWORD PTR -336[rbp+rax*4], edx
	jmp	.L4
.L3:
	mov	eax, DWORD PTR -340[rbp]
	cdqe
	mov	edx, DWORD PTR -360[rbp]
	mov	DWORD PTR -224[rbp+rax*4], edx
.L4:
	add	DWORD PTR -360[rbp], 1
.L2:
	mov	eax, DWORD PTR -360[rbp]
	cmp	eax, DWORD PTR -348[rbp]
	jl	.L5
	mov	DWORD PTR -352[rbp], 0
	mov	DWORD PTR -360[rbp], 0
	jmp	.L6
.L11:
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	eax, DWORD PTR -224[rbp+rax*4]
	cmp	eax, -1
	je	.L7
	mov	DWORD PTR -112[rbp], -1
	mov	DWORD PTR -108[rbp], -1
	mov	DWORD PTR -104[rbp], -1
	mov	DWORD PTR -100[rbp], -1
	mov	DWORD PTR -96[rbp], -1
	mov	DWORD PTR -92[rbp], -1
	mov	DWORD PTR -88[rbp], -1
	mov	DWORD PTR -84[rbp], -1
	mov	DWORD PTR -80[rbp], -1
	mov	DWORD PTR -76[rbp], -1
	mov	DWORD PTR -72[rbp], -1
	mov	DWORD PTR -68[rbp], -1
	mov	DWORD PTR -64[rbp], -1
	mov	DWORD PTR -60[rbp], -1
	mov	DWORD PTR -56[rbp], -1
	mov	DWORD PTR -52[rbp], -1
	mov	DWORD PTR -48[rbp], -1
	mov	DWORD PTR -44[rbp], -1
	mov	DWORD PTR -40[rbp], -1
	mov	DWORD PTR -36[rbp], -1
	mov	DWORD PTR -32[rbp], -1
	mov	DWORD PTR -28[rbp], -1
	mov	DWORD PTR -24[rbp], -1
	mov	DWORD PTR -20[rbp], -1
	mov	DWORD PTR -16[rbp], -1
	mov	DWORD PTR -12[rbp], -1
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	eax, DWORD PTR -336[rbp+rax*4]
	add	eax, 1
	mov	DWORD PTR -356[rbp], eax
	jmp	.L8
.L10:
	mov	eax, DWORD PTR -356[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -376[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	sub	eax, 97
	mov	DWORD PTR -344[rbp], eax
	mov	eax, DWORD PTR -344[rbp]
	cdqe
	mov	eax, DWORD PTR -112[rbp+rax*4]
	cmp	eax, -1
	jne	.L9
	mov	eax, DWORD PTR -344[rbp]
	cdqe
	mov	edx, DWORD PTR -356[rbp]
	mov	DWORD PTR -112[rbp+rax*4], edx
	add	DWORD PTR -352[rbp], 1
.L9:
	add	DWORD PTR -356[rbp], 1
.L8:
	mov	eax, DWORD PTR -360[rbp]
	cdqe
	mov	eax, DWORD PTR -224[rbp+rax*4]
	cmp	DWORD PTR -356[rbp], eax
	jl	.L10
.L7:
	add	DWORD PTR -360[rbp], 1
.L6:
	cmp	DWORD PTR -360[rbp], 25
	jle	.L11
	mov	eax, DWORD PTR -352[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	sub	rdx, QWORD PTR fs:40
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	ret
	.size	countPalindromicSubsequence, .-countPalindromicSubsequence
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
