	.text
	.p2align	4, 0x90                         # -- Begin function char_type
char_type:                              # @char_type
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	addl	$-128, %eax
	subl	$2, %eax
	jb	.LBB0_1
	jmp	.LBB0_6
.LBB0_6:
	movl	-16(%rbp), %eax                 # 4-byte Reload
	subl	$130, %eax
	je	.LBB0_3
	jmp	.LBB0_7
.LBB0_7:
	movl	-16(%rbp), %eax                 # 4-byte Reload
	subl	$131, %eax
	je	.LBB0_2
	jmp	.LBB0_4
.LBB0_1:
	movq	type_int(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movq	type_ushort(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_3:
	movq	type_uint(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	type_int
	.p2align	3
type_int:
	.quad	0
	.globl	type_ushort
	.p2align	3
type_ushort:
	.quad	0
	.globl	type_uint
	.p2align	3
type_uint:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"internal error"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym char_type
	.addrsig_sym error
	.addrsig_sym type_int
	.addrsig_sym type_ushort
	.addrsig_sym type_uint