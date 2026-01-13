	.text
	.p2align	4, 0x90                         # -- Begin function read_rectype_fields_sub
read_rectype_fields_sub:                # @read_rectype_fields_sub
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -8(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	movsbl	KSTATIC_ASSERT(%rip), %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	read_static_assert@PLT
	jmp	.LBB0_1
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, %edi
	callq	is_type@PLT
	cmpl	$0, %eax
	jne	.LBB0_5
# %bb.4:
	jmp	.LBB0_19
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	read_decl_spec@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_STRUCT(%rip), %rax
	jne	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$59, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	make_pair@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
	jmp	.LBB0_1
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	DECL_PARAM_TYPEONLY(%rip), %ecx
	leaq	-24(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	read_declarator@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	ensure_not_void@PLT
	movq	-32(%rbp), %rdi
	callq	copy_type@PLT
	movq	%rax, -32(%rbp)
	movl	$58, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	read_bitsize@PLT
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	jmp	.LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=2
	movl	$4294967295, %eax               # imm = 0xFFFFFFFF
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=2
	movl	-44(%rbp), %ecx                 # 4-byte Reload
	movq	-32(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	make_pair@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
	movl	$44, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=2
	jmp	.LBB0_9
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, %edi
	movl	$125, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, %edi
	leaq	.L.str(%rip), %rsi
	callq	warnt@PLT
	jmp	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	movl	$59, %edi
	callq	expect@PLT
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_19:
	movl	$125, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KSTATIC_ASSERT
KSTATIC_ASSERT:
	.byte	0                               # 0x0
	.globl	KIND_STRUCT
	.p2align	3
KIND_STRUCT:
	.quad	0                               # 0x0
	.globl	DECL_PARAM_TYPEONLY
	.p2align	2
DECL_PARAM_TYPEONLY:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"missing ';' at the end of field list"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_rectype_fields_sub
	.addrsig_sym make_vector
	.addrsig_sym next_token
	.addrsig_sym read_static_assert
	.addrsig_sym is_type
	.addrsig_sym peek
	.addrsig_sym read_decl_spec
	.addrsig_sym vec_push
	.addrsig_sym make_pair
	.addrsig_sym read_declarator
	.addrsig_sym ensure_not_void
	.addrsig_sym copy_type
	.addrsig_sym read_bitsize
	.addrsig_sym is_keyword
	.addrsig_sym warnt
	.addrsig_sym expect
	.addrsig_sym KSTATIC_ASSERT
	.addrsig_sym KIND_STRUCT
	.addrsig_sym DECL_PARAM_TYPEONLY