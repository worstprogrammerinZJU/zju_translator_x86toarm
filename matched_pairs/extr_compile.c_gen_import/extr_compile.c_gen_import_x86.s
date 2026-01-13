	.text
	.globl	gen_import                      # -- Begin function gen_import
	.p2align	4, 0x90
gen_import:                             # @gen_import
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	DEPS(%rip), %edi
	callq	inst_new@PLT
	movq	%rax, -32(%rbp)
	movb	$0, %al
	callq	jv_object@PLT
	movl	%eax, -36(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# %bb.1:
	movl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rdi
	callq	jv_string@PLT
	movl	-44(%rbp), %edi                 # 4-byte Reload
	movl	-40(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	jv_object_set@PLT
	movl	%eax, -36(%rbp)
.LBB0_2:
	movl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	leaq	.L.str.1(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	cmpl	$0, -20(%rbp)
	je	.LBB0_4
# %bb.3:
	movb	$0, %al
	callq	jv_true@PLT
	movl	%eax, -56(%rbp)                 # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:
	movb	$0, %al
	callq	jv_false@PLT
	movl	%eax, -56(%rbp)                 # 4-byte Spill
.LBB0_5:
	movl	-48(%rbp), %esi                 # 4-byte Reload
	movl	-52(%rbp), %edi                 # 4-byte Reload
	movl	-56(%rbp), %edx                 # 4-byte Reload
	callq	jv_object_set@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	leaq	.L.str.2(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	jv_string@PLT
	movl	-64(%rbp), %edi                 # 4-byte Reload
	movl	-60(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	jv_object_set@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rdi
	callq	inst_block@PLT
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DEPS
	.p2align	2
DEPS:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"as"
.L.str.1:
	.asciz	"is_data"
.L.str.2:
	.asciz	"relpath"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_new
	.addrsig_sym jv_object
	.addrsig_sym jv_object_set
	.addrsig_sym jv_string
	.addrsig_sym jv_true
	.addrsig_sym jv_false
	.addrsig_sym inst_block
	.addrsig_sym DEPS