	.text
	.p2align	4, 0x90                         # -- Begin function f_isnormal
f_isnormal:                             # @f_isnormal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	JV_KIND_NUMBER(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_false@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	movl	-20(%rbp), %edi
	callq	jv_number_value@PLT
	movsd	%xmm0, -40(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movsd	-40(%rbp), %xmm0                # xmm0 = mem[0],zero
	callq	isnormal@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movb	$0, %al
	callq	jv_true@PLT
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:
	movb	$0, %al
	callq	jv_false@PLT
	movl	%eax, -44(%rbp)                 # 4-byte Spill
.LBB0_5:
	movl	-44(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -4(%rbp)
.LBB0_6:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_isnormal
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_free
	.addrsig_sym jv_false
	.addrsig_sym jv_number_value
	.addrsig_sym isnormal
	.addrsig_sym jv_true
	.addrsig_sym JV_KIND_NUMBER