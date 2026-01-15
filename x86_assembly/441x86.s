	.text
	.p2align	4, 0x90                         # -- Begin function read_funclike_macro_params
read_funclike_macro_params:             # @read_funclike_macro_params
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	$41, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	movl	$0, -4(%rbp)
	jmp	.LBB0_16
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	movl	$44, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rdi
	callq	tok2s@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	movb	$0, %al
	callq	errort@PLT
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -40(%rbp)
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TNEWLINE(%rip), %rax
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	movb	$0, %al
	callq	errort@PLT
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	movsbl	KELLIPSIS(%rip), %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_11
# %bb.10:
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movl	-28(%rbp), %edi
	movl	%edi, %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	$1, %esi
	callq	make_macro_token@PLT
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.2(%rip), %rsi
	callq	map_put@PLT
	movl	$41, %edi
	callq	expect@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_16
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	je	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-40(%rbp), %rdi
	callq	tok2s@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str.3(%rip), %rsi
	movb	$0, %al
	callq	errort@PLT
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movsbl	KELLIPSIS(%rip), %edi
	callq	next@PLT
	cmpq	$0, %rax
	je	.LBB0_15
# %bb.14:
	movl	$41, %edi
	callq	expect@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movl	-28(%rbp), %edi
	movl	%edi, %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	$1, %esi
	callq	make_macro_token@PLT
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movq	-80(%rbp), %rsi                 # 8-byte Reload
	movl	%eax, %edx
	callq	map_put@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movl	-28(%rbp), %edi
	movl	%edi, %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	xorl	%esi, %esi
	callq	make_macro_token@PLT
	movq	-104(%rbp), %rdi                # 8-byte Reload
	movq	-96(%rbp), %rsi                 # 8-byte Reload
	movl	%eax, %edx
	callq	map_put@PLT
	jmp	.LBB0_1
.LBB0_16:
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	", expected, but got %s"
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"missing ')' in macro parameter list"
	.bss
	.globl	KELLIPSIS
KELLIPSIS:
	.byte	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"__VA_ARGS__"
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"identifier expected, but got %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_funclike_macro_params
	.addrsig_sym lex
	.addrsig_sym is_keyword
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym map_put
	.addrsig_sym make_macro_token
	.addrsig_sym expect
	.addrsig_sym next
	.addrsig_sym TNEWLINE
	.addrsig_sym KELLIPSIS
	.addrsig_sym TIDENT