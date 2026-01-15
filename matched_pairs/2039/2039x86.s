	.text
	.p2align	4, 0x90                         # -- Begin function fmt_stats
fmt_stats:                              # @fmt_stats
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$696, %rsp                      # imm = 0x2B8
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	$0, -68(%rbp)
	movl	$0, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -68(%rbp)
.LBB0_2:
	movq	-80(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_4
# %bb.3:
	movq	-80(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %eax
	movl	%eax, -72(%rbp)
.LBB0_4:
	movl	RUSAGE_SELF(%rip), %edi
	leaq	-112(%rbp), %rsi
	callq	getrusage@PLT
	movq	-48(%rbp), %rax
	movq	%rax, -328(%rbp)                # 8-byte Spill
	movq	-56(%rbp), %rax
	movq	%rax, -320(%rbp)                # 8-byte Spill
	movq	STATS_FMT(%rip), %rax
	movq	%rax, -312(%rbp)                # 8-byte Spill
	movl	global_stat+16(%rip), %eax
	movl	%eax, -304(%rbp)                # 4-byte Spill
	movl	ready_ct(%rip), %eax
	movl	%eax, -300(%rbp)                # 4-byte Spill
	movl	global_stat+12(%rip), %eax
	movl	%eax, -296(%rbp)                # 4-byte Spill
	movb	$0, %al
	callq	get_delayed_job_ct@PLT
	movl	%eax, -292(%rbp)                # 4-byte Spill
	movl	global_stat+8(%rip), %eax
	movl	%eax, -288(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_PUT(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -284(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_PEEKJOB(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -280(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_PEEK_READY(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -276(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_PEEK_DELAYED(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -272(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_PEEK_BURIED(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -268(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_RESERVE(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -264(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_RESERVE_TIMEOUT(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -260(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_DELETE(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -256(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_RELEASE(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -252(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_USE(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -248(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_WATCH(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -244(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_IGNORE(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -240(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_BURY(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -236(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_KICK(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -232(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_TOUCH(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -228(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_STATS(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -224(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_STATSJOB(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -220(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_STATS_TUBE(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -216(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_LIST_TUBES(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -212(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_LIST_TUBE_USED(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -208(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_LIST_TUBES_WATCHED(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -204(%rbp)                # 4-byte Spill
	movq	op_ct(%rip), %rax
	movq	OP_PAUSE_TUBE(%rip), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -200(%rbp)                # 4-byte Spill
	movl	timeout_ct(%rip), %eax
	movl	%eax, -196(%rbp)                # 4-byte Spill
	movl	global_stat+4(%rip), %eax
	movl	%eax, -192(%rbp)                # 4-byte Spill
	movl	job_data_size_limit(%rip), %eax
	movl	%eax, -188(%rbp)                # 4-byte Spill
	movl	tubes(%rip), %eax
	movl	%eax, -184(%rbp)                # 4-byte Spill
	movb	$0, %al
	callq	count_cur_conns@PLT
	movl	%eax, -180(%rbp)                # 4-byte Spill
	movb	$0, %al
	callq	count_cur_producers@PLT
	movl	%eax, -176(%rbp)                # 4-byte Spill
	movb	$0, %al
	callq	count_cur_workers@PLT
	movl	%eax, -172(%rbp)                # 4-byte Spill
	movl	global_stat(%rip), %eax
	movl	%eax, -168(%rbp)                # 4-byte Spill
	movb	$0, %al
	callq	count_tot_conns@PLT
	movl	%eax, -164(%rbp)                # 4-byte Spill
	movb	$0, %al
	callq	getpid@PLT
	movq	%rax, -160(%rbp)                # 8-byte Spill
	movl	version(%rip), %eax
	movl	%eax, -148(%rbp)                # 4-byte Spill
	movq	-88(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -144(%rbp)                # 4-byte Spill
	movq	-96(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -140(%rbp)                # 4-byte Spill
	movq	-104(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -136(%rbp)                # 4-byte Spill
	movq	-112(%rbp), %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -132(%rbp)                # 4-byte Spill
	movb	$0, %al
	callq	uptime@PLT
	movq	-328(%rbp), %rdi                # 8-byte Reload
	movq	-320(%rbp), %rsi                # 8-byte Reload
	movq	-312(%rbp), %rdx                # 8-byte Reload
	movl	-304(%rbp), %ecx                # 4-byte Reload
	movl	-300(%rbp), %r8d                # 4-byte Reload
	movl	-296(%rbp), %r9d                # 4-byte Reload
	movl	%eax, -128(%rbp)                # 4-byte Spill
	movl	-68(%rbp), %eax
	movl	%eax, -124(%rbp)                # 4-byte Spill
	movl	-72(%rbp), %eax
	movl	%eax, -120(%rbp)                # 4-byte Spill
	movq	-80(%rbp), %rax
	movl	8(%rax), %r13d
	movq	-80(%rbp), %rax
	movl	4(%rax), %r12d
	movq	-80(%rbp), %rax
	movl	(%rax), %r15d
	movq	drain_mode(%rip), %r10
	leaq	.L.str.1(%rip), %r14
	leaq	.L.str(%rip), %rax
	cmpq	$0, %r10
	cmovneq	%rax, %r14
	movl	instance_hex(%rip), %ebx
	movl	node_info+8(%rip), %r11d
	movl	node_info+4(%rip), %r10d
	movl	node_info(%rip), %eax
	movl	%eax, -116(%rbp)                # 4-byte Spill
	movl	-292(%rbp), %eax                # 4-byte Reload
	movl	%eax, (%rsp)
	movl	-288(%rbp), %eax                # 4-byte Reload
	movl	%eax, 8(%rsp)
	movl	-284(%rbp), %eax                # 4-byte Reload
	movl	%eax, 16(%rsp)
	movl	-280(%rbp), %eax                # 4-byte Reload
	movl	%eax, 24(%rsp)
	movl	-276(%rbp), %eax                # 4-byte Reload
	movl	%eax, 32(%rsp)
	movl	-272(%rbp), %eax                # 4-byte Reload
	movl	%eax, 40(%rsp)
	movl	-268(%rbp), %eax                # 4-byte Reload
	movl	%eax, 48(%rsp)
	movl	-264(%rbp), %eax                # 4-byte Reload
	movl	%eax, 56(%rsp)
	movl	-260(%rbp), %eax                # 4-byte Reload
	movl	%eax, 64(%rsp)
	movl	-256(%rbp), %eax                # 4-byte Reload
	movl	%eax, 72(%rsp)
	movl	-252(%rbp), %eax                # 4-byte Reload
	movl	%eax, 80(%rsp)
	movl	-248(%rbp), %eax                # 4-byte Reload
	movl	%eax, 88(%rsp)
	movl	-244(%rbp), %eax                # 4-byte Reload
	movl	%eax, 96(%rsp)
	movl	-240(%rbp), %eax                # 4-byte Reload
	movl	%eax, 104(%rsp)
	movl	-236(%rbp), %eax                # 4-byte Reload
	movl	%eax, 112(%rsp)
	movl	-232(%rbp), %eax                # 4-byte Reload
	movl	%eax, 120(%rsp)
	movl	-228(%rbp), %eax                # 4-byte Reload
	movl	%eax, 128(%rsp)
	movl	-224(%rbp), %eax                # 4-byte Reload
	movl	%eax, 136(%rsp)
	movl	-220(%rbp), %eax                # 4-byte Reload
	movl	%eax, 144(%rsp)
	movl	-216(%rbp), %eax                # 4-byte Reload
	movl	%eax, 152(%rsp)
	movl	-212(%rbp), %eax                # 4-byte Reload
	movl	%eax, 160(%rsp)
	movl	-208(%rbp), %eax                # 4-byte Reload
	movl	%eax, 168(%rsp)
	movl	-204(%rbp), %eax                # 4-byte Reload
	movl	%eax, 176(%rsp)
	movl	-200(%rbp), %eax                # 4-byte Reload
	movl	%eax, 184(%rsp)
	movl	-196(%rbp), %eax                # 4-byte Reload
	movl	%eax, 192(%rsp)
	movl	-192(%rbp), %eax                # 4-byte Reload
	movl	%eax, 200(%rsp)
	movl	-188(%rbp), %eax                # 4-byte Reload
	movl	%eax, 208(%rsp)
	movl	-184(%rbp), %eax                # 4-byte Reload
	movl	%eax, 216(%rsp)
	movl	-180(%rbp), %eax                # 4-byte Reload
	movl	%eax, 224(%rsp)
	movl	-176(%rbp), %eax                # 4-byte Reload
	movl	%eax, 232(%rsp)
	movl	-172(%rbp), %eax                # 4-byte Reload
	movl	%eax, 240(%rsp)
	movl	-168(%rbp), %eax                # 4-byte Reload
	movl	%eax, 248(%rsp)
	movl	-164(%rbp), %eax                # 4-byte Reload
	movl	%eax, 256(%rsp)
	movq	-160(%rbp), %rax                # 8-byte Reload
	movq	%rax, 264(%rsp)
	movl	-148(%rbp), %eax                # 4-byte Reload
	movl	%eax, 272(%rsp)
	movl	-144(%rbp), %eax                # 4-byte Reload
	movl	%eax, 280(%rsp)
	movl	-140(%rbp), %eax                # 4-byte Reload
	movl	%eax, 288(%rsp)
	movl	-136(%rbp), %eax                # 4-byte Reload
	movl	%eax, 296(%rsp)
	movl	-132(%rbp), %eax                # 4-byte Reload
	movl	%eax, 304(%rsp)
	movl	-128(%rbp), %eax                # 4-byte Reload
	movl	%eax, 312(%rsp)
	movl	-124(%rbp), %eax                # 4-byte Reload
	movl	%eax, 320(%rsp)
	movl	-120(%rbp), %eax                # 4-byte Reload
	movl	%eax, 328(%rsp)
	movl	-116(%rbp), %eax                # 4-byte Reload
	movl	%r13d, 336(%rsp)
	movl	%r12d, 344(%rsp)
	movl	%r15d, 352(%rsp)
	movq	%r14, 360(%rsp)
	movl	%ebx, 368(%rsp)
	movl	%r11d, 376(%rsp)
	movl	%r10d, 384(%rsp)
	movl	%eax, 392(%rsp)
	callq	snprintf@PLT
	addq	$696, %rsp                      # imm = 0x2B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	RUSAGE_SELF
	.p2align	2
RUSAGE_SELF:
	.long	0                               # 0x0
	.globl	STATS_FMT
	.p2align	3
STATS_FMT:
	.quad	0
	.globl	global_stat
	.p2align	2
global_stat:
	.zero	20
	.globl	ready_ct
	.p2align	2
ready_ct:
	.long	0                               # 0x0
	.globl	op_ct
	.p2align	3
op_ct:
	.quad	0
	.globl	OP_PUT
	.p2align	3
OP_PUT:
	.quad	0                               # 0x0
	.globl	OP_PEEKJOB
	.p2align	3
OP_PEEKJOB:
	.quad	0                               # 0x0
	.globl	OP_PEEK_READY
	.p2align	3
OP_PEEK_READY:
	.quad	0                               # 0x0
	.globl	OP_PEEK_DELAYED
	.p2align	3
OP_PEEK_DELAYED:
	.quad	0                               # 0x0
	.globl	OP_PEEK_BURIED
	.p2align	3
OP_PEEK_BURIED:
	.quad	0                               # 0x0
	.globl	OP_RESERVE
	.p2align	3
OP_RESERVE:
	.quad	0                               # 0x0
	.globl	OP_RESERVE_TIMEOUT
	.p2align	3
OP_RESERVE_TIMEOUT:
	.quad	0                               # 0x0
	.globl	OP_DELETE
	.p2align	3
OP_DELETE:
	.quad	0                               # 0x0
	.globl	OP_RELEASE
	.p2align	3
OP_RELEASE:
	.quad	0                               # 0x0
	.globl	OP_USE
	.p2align	3
OP_USE:
	.quad	0                               # 0x0
	.globl	OP_WATCH
	.p2align	3
OP_WATCH:
	.quad	0                               # 0x0
	.globl	OP_IGNORE
	.p2align	3
OP_IGNORE:
	.quad	0                               # 0x0
	.globl	OP_BURY
	.p2align	3
OP_BURY:
	.quad	0                               # 0x0
	.globl	OP_KICK
	.p2align	3
OP_KICK:
	.quad	0                               # 0x0
	.globl	OP_TOUCH
	.p2align	3
OP_TOUCH:
	.quad	0                               # 0x0
	.globl	OP_STATS
	.p2align	3
OP_STATS:
	.quad	0                               # 0x0
	.globl	OP_STATSJOB
	.p2align	3
OP_STATSJOB:
	.quad	0                               # 0x0
	.globl	OP_STATS_TUBE
	.p2align	3
OP_STATS_TUBE:
	.quad	0                               # 0x0
	.globl	OP_LIST_TUBES
	.p2align	3
OP_LIST_TUBES:
	.quad	0                               # 0x0
	.globl	OP_LIST_TUBE_USED
	.p2align	3
OP_LIST_TUBE_USED:
	.quad	0                               # 0x0
	.globl	OP_LIST_TUBES_WATCHED
	.p2align	3
OP_LIST_TUBES_WATCHED:
	.quad	0                               # 0x0
	.globl	OP_PAUSE_TUBE
	.p2align	3
OP_PAUSE_TUBE:
	.quad	0                               # 0x0
	.globl	timeout_ct
	.p2align	2
timeout_ct:
	.long	0                               # 0x0
	.globl	job_data_size_limit
	.p2align	2
job_data_size_limit:
	.long	0                               # 0x0
	.globl	tubes
	.p2align	2
tubes:
	.zero	4
	.globl	version
	.p2align	2
version:
	.long	0                               # 0x0
	.globl	drain_mode
	.p2align	3
drain_mode:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"true"
.L.str.1:
	.asciz	"false"
	.bss
	.globl	instance_hex
	.p2align	2
instance_hex:
	.long	0                               # 0x0
	.globl	node_info
	.p2align	2
node_info:
	.zero	12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fmt_stats
	.addrsig_sym getrusage
	.addrsig_sym snprintf
	.addrsig_sym get_delayed_job_ct
	.addrsig_sym count_cur_conns
	.addrsig_sym count_cur_producers
	.addrsig_sym count_cur_workers
	.addrsig_sym count_tot_conns
	.addrsig_sym getpid
	.addrsig_sym uptime
	.addrsig_sym RUSAGE_SELF
	.addrsig_sym STATS_FMT
	.addrsig_sym global_stat
	.addrsig_sym ready_ct
	.addrsig_sym op_ct
	.addrsig_sym OP_PUT
	.addrsig_sym OP_PEEKJOB
	.addrsig_sym OP_PEEK_READY
	.addrsig_sym OP_PEEK_DELAYED
	.addrsig_sym OP_PEEK_BURIED
	.addrsig_sym OP_RESERVE
	.addrsig_sym OP_RESERVE_TIMEOUT
	.addrsig_sym OP_DELETE
	.addrsig_sym OP_RELEASE
	.addrsig_sym OP_USE
	.addrsig_sym OP_WATCH
	.addrsig_sym OP_IGNORE
	.addrsig_sym OP_BURY
	.addrsig_sym OP_KICK
	.addrsig_sym OP_TOUCH
	.addrsig_sym OP_STATS
	.addrsig_sym OP_STATSJOB
	.addrsig_sym OP_STATS_TUBE
	.addrsig_sym OP_LIST_TUBES
	.addrsig_sym OP_LIST_TUBE_USED
	.addrsig_sym OP_LIST_TUBES_WATCHED
	.addrsig_sym OP_PAUSE_TUBE
	.addrsig_sym timeout_ct
	.addrsig_sym job_data_size_limit
	.addrsig_sym tubes
	.addrsig_sym version
	.addrsig_sym drain_mode
	.addrsig_sym instance_hex
	.addrsig_sym node_info