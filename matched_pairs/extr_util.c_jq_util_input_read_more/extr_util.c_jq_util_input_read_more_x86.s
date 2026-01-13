	.text
	.p2align	4, 0x90                         # -- Begin function jq_util_input_read_more
jq_util_input_read_more:                # @jq_util_input_read_more
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB0_3
# %bb.1:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	feof@PLT
	cmpq	$0, %rax
	jne	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	ferror@PLT
	cmpq	$0, %rax
	je	.LBB0_19
.LBB0_3:
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB0_6
# %bb.4:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	ferror@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	movl	stderr(%rip), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movq	errno(%rip), %rdi
	callq	strerror@PLT
	movl	-44(%rbp), %edi                 # 4-byte Reload
	movq	%rax, %rdx
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
.LBB0_6:
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB0_11
# %bb.7:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	stdin(%rip), %rax
	jne	.LBB0_9
# %bb.8:
	movq	stdin(%rip), %rdi
	callq	clearerr@PLT
	jmp	.LBB0_10
.LBB0_9:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	fclose@PLT
.LBB0_10:
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	movq	72(%rax), %rdi
	callq	jv_free@PLT
	movb	$0, %al
	callq	jv_invalid@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 72(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
.LBB0_11:
	movq	-8(%rbp), %rdi
	callq	next_file@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_18
# %bb.12:
	movq	-16(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_14
# %bb.13:
	movq	stdin(%rip), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 32(%rax)
	leaq	.L.str.2(%rip), %rdi
	callq	jv_string@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 72(%rax)
	jmp	.LBB0_17
.LBB0_14:
	movq	-16(%rbp), %rdi
	leaq	.L.str.3(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 32(%rax)
	movq	-16(%rbp), %rdi
	callq	jv_string@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 72(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB0_16
# %bb.15:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	60(%rcx), %edi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-8(%rbp), %rax
	movl	56(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 56(%rax)
.LBB0_16:
	jmp	.LBB0_17
.LBB0_17:
	movq	-8(%rbp), %rax
	movq	$0, 48(%rax)
.LBB0_18:
	jmp	.LBB0_19
.LBB0_19:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB0_51
# %bb.20:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	$255, %esi
	movl	$8, %edx
	callq	memset@PLT
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdx
	movl	$8, %esi
	callq	fgets@PLT
	movq	%rax, %rcx
	movq	%rcx, -24(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -45(%rbp)                  # 1-byte Spill
	jne	.LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	ferror@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -45(%rbp)                  # 1-byte Spill
	je	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_21 Depth=1
	movq	errno(%rip), %rax
	cmpq	EINTR(%rip), %rax
	sete	%al
	movb	%al, -45(%rbp)                  # 1-byte Spill
.LBB0_24:                               #   in Loop: Header=BB0_21 Depth=1
	movb	-45(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_25
	jmp	.LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_21 Depth=1
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	clearerr@PLT
	jmp	.LBB0_21
.LBB0_26:
	cmpq	$0, -24(%rbp)
	jne	.LBB0_30
# %bb.27:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movb	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	ferror@PLT
	cmpq	$0, %rax
	je	.LBB0_29
# %bb.28:
	movq	-8(%rbp), %rax
	movl	56(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 56(%rax)
.LBB0_29:
	jmp	.LBB0_50
.LBB0_30:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movl	$10, %esi
	movl	$8, %edx
	callq	memchr@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB0_32
# %bb.31:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 48(%rax)
.LBB0_32:
	cmpq	$0, -32(%rbp)
	jne	.LBB0_35
# %bb.33:
	movq	-8(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB0_35
# %bb.34:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	strlen@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	jmp	.LBB0_49
.LBB0_35:
	cmpq	$0, -32(%rbp)
	jne	.LBB0_44
# %bb.36:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	feof@PLT
	cmpq	$0, %rax
	je	.LBB0_44
# %bb.37:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	$7, -40(%rbp)
.LBB0_38:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	jbe	.LBB0_43
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-40(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	jne	.LBB0_41
# %bb.40:
	jmp	.LBB0_43
.LBB0_41:                               #   in Loop: Header=BB0_38 Depth=1
	jmp	.LBB0_42
.LBB0_42:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-40(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_38
.LBB0_43:
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	jmp	.LBB0_48
.LBB0_44:
	cmpq	$0, -32(%rbp)
	jne	.LBB0_46
# %bb.45:
	movq	-8(%rbp), %rax
	movq	$7, 8(%rax)
	jmp	.LBB0_47
.LBB0_46:
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rcx
	addq	$1, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
.LBB0_47:
	jmp	.LBB0_48
.LBB0_48:
	jmp	.LBB0_49
.LBB0_49:
	jmp	.LBB0_50
.LBB0_50:
	jmp	.LBB0_51
.LBB0_51:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rcx
	movq	-8(%rbp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	24(%rdx), %rcx
	movb	%al, -46(%rbp)                  # 1-byte Spill
	jne	.LBB0_56
# %bb.52:
	movq	-8(%rbp), %rcx
	movb	$1, %al
	cmpq	$0, 32(%rcx)
	movb	%al, -47(%rbp)                  # 1-byte Spill
	je	.LBB0_55
# %bb.53:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	feof@PLT
	movq	%rax, %rcx
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -47(%rbp)                  # 1-byte Spill
	jne	.LBB0_55
# %bb.54:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	ferror@PLT
	cmpq	$0, %rax
	setne	%al
	movb	%al, -47(%rbp)                  # 1-byte Spill
.LBB0_55:
	movb	-47(%rbp), %al                  # 1-byte Reload
	movb	%al, -46(%rbp)                  # 1-byte Spill
.LBB0_56:
	movb	-46(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jq: error: %s\n"
	.bss
	.globl	errno
	.p2align	3
errno:
	.quad	0                               # 0x0
	.globl	stdin
	.p2align	3
stdin:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"-"
.L.str.2:
	.asciz	"<stdin>"
.L.str.3:
	.asciz	"r"
	.bss
	.globl	EINTR
	.p2align	3
EINTR:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_util_input_read_more
	.addrsig_sym feof
	.addrsig_sym ferror
	.addrsig_sym fprintf
	.addrsig_sym strerror
	.addrsig_sym clearerr
	.addrsig_sym fclose
	.addrsig_sym jv_free
	.addrsig_sym jv_invalid
	.addrsig_sym next_file
	.addrsig_sym strcmp
	.addrsig_sym jv_string
	.addrsig_sym fopen
	.addrsig_sym memset
	.addrsig_sym fgets
	.addrsig_sym memchr
	.addrsig_sym strlen
	.addrsig_sym stderr
	.addrsig_sym errno
	.addrsig_sym stdin
	.addrsig_sym EINTR