	.text
	.p2align	4, 0x90                         # -- Begin function emit_to_bool
emit_to_bool:                           # @emit_to_bool
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	is_flotype@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	$1, %edi
	callq	push_xmm@PLT
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	KIND_FLOAT(%rip), %rdx
	leaq	.L.str.3(%rip), %rsi
	leaq	.L.str.2(%rip), %rax
	cmpq	%rdx, %rcx
	cmoveq	%rax, %rsi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	$1, %edi
	callq	pop_xmm@PLT
	jmp	.LBB0_3
.LBB0_2:
	leaq	.L.str.5(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
.LBB0_3:
	leaq	.L.str.6(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"xorpd #xmm1, #xmm1"
.L.str.1:
	.asciz	"%s #xmm1, #xmm0"
	.bss
	.globl	KIND_FLOAT
	.p2align	3
KIND_FLOAT:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"ucomiss"
.L.str.3:
	.asciz	"ucomisd"
.L.str.4:
	.asciz	"setne #al"
.L.str.5:
	.asciz	"cmp $0, #rax"
.L.str.6:
	.asciz	"movzb #al, #eax"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_to_bool
	.addrsig_sym is_flotype
	.addrsig_sym push_xmm
	.addrsig_sym emit
	.addrsig_sym pop_xmm
	.addrsig_sym SAVE
	.addrsig_sym KIND_FLOAT