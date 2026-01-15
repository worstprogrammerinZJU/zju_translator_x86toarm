	.text
	.globl	jv_show                         # -- Begin function jv_show
	.p2align	4, 0x90
jv_show:                                # @jv_show
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$-1, -8(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	JV_PRINT_PRETTY(%rip), %eax
	orl	JV_PRINT_COLOR(%rip), %eax
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movl	$2, %edi
	callq	JV_PRINT_INDENT_FLAGS@PLT
	movl	%eax, %ecx
	movl	-12(%rbp), %eax                 # 4-byte Reload
	orl	%ecx, %eax
	movl	%eax, -8(%rbp)
.LBB0_2:
	movl	-4(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movl	stderr(%rip), %esi
	movl	-8(%rbp), %edx
	orl	JV_PRINT_INVALID(%rip), %edx
	callq	jv_dumpf@PLT
	movl	stderr(%rip), %edi
	callq	fflush@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_PRINT_PRETTY
	.p2align	2
JV_PRINT_PRETTY:
	.long	0                               # 0x0
	.globl	JV_PRINT_COLOR
	.p2align	2
JV_PRINT_COLOR:
	.long	0                               # 0x0
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.globl	JV_PRINT_INVALID
	.p2align	2
JV_PRINT_INVALID:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JV_PRINT_INDENT_FLAGS
	.addrsig_sym jv_dumpf
	.addrsig_sym jv_copy
	.addrsig_sym fflush
	.addrsig_sym JV_PRINT_PRETTY
	.addrsig_sym JV_PRINT_COLOR
	.addrsig_sym stderr
	.addrsig_sym JV_PRINT_INVALID