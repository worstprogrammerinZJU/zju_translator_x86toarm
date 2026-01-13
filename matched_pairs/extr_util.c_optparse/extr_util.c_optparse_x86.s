	.text
	.globl	optparse                        # -- Begin function optparse
	.p2align	4, 0x90
optparse:                               # @optparse
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	movq	(%rax), %rcx
	movq	%rcx, -32(%rbp)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -42(%rbp)                  # 1-byte Spill
	je	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movsbl	(%rax), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$45, %ecx
	movb	%al, -42(%rbp)                  # 1-byte Spill
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	setne	%al
	movb	%al, -42(%rbp)                  # 1-byte Spill
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-42(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_5
	jmp	.LBB0_68
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	(%rax), %al
	movb	%al, -41(%rbp)
	cmpb	$0, %al
	je	.LBB0_67
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	movsbl	-41(%rbp), %eax
	addl	$-70, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)                 # 8-byte Spill
	subl	$52, %eax
	ja	.LBB0_65
# %bb.71:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-56(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=2
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	.L.str(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	jmp	.LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	movq	(%rax), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	jmp	.LBB0_13
.LBB0_12:                               #   in Loop: Header=BB0_6 Depth=2
	leaq	.L.str.1(%rip), %rdi
	callq	flagusage@PLT
	cltq
	movq	%rax, -72(%rbp)                 # 8-byte Spill
.LBB0_13:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -64(%rbp)                 # 8-byte Spill
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-64(%rbp), %rcx                 # 8-byte Reload
	movq	-8(%rbp), %rax
	movq	%rcx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rsi
	leaq	.L.str.1(%rip), %rdi
	callq	warn_systemd_ignored_option@PLT
	jmp	.LBB0_66
.LBB0_15:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	.L.str(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	jmp	.LBB0_21
.LBB0_17:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	jmp	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_6 Depth=2
	leaq	.L.str.2(%rip), %rdi
	callq	flagusage@PLT
	cltq
	movq	%rax, -88(%rbp)                 # 8-byte Spill
.LBB0_20:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -80(%rbp)                 # 8-byte Spill
.LBB0_21:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-80(%rbp), %rcx                 # 8-byte Reload
	movq	-8(%rbp), %rax
	movq	%rcx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rsi
	leaq	.L.str.2(%rip), %rdi
	callq	warn_systemd_ignored_option@PLT
	jmp	.LBB0_66
.LBB0_22:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	.L.str(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	jmp	.LBB0_28
.LBB0_24:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_26
# %bb.25:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	jmp	.LBB0_27
.LBB0_26:                               #   in Loop: Header=BB0_6 Depth=2
	leaq	.L.str.3(%rip), %rdi
	callq	flagusage@PLT
	cltq
	movq	%rax, -104(%rbp)                # 8-byte Spill
.LBB0_27:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-104(%rbp), %rax                # 8-byte Reload
	movq	%rax, -96(%rbp)                 # 8-byte Spill
.LBB0_28:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	callq	parse_size_t@PLT
	movq	%rax, job_data_size_limit(%rip)
	movq	job_data_size_limit(%rip), %rax
	cmpq	JOB_DATA_SIZE_LIMIT_MAX(%rip), %rax
	jbe	.LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_6 Depth=2
	movq	JOB_DATA_SIZE_LIMIT_MAX(%rip), %rsi
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	warnx@PLT
	movq	JOB_DATA_SIZE_LIMIT_MAX(%rip), %rax
	movq	%rax, job_data_size_limit(%rip)
.LBB0_30:                               #   in Loop: Header=BB0_6 Depth=2
	jmp	.LBB0_66
.LBB0_31:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_33
# %bb.32:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	.L.str(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	jmp	.LBB0_37
.LBB0_33:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	jmp	.LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_6 Depth=2
	leaq	.L.str.5(%rip), %rdi
	callq	flagusage@PLT
	cltq
	movq	%rax, -120(%rbp)                # 8-byte Spill
.LBB0_36:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-120(%rbp), %rax                # 8-byte Reload
	movq	%rax, -112(%rbp)                # 8-byte Spill
.LBB0_37:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-112(%rbp), %rdi                # 8-byte Reload
	callq	parse_size_t@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 24(%rax)
	jmp	.LBB0_66
.LBB0_38:                               #   in Loop: Header=BB0_6 Depth=2
	leaq	.L.str.6(%rip), %rdi
	movb	$0, %al
	callq	warnx@PLT
	jmp	.LBB0_66
.LBB0_39:                               #   in Loop: Header=BB0_6 Depth=2
	leaq	.L.str.7(%rip), %rdi
	movb	$0, %al
	callq	warnx@PLT
	jmp	.LBB0_66
.LBB0_40:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_42
# %bb.41:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	.L.str(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	jmp	.LBB0_46
.LBB0_42:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)                # 8-byte Spill
	jmp	.LBB0_45
.LBB0_44:                               #   in Loop: Header=BB0_6 Depth=2
	leaq	.L.str.8(%rip), %rdi
	callq	flagusage@PLT
	cltq
	movq	%rax, -136(%rbp)                # 8-byte Spill
.LBB0_45:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-136(%rbp), %rax                # 8-byte Reload
	movq	%rax, -128(%rbp)                # 8-byte Spill
.LBB0_46:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-128(%rbp), %rdi                # 8-byte Reload
	callq	parse_size_t@PLT
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	imull	$1000000, -20(%rbp), %ecx       # imm = 0xF4240
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movl	$1, 4(%rax)
	jmp	.LBB0_66
.LBB0_47:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
	jmp	.LBB0_66
.LBB0_48:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_50
# %bb.49:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	.L.str(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)                # 8-byte Spill
	jmp	.LBB0_54
.LBB0_50:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_52
# %bb.51:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)                # 8-byte Spill
	jmp	.LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_6 Depth=2
	leaq	.L.str.9(%rip), %rdi
	callq	flagusage@PLT
	cltq
	movq	%rax, -152(%rbp)                # 8-byte Spill
.LBB0_53:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-152(%rbp), %rax                # 8-byte Reload
	movq	%rax, -144(%rbp)                # 8-byte Spill
.LBB0_54:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-144(%rbp), %rcx                # 8-byte Reload
	movq	-8(%rbp), %rax
	movq	%rcx, 32(%rax)
	jmp	.LBB0_66
.LBB0_55:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_57
# %bb.56:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	.L.str(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)                # 8-byte Spill
	jmp	.LBB0_61
.LBB0_57:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_59
# %bb.58:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	movq	(%rax), %rax
	movq	%rax, -168(%rbp)                # 8-byte Spill
	jmp	.LBB0_60
.LBB0_59:                               #   in Loop: Header=BB0_6 Depth=2
	leaq	.L.str.10(%rip), %rdi
	callq	flagusage@PLT
	cltq
	movq	%rax, -168(%rbp)                # 8-byte Spill
.LBB0_60:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-168(%rbp), %rax                # 8-byte Reload
	movq	%rax, -160(%rbp)                # 8-byte Spill
.LBB0_61:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-160(%rbp), %rcx                # 8-byte Reload
	movq	-8(%rbp), %rax
	movq	%rcx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	jmp	.LBB0_66
.LBB0_62:                               #   in Loop: Header=BB0_6 Depth=2
	xorl	%edi, %edi
	callq	usage@PLT
.LBB0_63:                               #   in Loop: Header=BB0_6 Depth=2
	movq	version(%rip), %rsi
	leaq	.L.str.11(%rip), %rdi
	callq	printf@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB0_64:                               #   in Loop: Header=BB0_6 Depth=2
	movl	verbose(%rip), %eax
	addl	$1, %eax
	movl	%eax, verbose(%rip)
	jmp	.LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_6 Depth=2
	movq	-32(%rbp), %rsi
	addq	$-2, %rsi
	leaq	.L.str.12(%rip), %rdi
	movb	$0, %al
	callq	warnx@PLT
	movl	$5, %edi
	callq	usage@PLT
.LBB0_66:                               #   in Loop: Header=BB0_6 Depth=2
	jmp	.LBB0_6
.LBB0_67:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_68:
	cmpq	$0, -32(%rbp)
	je	.LBB0_70
# %bb.69:
	movq	-32(%rbp), %rsi
	addq	$-1, %rsi
	leaq	.L.str.13(%rip), %rdi
	movb	$0, %al
	callq	warnx@PLT
	movl	$5, %edi
	callq	usage@PLT
.LBB0_70:
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_47-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_64-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_55-.LJTI0_0
	.long	.LBB0_38-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_40-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_62-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_15-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_39-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_8-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_31-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_48-.LJTI0_0
	.long	.LBB0_63-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_65-.LJTI0_0
	.long	.LBB0_22-.LJTI0_0
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
.L.str.1:
	.asciz	"-p"
.L.str.2:
	.asciz	"-l"
.L.str.3:
	.asciz	"-z"
	.bss
	.globl	job_data_size_limit
	.p2align	3
job_data_size_limit:
	.quad	0
	.globl	JOB_DATA_SIZE_LIMIT_MAX
	.p2align	3
JOB_DATA_SIZE_LIMIT_MAX:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"maximum job size was set to %d"
.L.str.5:
	.asciz	"-s"
.L.str.6:
	.asciz	"-c flag was removed. binlog is always compacted."
.L.str.7:
	.asciz	"-n flag was removed. binlog is always compacted."
.L.str.8:
	.asciz	"-f"
.L.str.9:
	.asciz	"-u"
.L.str.10:
	.asciz	"-b"
.L.str.11:
	.asciz	"beanstalkd %s\n"
	.bss
	.globl	version
	.p2align	3
version:
	.quad	0
	.globl	verbose
	.p2align	2
verbose:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"unknown flag: %s"
.L.str.13:
	.asciz	"unknown argument: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym flagusage
	.addrsig_sym warn_systemd_ignored_option
	.addrsig_sym parse_size_t
	.addrsig_sym warnx
	.addrsig_sym usage
	.addrsig_sym printf
	.addrsig_sym exit
	.addrsig_sym job_data_size_limit
	.addrsig_sym JOB_DATA_SIZE_LIMIT_MAX
	.addrsig_sym version
	.addrsig_sym verbose