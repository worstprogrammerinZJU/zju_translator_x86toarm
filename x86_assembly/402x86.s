	.text
	.p2align	4, 0x90                         # -- Begin function guarded
guarded:                                # @guarded
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	include_guard(%rip), %edi
	movq	-8(%rbp), %rsi
	callq	map_get@PLT
	movq	%rax, -16(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -16(%rbp)
	movb	%al, -21(%rbp)                  # 1-byte Spill
	je	.LBB0_2
# %bb.1:
	movl	macros(%rip), %edi
	movq	-16(%rbp), %rsi
	callq	map_get@PLT
	cmpq	$0, %rax
	setne	%al
	movb	%al, -21(%rbp)                  # 1-byte Spill
.LBB0_2:
	movb	-21(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB0_4
# %bb.3:
	movl	cpp_token_one(%rip), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:
	movl	cpp_token_zero(%rip), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
.LBB0_5:
	movl	-28(%rbp), %esi                 # 4-byte Reload
	leaq	.L.str(%rip), %rdi
	callq	define_obj_macro@PLT
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	include_guard
	.p2align	2
include_guard:
	.long	0                               # 0x0
	.globl	macros
	.p2align	2
macros:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"__8cc_include_guard"
	.bss
	.globl	cpp_token_one
	.p2align	2
cpp_token_one:
	.long	0                               # 0x0
	.globl	cpp_token_zero
	.p2align	2
cpp_token_zero:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym guarded
	.addrsig_sym map_get
	.addrsig_sym define_obj_macro
	.addrsig_sym include_guard
	.addrsig_sym macros
	.addrsig_sym cpp_token_one
	.addrsig_sym cpp_token_zero