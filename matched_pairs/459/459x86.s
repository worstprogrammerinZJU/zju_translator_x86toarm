	.text
	.p2align	4, 0x90                         # -- Begin function subst
subst:                                  # @subst
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	vec_len@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_21 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_41
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	-40(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, -48(%rbp)
	movl	-40(%rbp), %eax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	-40(%rbp), %esi
	addl	$1, %esi
	callq	vec_get@PLT
	movq	%rax, -104(%rbp)                # 8-byte Spill
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TMACRO_PARAM(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -60(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, -56(%rbp)
	movb	%al, -105(%rbp)                 # 1-byte Spill
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TMACRO_PARAM(%rip), %rax
	sete	%al
	movb	%al, -105(%rbp)                 # 1-byte Spill
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-105(%rbp), %al                 # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -64(%rbp)
	movq	-48(%rbp), %rdi
	movl	$35, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -64(%rbp)
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	movl	8(%rax), %esi
	callq	vec_get@PLT
	movq	-128(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	stringize@PLT
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_40
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rdi
	movsbl	KHASHHASH(%rip), %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_27
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -64(%rbp)
	je	.LBB0_27
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	movl	8(%rax), %esi
	callq	vec_get@PLT
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB0_19
# %bb.13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	vec_len@PLT
	cmpq	$0, %rax
	jle	.LBB0_19
# %bb.14:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	vec_tail@PLT
	movq	%rax, %rdi
	movl	$44, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_19
# %bb.15:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rdi
	callq	vec_len@PLT
	cmpq	$0, %rax
	jle	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	vec_append@PLT
	jmp	.LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	callq	vec_pop@PLT
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_26
.LBB0_19:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rdi
	callq	vec_len@PLT
	cmpq	$0, %rax
	jle	.LBB0_25
# %bb.20:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	movq	-72(%rbp), %rdi
	callq	vec_head@PLT
	movq	-136(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	glue_push@PLT
	movl	$1, -76(%rbp)
.LBB0_21:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-76(%rbp), %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	movq	-72(%rbp), %rdi
	callq	vec_len@PLT
	movq	%rax, %rcx
	movq	-144(%rbp), %rax                # 8-byte Reload
	cmpq	%rcx, %rax
	jge	.LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	movq	-72(%rbp), %rdi
	movl	-76(%rbp), %esi
	callq	vec_get@PLT
	movq	-152(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_push@PLT
# %bb.23:                               #   in Loop: Header=BB0_21 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB0_21
.LBB0_24:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_25
.LBB0_25:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_26
.LBB0_26:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_40
.LBB0_27:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rdi
	movsbl	KHASHHASH(%rip), %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	glue_push@PLT
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_40
.LBB0_30:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB0_37
# %bb.31:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB0_37
# %bb.32:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rdi
	movsbl	KHASHHASH(%rip), %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_37
# %bb.33:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	8(%rax), %esi
	callq	vec_get@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	vec_len@PLT
	cmpq	$0, %rax
	jne	.LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	vec_append@PLT
.LBB0_36:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_40
.LBB0_37:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -60(%rbp)
	je	.LBB0_39
# %bb.38:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	8(%rax), %esi
	callq	vec_get@PLT
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)                # 8-byte Spill
	movq	-96(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	expand_all@PLT
	movq	-160(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	vec_append@PLT
	jmp	.LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	vec_push@PLT
.LBB0_40:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_1
.LBB0_41:
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	add_hide_set@PLT
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TMACRO_PARAM
	.p2align	3
TMACRO_PARAM:
	.quad	0                               # 0x0
	.globl	KHASHHASH
KHASHHASH:
	.byte	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym subst
	.addrsig_sym make_vector
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym is_keyword
	.addrsig_sym vec_push
	.addrsig_sym stringize
	.addrsig_sym vec_tail
	.addrsig_sym vec_append
	.addrsig_sym vec_pop
	.addrsig_sym glue_push
	.addrsig_sym vec_head
	.addrsig_sym expand_all
	.addrsig_sym add_hide_set
	.addrsig_sym TMACRO_PARAM
	.addrsig_sym KHASHHASH