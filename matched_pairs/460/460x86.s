	.text
	.p2align	4, 0x90                         # -- Begin function try_include
try_include:                            # @try_include
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	leaq	.L.str(%rip), %rdi
	callq	format@PLT
	movl	%eax, %edi
	callq	fullpath@PLT
	movq	%rax, -40(%rbp)
	movl	once(%rip), %edi
	movq	-40(%rbp), %rsi
	callq	map_get@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	$1, -4(%rbp)
	jmp	.LBB0_9
.LBB0_2:
	movq	-40(%rbp), %rdi
	callq	guarded@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movl	$1, -4(%rbp)
	jmp	.LBB0_9
.LBB0_4:
	movq	-40(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB0_6
# %bb.5:
	movl	$0, -4(%rbp)
	jmp	.LBB0_9
.LBB0_6:
	cmpl	$0, -28(%rbp)
	je	.LBB0_8
# %bb.7:
	movl	once(%rip), %edi
	movq	-40(%rbp), %rsi
	movl	$1, %edx
	callq	map_put@PLT
.LBB0_8:
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	make_file@PLT
	movl	%eax, %edi
	callq	stream_push@PLT
	movl	$1, -4(%rbp)
.LBB0_9:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s/%s"
	.bss
	.globl	once
	.p2align	2
once:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"r"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym try_include
	.addrsig_sym fullpath
	.addrsig_sym format
	.addrsig_sym map_get
	.addrsig_sym guarded
	.addrsig_sym fopen
	.addrsig_sym map_put
	.addrsig_sym stream_push
	.addrsig_sym make_file
	.addrsig_sym once