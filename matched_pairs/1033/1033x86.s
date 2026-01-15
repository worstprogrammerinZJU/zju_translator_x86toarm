	.text
	.p2align	4, 0x90                         # -- Begin function maybe_print_source_line
maybe_print_source_line:                # @maybe_print_source_line
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, dumpsource(%rip)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_11
.LBB0_2:
	movl	source_lines(%rip), %edi
	movq	-8(%rbp), %rsi
	callq	map_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_6
# %bb.3:
	movq	-8(%rbp), %rdi
	callq	read_source_file@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_5
# %bb.4:
	jmp	.LBB0_11
.LBB0_5:
	movl	source_lines(%rip), %edi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	map_put@PLT
.LBB0_6:
	movl	$0, -28(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-40(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_7
.LBB0_10:
	movq	-24(%rbp), %rax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rsi
	leaq	.L.str(%rip), %rdi
	callq	emit_nostack@PLT
.LBB0_11:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	dumpsource
	.p2align	2
dumpsource:
	.long	0                               # 0x0
	.globl	source_lines
	.p2align	2
source_lines:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"# %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_print_source_line
	.addrsig_sym map_get
	.addrsig_sym read_source_file
	.addrsig_sym map_put
	.addrsig_sym emit_nostack
	.addrsig_sym dumpsource
	.addrsig_sym source_lines