	.text
	.globl	gen_const_object                # -- Begin function gen_const_object
	.p2align	4, 0x90
gen_const_object:                       # @gen_const_object
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$1, -36(%rbp)
	movb	$0, %al
	callq	jv_object@PLT
	movl	%eax, -40(%rbp)
	movb	$0, %al
	callq	jv_null@PLT
	movl	%eax, -44(%rbp)
	movb	$0, %al
	callq	jv_null@PLT
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB0_31
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	PUSHK_UNDER(%rip), %rax
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movl	16(%rax), %edi
	callq	jv_copy@PLT
	movl	%eax, -44(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_12
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	SUBEXP_BEGIN(%rip), %rax
	jne	.LBB0_9
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_9
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	LOADK(%rip), %rax
	jne	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	SUBEXP_END(%rip), %rax
	je	.LBB0_10
.LBB0_9:
	movl	$0, -36(%rbp)
	jmp	.LBB0_31
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	16(%rax), %edi
	callq	jv_copy@PLT
	movl	%eax, -44(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB0_15
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	PUSHK_UNDER(%rip), %rax
	jne	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movl	16(%rax), %edi
	callq	jv_copy@PLT
	movl	%eax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_24
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB0_21
# %bb.16:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	SUBEXP_BEGIN(%rip), %rax
	jne	.LBB0_21
# %bb.17:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	LOADK(%rip), %rax
	jne	.LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	SUBEXP_END(%rip), %rax
	je	.LBB0_22
.LBB0_21:
	movl	$0, -36(%rbp)
	jmp	.LBB0_31
.LBB0_22:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movl	16(%rax), %edi
	callq	jv_copy@PLT
	movl	%eax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
# %bb.23:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_24
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	INSERT(%rip), %rax
	je	.LBB0_27
.LBB0_26:
	movl	$0, -36(%rbp)
	jmp	.LBB0_31
.LBB0_27:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	je	.LBB0_29
# %bb.28:
	movl	$0, -36(%rbp)
	jmp	.LBB0_31
.LBB0_29:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	jv_object_set@PLT
	movl	%eax, -40(%rbp)
	movb	$0, %al
	callq	jv_null@PLT
	movl	%eax, -44(%rbp)
	movb	$0, %al
	callq	jv_null@PLT
	movl	%eax, -48(%rbp)
# %bb.30:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_1
.LBB0_31:
	cmpl	$0, -36(%rbp)
	jne	.LBB0_33
# %bb.32:
	movl	-40(%rbp), %edi
	callq	jv_free@PLT
	movl	-44(%rbp), %edi
	callq	jv_free@PLT
	movl	-48(%rbp), %edi
	callq	jv_free@PLT
	leaq	-16(%rbp), %rdi
	xorl	%esi, %esi
	movl	$16, %edx
	callq	memset@PLT
	jmp	.LBB0_34
.LBB0_33:
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	block_free@PLT
	movl	-40(%rbp), %edi
	callq	gen_const@PLT
	movq	%rax, -16(%rbp)
	movq	%rdx, -8(%rbp)
.LBB0_34:
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	PUSHK_UNDER
	.p2align	3
PUSHK_UNDER:
	.quad	0                               # 0x0
	.globl	SUBEXP_BEGIN
	.p2align	3
SUBEXP_BEGIN:
	.quad	0                               # 0x0
	.globl	LOADK
	.p2align	3
LOADK:
	.quad	0                               # 0x0
	.globl	SUBEXP_END
	.p2align	3
SUBEXP_END:
	.quad	0                               # 0x0
	.globl	INSERT
	.p2align	3
INSERT:
	.quad	0                               # 0x0
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_object
	.addrsig_sym jv_null
	.addrsig_sym jv_copy
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_object_set
	.addrsig_sym jv_free
	.addrsig_sym block_free
	.addrsig_sym gen_const
	.addrsig_sym PUSHK_UNDER
	.addrsig_sym SUBEXP_BEGIN
	.addrsig_sym LOADK
	.addrsig_sym SUBEXP_END
	.addrsig_sym INSERT
	.addrsig_sym JV_KIND_STRING