	.text
	.globl	jv_load_file                    # -- Begin function jv_load_file
	.p2align	4, 0x90
jv_load_file:                           # @jv_load_file
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	O_RDONLY(%rip), %esi
	callq	open@PLT
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movl	errno(%rip), %edi
	callq	strerror@PLT
	movq	-96(%rbp), %rsi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	jv_string_fmt@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_37
.LBB0_2:
	movl	-28(%rbp), %edi
	leaq	-24(%rbp), %rsi
	callq	fstat@PLT
	cmpl	$-1, %eax
	je	.LBB0_4
# %bb.3:
	movl	-24(%rbp), %edi
	callq	S_ISDIR@PLT
	cmpq	$0, %rax
	je	.LBB0_5
.LBB0_4:
	movl	-28(%rbp), %edi
	callq	close@PLT
	movq	-16(%rbp), %rsi
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rdx
	movb	$0, %al
	callq	jv_string_fmt@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_37
.LBB0_5:
	movl	-28(%rbp), %edi
	leaq	.L.str.2(%rip), %rsi
	callq	fdopen@PLT
	movq	%rax, -40(%rbp)
	movq	$0, -48(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_7
# %bb.6:
	movl	-28(%rbp), %edi
	callq	close@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movl	errno(%rip), %edi
	callq	strerror@PLT
	movq	-104(%rbp), %rsi                # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	jv_string_fmt@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_37
.LBB0_7:
	cmpl	$0, -20(%rbp)
	je	.LBB0_9
# %bb.8:
	leaq	.L.str.3(%rip), %rdi
	callq	jv_string@PLT
	movl	%eax, -52(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	movb	$0, %al
	callq	jv_array@PLT
	movl	%eax, -52(%rbp)
	xorl	%edi, %edi
	callq	jv_parser_new@PLT
	movq	%rax, -48(%rbp)
.LBB0_10:
	movl	$4, -56(%rbp)
	movq	%rsp, %rax
	movq	%rax, -64(%rbp)
	movq	%rsp, %rax
	addq	$-4112, %rax                    # imm = 0xEFF0
	movq	%rax, -112(%rbp)                # 8-byte Spill
	movq	%rax, %rsp
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_24 Depth 2
	movq	-40(%rbp), %rdi
	callq	feof@PLT
	movl	%eax, %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -113(%rbp)                 # 1-byte Spill
	jne	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-40(%rbp), %rdi
	callq	ferror@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	movb	%al, -113(%rbp)                 # 1-byte Spill
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=1
	movb	-113(%rbp), %al                 # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_14
	jmp	.LBB0_30
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	-40(%rbp), %rcx
	movl	$1, %esi
	movl	$4096, %edx                     # imm = 0x1000
	callq	fread@PLT
	movq	%rax, -72(%rbp)
	movl	$0, -76(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_11
.LBB0_16:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-112(%rbp), %rsi                # 8-byte Reload
	movq	-72(%rbp), %rax
	subq	$1, %rax
	movq	%rsi, %rdi
	addq	%rax, %rdi
	leaq	-76(%rbp), %rdx
	callq	jvp_utf8_backtrack@PLT
	cmpq	$0, %rax
	je	.LBB0_21
# %bb.17:                               #   in Loop: Header=BB0_11 Depth=1
	cmpl	$0, -76(%rbp)
	jle	.LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-40(%rbp), %rdi
	callq	feof@PLT
	cmpl	$0, %eax
	jne	.LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-40(%rbp), %rdi
	callq	ferror@PLT
	cmpl	$0, %eax
	jne	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-112(%rbp), %rdi                # 8-byte Reload
	addq	-72(%rbp), %rdi
	movl	-76(%rbp), %edx
	movq	-40(%rbp), %rcx
	movl	$1, %esi
	callq	fread@PLT
	addq	-72(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB0_21:                               #   in Loop: Header=BB0_11 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-112(%rbp), %rsi                # 8-byte Reload
	movl	-52(%rbp), %edi
	movq	-72(%rbp), %rdx
	callq	jv_string_append_buf@PLT
	movl	%eax, -52(%rbp)
	jmp	.LBB0_29
.LBB0_23:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	movq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	movq	-40(%rbp), %rdi
	callq	feof@PLT
	movq	-136(%rbp), %rdi                # 8-byte Reload
	movq	-112(%rbp), %rsi                # 8-byte Reload
	movq	-128(%rbp), %rdx                # 8-byte Reload
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %ecx
	callq	jv_parser_set_buf@PLT
.LBB0_24:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rdi
	callq	jv_parser_next@PLT
	movl	%eax, %edi
	movl	%edi, -80(%rbp)
	callq	jv_is_valid@PLT
	cmpq	$0, %rax
	je	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=2
	movl	-52(%rbp), %edi
	movl	-80(%rbp), %esi
	callq	jv_array_append@PLT
	movl	%eax, -52(%rbp)
	jmp	.LBB0_24
.LBB0_26:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-80(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	callq	jv_invalid_has_msg@PLT
	cmpq	$0, %rax
	je	.LBB0_28
# %bb.27:
	movl	-52(%rbp), %edi
	callq	jv_free@PLT
	movl	-80(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_30
.LBB0_28:                               #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_29
.LBB0_29:                               #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_11
.LBB0_30:
	cmpl	$0, -20(%rbp)
	jne	.LBB0_32
# %bb.31:
	movq	-48(%rbp), %rdi
	callq	jv_parser_free@PLT
.LBB0_32:
	movq	-40(%rbp), %rdi
	callq	ferror@PLT
	movl	%eax, -84(%rbp)
	movq	-40(%rbp), %rdi
	callq	fclose@PLT
	cmpq	$0, %rax
	jne	.LBB0_34
# %bb.33:
	cmpl	$0, -84(%rbp)
	je	.LBB0_35
.LBB0_34:
	movl	-52(%rbp), %edi
	callq	jv_free@PLT
	movq	-16(%rbp), %rsi
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	jv_string_fmt@PLT
	movl	%eax, %edi
	callq	jv_invalid_with_msg@PLT
	movl	%eax, -4(%rbp)
	movl	$1, -88(%rbp)
	jmp	.LBB0_36
.LBB0_35:
	movl	-52(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	$1, -88(%rbp)
.LBB0_36:
	movq	-64(%rbp), %rax
	movq	%rax, %rsp
.LBB0_37:
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	O_RDONLY
	.p2align	2
O_RDONLY:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Could not open %s: %s"
	.bss
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"It's a directory"
.L.str.2:
	.asciz	"r"
.L.str.3:
	.zero	1
.L.str.4:
	.asciz	"Error reading from %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym open
	.addrsig_sym jv_invalid_with_msg
	.addrsig_sym jv_string_fmt
	.addrsig_sym strerror
	.addrsig_sym fstat
	.addrsig_sym S_ISDIR
	.addrsig_sym close
	.addrsig_sym fdopen
	.addrsig_sym jv_string
	.addrsig_sym jv_array
	.addrsig_sym jv_parser_new
	.addrsig_sym feof
	.addrsig_sym ferror
	.addrsig_sym fread
	.addrsig_sym jvp_utf8_backtrack
	.addrsig_sym jv_string_append_buf
	.addrsig_sym jv_parser_set_buf
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_parser_next
	.addrsig_sym jv_array_append
	.addrsig_sym jv_invalid_has_msg
	.addrsig_sym jv_copy
	.addrsig_sym jv_free
	.addrsig_sym jv_parser_free
	.addrsig_sym fclose
	.addrsig_sym O_RDONLY
	.addrsig_sym errno