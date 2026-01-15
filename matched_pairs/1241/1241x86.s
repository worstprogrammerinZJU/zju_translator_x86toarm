	.text
	.globl	jv_object_iter_next             # -- Begin function jv_object_iter_next
	.p2align	4, 0x90
jv_object_iter_next:                    # @jv_object_iter_next
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-8(%rbp), %edi
	movl	JV_KIND_OBJECT(%rip), %esi
	callq	JVP_HAS_KIND@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movl	-12(%rbp), %eax
	cmpl	ITER_FINISHED(%rip), %eax
	setne	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	jvp_object_size@PLT
	movl	%eax, %ecx
	movl	-28(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jl	.LBB0_3
# %bb.2:
	movl	ITER_FINISHED(%rip), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_6
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	jvp_object_get_slot@PLT
	movq	%rax, -24(%rbp)
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NULL(%rip), %rax
	je	.LBB0_1
# %bb.5:
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	jvp_object_get_slot@PLT
	movl	(%rax), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_6:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_OBJECT
	.p2align	2
JV_KIND_OBJECT:
	.long	0                               # 0x0
	.globl	ITER_FINISHED
	.p2align	2
ITER_FINISHED:
	.long	0                               # 0x0
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.quad	0                               # 0x0
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_object_size
	.addrsig_sym jvp_object_get_slot
	.addrsig_sym jv_get_kind
	.addrsig_sym JV_KIND_OBJECT
	.addrsig_sym ITER_FINISHED
	.addrsig_sym JV_KIND_NULL
	.addrsig_sym JV_KIND_STRING