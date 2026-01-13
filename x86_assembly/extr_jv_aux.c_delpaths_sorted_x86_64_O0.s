	.text
	.p2align	4, 0x90                         # -- Begin function delpaths_sorted
delpaths_sorted:                        # @delpaths_sorted
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movb	$0, %al
	callq	jv_array@PLT
	movl	%eax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	%eax, %ecx
	movl	-44(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_21
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movl	-20(%rbp), %esi
	callq	jv_array_get@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	cmpl	-12(%rbp), %eax
	setg	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movl	-20(%rbp), %esi
	callq	jv_array_get@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	cmpl	%ecx, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -28(%rbp)
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movl	-20(%rbp), %esi
	callq	jv_array_get@PLT
	movl	%eax, %edi
	movl	-12(%rbp), %esi
	callq	jv_array_get@PLT
	movl	%eax, -32(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_array_length@PLT
	movl	-52(%rbp), %ecx                 # 4-byte Reload
	movl	%eax, %edx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	%edx, %ecx
	movb	%al, -45(%rbp)                  # 1-byte Spill
	jge	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-32(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -56(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movl	-24(%rbp), %esi
	callq	jv_array_get@PLT
	movl	%eax, %edi
	movl	-12(%rbp), %esi
	callq	jv_array_get@PLT
	movl	-56(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_equal@PLT
	cmpq	$0, %rax
	setne	%al
	movb	%al, -45(%rbp)                  # 1-byte Spill
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=2
	movb	-45(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_3
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %edi
	movl	-32(%rbp), %esi
	callq	jv_array_append@PLT
	movl	%eax, -16(%rbp)
	jmp	.LBB0_20
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movl	-32(%rbp), %edi
	callq	jv_copy@PLT
	movl	-60(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_get@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	jne	.LBB0_11
# %bb.10:
	movl	-32(%rbp), %edi
	callq	jv_free@PLT
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_21
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NULL(%rip), %rax
	jne	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %edi
	callq	jv_free@PLT
	movl	-36(%rbp), %edi
	callq	jv_free@PLT
	jmp	.LBB0_16
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	movl	-8(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	jv_array_slice@PLT
	movl	-64(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movl	-12(%rbp), %edx
	addl	$1, %edx
	callq	delpaths_sorted
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	jne	.LBB0_15
# %bb.14:
	movl	-32(%rbp), %edi
	callq	jv_free@PLT
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	-40(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_21
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %edi
	movl	-32(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	jv_set@PLT
	movl	%eax, -4(%rbp)
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	jne	.LBB0_19
# %bb.18:
	jmp	.LBB0_21
.LBB0_19:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_21:
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movl	-4(%rbp), %edi
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_23
# %bb.22:
	movl	-4(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	jv_dels@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_24
.LBB0_23:
	movl	-16(%rbp), %edi
	callq	jv_free@PLT
.LBB0_24:
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym delpaths_sorted
	.addrsig_sym jv_array
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym assert
	.addrsig_sym jv_array_get
	.addrsig_sym jv_equal
	.addrsig_sym jv_array_append
	.addrsig_sym jv_get
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_free
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_array_slice
	.addrsig_sym jv_set
	.addrsig_sym jv_dels
	.addrsig_sym JV_KIND_NULL