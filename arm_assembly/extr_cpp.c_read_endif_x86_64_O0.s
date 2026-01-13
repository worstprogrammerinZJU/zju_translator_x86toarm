	.text
	.p2align	4, 0x90                         # -- Begin function read_endif
read_endif:                             # @read_endif
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	cond_incl_stack(%rip), %edi
	callq	vec_len@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_2:
	movl	cond_incl_stack(%rip), %edi
	callq	vec_pop@PLT
	movq	%rax, -16(%rbp)
	movb	$0, %al
	callq	expect_newline@PLT
	movq	-16(%rbp), %rax
	cmpl	$0, (%rax)
	je	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB0_5
.LBB0_4:
	jmp	.LBB0_7
.LBB0_5:
	movb	$0, %al
	callq	skip_newlines@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB0_7
# %bb.6:
	movl	include_guard(%rip), %edi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %esi
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	callq	map_put@PLT
.LBB0_7:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	cond_incl_stack
	.p2align	2
cond_incl_stack:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stray #endif"
	.bss
	.globl	include_guard
	.p2align	2
include_guard:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_endif
	.addrsig_sym vec_len
	.addrsig_sym errort
	.addrsig_sym vec_pop
	.addrsig_sym expect_newline
	.addrsig_sym skip_newlines
	.addrsig_sym map_put
	.addrsig_sym cond_incl_stack
	.addrsig_sym include_guard