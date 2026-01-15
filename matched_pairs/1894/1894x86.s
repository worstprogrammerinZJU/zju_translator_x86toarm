	.text
	.p2align	4, 0x90                         # -- Begin function read_generic_list
read_generic_list:                      # @read_generic_list
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	$41, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, -24(%rbp)
	movsbl	KDEFAULT(%rip), %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$58, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	read_assignment_expr@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	jmp	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	read_cast_type@PLT
	movq	%rax, -32(%rbp)
	movl	$58, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	read_assignment_expr@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	make_pair@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$44, %edi
	callq	next_token@PLT
	jmp	.LBB0_1
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KDEFAULT
KDEFAULT:
	.byte	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"default expression specified twice"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_generic_list
	.addrsig_sym make_vector
	.addrsig_sym next_token
	.addrsig_sym peek
	.addrsig_sym errort
	.addrsig_sym expect
	.addrsig_sym read_assignment_expr
	.addrsig_sym read_cast_type
	.addrsig_sym vec_push
	.addrsig_sym make_pair
	.addrsig_sym KDEFAULT