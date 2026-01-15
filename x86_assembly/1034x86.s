	.text
	.p2align	4, 0x90                         # -- Begin function maybe_print_source_loc
maybe_print_source_loc:                 # @maybe_print_source_loc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_2
# %bb.1:
	jmp	.LBB0_7
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	source_files(%rip), %edi
	movq	-16(%rbp), %rsi
	callq	map_get@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_4
# %bb.3:
	movl	source_files(%rip), %edi
	callq	map_len@PLT
	addl	$1, %eax
	cltq
	movq	%rax, -24(%rbp)
	movl	source_files(%rip), %edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	map_put@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	quote_cstring@PLT
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
.LBB0_4:
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %edx
	leaq	.L.str.1(%rip), %rdi
	callq	format@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	last_loc(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	movq	-32(%rbp), %rsi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %esi
	callq	maybe_print_source_line@PLT
.LBB0_6:
	movq	-32(%rbp), %rax
	movq	%rax, last_loc(%rip)
.LBB0_7:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	source_files
	.p2align	2
source_files:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".file %ld \"%s\""
.L.str.1:
	.asciz	".loc %ld %d 0"
	.bss
	.globl	last_loc
	.p2align	3
last_loc:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_print_source_loc
	.addrsig_sym map_get
	.addrsig_sym map_len
	.addrsig_sym map_put
	.addrsig_sym emit
	.addrsig_sym quote_cstring
	.addrsig_sym format
	.addrsig_sym strcmp
	.addrsig_sym maybe_print_source_line
	.addrsig_sym source_files
	.addrsig_sym last_loc