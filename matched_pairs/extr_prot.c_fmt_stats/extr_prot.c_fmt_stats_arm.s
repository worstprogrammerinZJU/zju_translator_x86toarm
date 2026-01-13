	.text
	.p2align	2                               // -- Begin function fmt_stats
	.type	fmt_stats,@function
fmt_stats:                              // @fmt_stats
// %bb.0:
	stp	x29, x30, [sp, #-96]!           // 16-byte Folded Spill
	stp	x28, x27, [sp, #16]             // 16-byte Folded Spill
	stp	x26, x25, [sp, #32]             // 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             // 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #656
	adrp	x8, global_stat
	add	x8, x8, :lo12:global_stat
	stur	x8, [x29, #-96]                 // 8-byte Folded Spill
	adrp	x8, node_info
	add	x8, x8, :lo12:node_info
	stur	x8, [x29, #-88]                 // 8-byte Folded Spill
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	wzr, [x29, #-36]
	stur	wzr, [x29, #-40]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-48]
	ldr	x8, [x8, #24]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-48]
	ldr	x8, [x8, #24]
	ldr	w8, [x8]
	stur	w8, [x29, #-36]
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-48]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-48]
	ldr	x8, [x8, #16]
	ldr	w8, [x8]
	stur	w8, [x29, #-40]
	b	.LBB0_4
.LBB0_4:
	adrp	x8, RUSAGE_SELF
	ldr	w0, [x8, :lo12:RUSAGE_SELF]
	sub	x1, x29, #80
	bl	getrusage
	ldur	x8, [x29, #-96]                 // 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	stur	x9, [x29, #-104]                // 8-byte Folded Spill
	ldur	x9, [x29, #-24]
	stur	x9, [x29, #-256]                // 8-byte Folded Spill
	adrp	x9, STATS_FMT
	ldr	x9, [x9, :lo12:STATS_FMT]
	stur	x9, [x29, #-248]                // 8-byte Folded Spill
	ldr	w9, [x8, #16]
	stur	w9, [x29, #-236]                // 4-byte Folded Spill
	adrp	x9, ready_ct
	ldr	w9, [x9, :lo12:ready_ct]
	stur	w9, [x29, #-232]                // 4-byte Folded Spill
	ldr	w8, [x8, #12]
	stur	w8, [x29, #-228]                // 4-byte Folded Spill
	bl	get_delayed_job_ct
	ldur	x8, [x29, #-96]                 // 8-byte Folded Reload
	stur	w0, [x29, #-224]                // 4-byte Folded Spill
	ldr	w9, [x8, #8]
	stur	w9, [x29, #-220]                // 4-byte Folded Spill
	adrp	x9, op_ct
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_PUT
	ldr	x11, [x11, :lo12:OP_PUT]
	ldr	w10, [x10, x11, lsl #2]
	str	w10, [sp, #396]                 // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_PEEKJOB
	ldr	x11, [x11, :lo12:OP_PEEKJOB]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-208]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_PEEK_READY
	ldr	x11, [x11, :lo12:OP_PEEK_READY]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-204]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_PEEK_DELAYED
	ldr	x11, [x11, :lo12:OP_PEEK_DELAYED]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-200]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_PEEK_BURIED
	ldr	x11, [x11, :lo12:OP_PEEK_BURIED]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-196]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_RESERVE
	ldr	x11, [x11, :lo12:OP_RESERVE]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-192]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_RESERVE_TIMEOUT
	ldr	x11, [x11, :lo12:OP_RESERVE_TIMEOUT]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-188]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_DELETE
	ldr	x11, [x11, :lo12:OP_DELETE]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-184]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_RELEASE
	ldr	x11, [x11, :lo12:OP_RELEASE]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-180]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_USE
	ldr	x11, [x11, :lo12:OP_USE]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-176]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_WATCH
	ldr	x11, [x11, :lo12:OP_WATCH]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-172]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_IGNORE
	ldr	x11, [x11, :lo12:OP_IGNORE]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-168]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_BURY
	ldr	x11, [x11, :lo12:OP_BURY]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-164]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_KICK
	ldr	x11, [x11, :lo12:OP_KICK]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-160]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_TOUCH
	ldr	x11, [x11, :lo12:OP_TOUCH]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-156]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_STATS
	ldr	x11, [x11, :lo12:OP_STATS]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-152]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_STATSJOB
	ldr	x11, [x11, :lo12:OP_STATSJOB]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-148]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_STATS_TUBE
	ldr	x11, [x11, :lo12:OP_STATS_TUBE]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-144]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_LIST_TUBES
	ldr	x11, [x11, :lo12:OP_LIST_TUBES]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-140]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_LIST_TUBE_USED
	ldr	x11, [x11, :lo12:OP_LIST_TUBE_USED]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-136]               // 4-byte Folded Spill
	ldr	x10, [x9, :lo12:op_ct]
	adrp	x11, OP_LIST_TUBES_WATCHED
	ldr	x11, [x11, :lo12:OP_LIST_TUBES_WATCHED]
	ldr	w10, [x10, x11, lsl #2]
	stur	w10, [x29, #-132]               // 4-byte Folded Spill
	ldr	x9, [x9, :lo12:op_ct]
	adrp	x10, OP_PAUSE_TUBE
	ldr	x10, [x10, :lo12:OP_PAUSE_TUBE]
	ldr	w9, [x9, x10, lsl #2]
	stur	w9, [x29, #-128]                // 4-byte Folded Spill
	adrp	x9, timeout_ct
	ldr	w9, [x9, :lo12:timeout_ct]
	stur	w9, [x29, #-124]                // 4-byte Folded Spill
	ldr	w8, [x8, #4]
	stur	w8, [x29, #-120]                // 4-byte Folded Spill
	adrp	x8, job_data_size_limit
	ldr	w8, [x8, :lo12:job_data_size_limit]
	stur	w8, [x29, #-116]                // 4-byte Folded Spill
	adrp	x8, tubes
	ldr	w8, [x8, :lo12:tubes]
	stur	w8, [x29, #-112]                // 4-byte Folded Spill
	bl	count_cur_conns
	stur	w0, [x29, #-212]                // 4-byte Folded Spill
	bl	count_cur_producers
	stur	w0, [x29, #-216]                // 4-byte Folded Spill
	bl	count_cur_workers
	mov	w28, w0
	adrp	x8, global_stat
	ldr	w27, [x8, :lo12:global_stat]
	bl	count_tot_conns
	mov	w26, w0
	bl	getpid
	mov	x25, x0
	adrp	x8, version
	ldr	w24, [x8, :lo12:version]
	ldur	x23, [x29, #-56]
	ldur	x22, [x29, #-64]
	ldur	x21, [x29, #-72]
	ldur	x20, [x29, #-80]
	bl	uptime
	ldur	x9, [x29, #-88]                 // 8-byte Folded Reload
	ldr	w8, [sp, #396]                  // 4-byte Folded Reload
	ldur	x1, [x29, #-256]                // 8-byte Folded Reload
	ldur	x2, [x29, #-248]                // 8-byte Folded Reload
	ldur	w3, [x29, #-236]                // 4-byte Folded Reload
	ldur	w4, [x29, #-232]                // 4-byte Folded Reload
	ldur	w5, [x29, #-228]                // 4-byte Folded Reload
	ldur	w6, [x29, #-224]                // 4-byte Folded Reload
	ldur	w7, [x29, #-220]                // 4-byte Folded Reload
	ldur	w30, [x29, #-216]               // 4-byte Folded Reload
	mov	w19, w0
	ldur	w0, [x29, #-212]                // 4-byte Folded Reload
	ldur	w18, [x29, #-36]
	ldur	w17, [x29, #-40]
	ldur	x10, [x29, #-48]
	ldr	w16, [x10, #8]
	ldur	x10, [x29, #-48]
	ldr	w15, [x10, #4]
	ldur	x10, [x29, #-48]
	ldr	w14, [x10]
	adrp	x10, drain_mode
	ldr	x12, [x10, :lo12:drain_mode]
	adrp	x11, .L.str.1
	add	x11, x11, :lo12:.L.str.1
	adrp	x10, .L.str
	add	x10, x10, :lo12:.L.str
	subs	x12, x12, #0
	csel	x13, x10, x11, ne
	adrp	x10, instance_hex
	ldr	w12, [x10, :lo12:instance_hex]
	ldr	w11, [x9, #8]
	ldr	w10, [x9, #4]
	adrp	x9, node_info
	ldr	w9, [x9, :lo12:node_info]
	stur	w9, [x29, #-108]                // 4-byte Folded Spill
	mov	x9, sp
	str	w8, [x9]
	ldur	w8, [x29, #-208]                // 4-byte Folded Reload
	str	w8, [x9, #8]
	ldur	w8, [x29, #-204]                // 4-byte Folded Reload
	str	w8, [x9, #16]
	ldur	w8, [x29, #-200]                // 4-byte Folded Reload
	str	w8, [x9, #24]
	ldur	w8, [x29, #-196]                // 4-byte Folded Reload
	str	w8, [x9, #32]
	ldur	w8, [x29, #-192]                // 4-byte Folded Reload
	str	w8, [x9, #40]
	ldur	w8, [x29, #-188]                // 4-byte Folded Reload
	str	w8, [x9, #48]
	ldur	w8, [x29, #-184]                // 4-byte Folded Reload
	str	w8, [x9, #56]
	ldur	w8, [x29, #-180]                // 4-byte Folded Reload
	str	w8, [x9, #64]
	ldur	w8, [x29, #-176]                // 4-byte Folded Reload
	str	w8, [x9, #72]
	ldur	w8, [x29, #-172]                // 4-byte Folded Reload
	str	w8, [x9, #80]
	ldur	w8, [x29, #-168]                // 4-byte Folded Reload
	str	w8, [x9, #88]
	ldur	w8, [x29, #-164]                // 4-byte Folded Reload
	str	w8, [x9, #96]
	ldur	w8, [x29, #-160]                // 4-byte Folded Reload
	str	w8, [x9, #104]
	ldur	w8, [x29, #-156]                // 4-byte Folded Reload
	str	w8, [x9, #112]
	ldur	w8, [x29, #-152]                // 4-byte Folded Reload
	str	w8, [x9, #120]
	ldur	w8, [x29, #-148]                // 4-byte Folded Reload
	str	w8, [x9, #128]
	ldur	w8, [x29, #-144]                // 4-byte Folded Reload
	str	w8, [x9, #136]
	ldur	w8, [x29, #-140]                // 4-byte Folded Reload
	str	w8, [x9, #144]
	ldur	w8, [x29, #-136]                // 4-byte Folded Reload
	str	w8, [x9, #152]
	ldur	w8, [x29, #-132]                // 4-byte Folded Reload
	str	w8, [x9, #160]
	ldur	w8, [x29, #-128]                // 4-byte Folded Reload
	str	w8, [x9, #168]
	ldur	w8, [x29, #-124]                // 4-byte Folded Reload
	str	w8, [x9, #176]
	ldur	w8, [x29, #-120]                // 4-byte Folded Reload
	str	w8, [x9, #184]
	ldur	w8, [x29, #-116]                // 4-byte Folded Reload
	str	w8, [x9, #192]
	ldur	w8, [x29, #-112]                // 4-byte Folded Reload
	str	w8, [x9, #200]
	ldur	w8, [x29, #-108]                // 4-byte Folded Reload
	str	w0, [x9, #208]
	ldur	x0, [x29, #-104]                // 8-byte Folded Reload
	str	w30, [x9, #216]
	str	w28, [x9, #224]
	str	w27, [x9, #232]
	str	w26, [x9, #240]
	str	x25, [x9, #248]
	str	w24, [x9, #256]
                                        // kill: def $w23 killed $w23 killed $x23
	str	w23, [x9, #264]
                                        // kill: def $w22 killed $w22 killed $x22
	str	w22, [x9, #272]
                                        // kill: def $w21 killed $w21 killed $x21
	str	w21, [x9, #280]
                                        // kill: def $w20 killed $w20 killed $x20
	str	w20, [x9, #288]
	str	w19, [x9, #296]
	str	w18, [x9, #304]
	str	w17, [x9, #312]
	str	w16, [x9, #320]
	str	w15, [x9, #328]
	str	w14, [x9, #336]
	str	x13, [x9, #344]
	str	w12, [x9, #352]
	str	w11, [x9, #360]
	str	w10, [x9, #368]
	str	w8, [x9, #376]
	bl	snprintf
	add	sp, sp, #656
	ldp	x20, x19, [sp, #80]             // 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             // 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             // 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             // 16-byte Folded Reload
	ldp	x28, x27, [sp, #16]             // 16-byte Folded Reload
	ldp	x29, x30, [sp], #96             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	fmt_stats, .Lfunc_end0-fmt_stats
                                        // -- End function
	.type	RUSAGE_SELF,@object             // @RUSAGE_SELF
	.bss
	.globl	RUSAGE_SELF
	.p2align	2
RUSAGE_SELF:
	.word	0                               // 0x0
	.size	RUSAGE_SELF, 4
	.type	STATS_FMT,@object               // @STATS_FMT
	.globl	STATS_FMT
	.p2align	3
STATS_FMT:
	.xword	0
	.size	STATS_FMT, 8
	.type	global_stat,@object             // @global_stat
	.globl	global_stat
	.p2align	2
global_stat:
	.zero	20
	.size	global_stat, 20
	.type	ready_ct,@object                // @ready_ct
	.globl	ready_ct
	.p2align	2
ready_ct:
	.word	0                               // 0x0
	.size	ready_ct, 4
	.type	op_ct,@object                   // @op_ct
	.globl	op_ct
	.p2align	3
op_ct:
	.xword	0
	.size	op_ct, 8
	.type	OP_PUT,@object                  // @OP_PUT
	.globl	OP_PUT
	.p2align	3
OP_PUT:
	.xword	0                               // 0x0
	.size	OP_PUT, 8
	.type	OP_PEEKJOB,@object              // @OP_PEEKJOB
	.globl	OP_PEEKJOB
	.p2align	3
OP_PEEKJOB:
	.xword	0                               // 0x0
	.size	OP_PEEKJOB, 8
	.type	OP_PEEK_READY,@object           // @OP_PEEK_READY
	.globl	OP_PEEK_READY
	.p2align	3
OP_PEEK_READY:
	.xword	0                               // 0x0
	.size	OP_PEEK_READY, 8
	.type	OP_PEEK_DELAYED,@object         // @OP_PEEK_DELAYED
	.globl	OP_PEEK_DELAYED
	.p2align	3
OP_PEEK_DELAYED:
	.xword	0                               // 0x0
	.size	OP_PEEK_DELAYED, 8
	.type	OP_PEEK_BURIED,@object          // @OP_PEEK_BURIED
	.globl	OP_PEEK_BURIED
	.p2align	3
OP_PEEK_BURIED:
	.xword	0                               // 0x0
	.size	OP_PEEK_BURIED, 8
	.type	OP_RESERVE,@object              // @OP_RESERVE
	.globl	OP_RESERVE
	.p2align	3
OP_RESERVE:
	.xword	0                               // 0x0
	.size	OP_RESERVE, 8
	.type	OP_RESERVE_TIMEOUT,@object      // @OP_RESERVE_TIMEOUT
	.globl	OP_RESERVE_TIMEOUT
	.p2align	3
OP_RESERVE_TIMEOUT:
	.xword	0                               // 0x0
	.size	OP_RESERVE_TIMEOUT, 8
	.type	OP_DELETE,@object               // @OP_DELETE
	.globl	OP_DELETE
	.p2align	3
OP_DELETE:
	.xword	0                               // 0x0
	.size	OP_DELETE, 8
	.type	OP_RELEASE,@object              // @OP_RELEASE
	.globl	OP_RELEASE
	.p2align	3
OP_RELEASE:
	.xword	0                               // 0x0
	.size	OP_RELEASE, 8
	.type	OP_USE,@object                  // @OP_USE
	.globl	OP_USE
	.p2align	3
OP_USE:
	.xword	0                               // 0x0
	.size	OP_USE, 8
	.type	OP_WATCH,@object                // @OP_WATCH
	.globl	OP_WATCH
	.p2align	3
OP_WATCH:
	.xword	0                               // 0x0
	.size	OP_WATCH, 8
	.type	OP_IGNORE,@object               // @OP_IGNORE
	.globl	OP_IGNORE
	.p2align	3
OP_IGNORE:
	.xword	0                               // 0x0
	.size	OP_IGNORE, 8
	.type	OP_BURY,@object                 // @OP_BURY
	.globl	OP_BURY
	.p2align	3
OP_BURY:
	.xword	0                               // 0x0
	.size	OP_BURY, 8
	.type	OP_KICK,@object                 // @OP_KICK
	.globl	OP_KICK
	.p2align	3
OP_KICK:
	.xword	0                               // 0x0
	.size	OP_KICK, 8
	.type	OP_TOUCH,@object                // @OP_TOUCH
	.globl	OP_TOUCH
	.p2align	3
OP_TOUCH:
	.xword	0                               // 0x0
	.size	OP_TOUCH, 8
	.type	OP_STATS,@object                // @OP_STATS
	.globl	OP_STATS
	.p2align	3
OP_STATS:
	.xword	0                               // 0x0
	.size	OP_STATS, 8
	.type	OP_STATSJOB,@object             // @OP_STATSJOB
	.globl	OP_STATSJOB
	.p2align	3
OP_STATSJOB:
	.xword	0                               // 0x0
	.size	OP_STATSJOB, 8
	.type	OP_STATS_TUBE,@object           // @OP_STATS_TUBE
	.globl	OP_STATS_TUBE
	.p2align	3
OP_STATS_TUBE:
	.xword	0                               // 0x0
	.size	OP_STATS_TUBE, 8
	.type	OP_LIST_TUBES,@object           // @OP_LIST_TUBES
	.globl	OP_LIST_TUBES
	.p2align	3
OP_LIST_TUBES:
	.xword	0                               // 0x0
	.size	OP_LIST_TUBES, 8
	.type	OP_LIST_TUBE_USED,@object       // @OP_LIST_TUBE_USED
	.globl	OP_LIST_TUBE_USED
	.p2align	3
OP_LIST_TUBE_USED:
	.xword	0                               // 0x0
	.size	OP_LIST_TUBE_USED, 8
	.type	OP_LIST_TUBES_WATCHED,@object   // @OP_LIST_TUBES_WATCHED
	.globl	OP_LIST_TUBES_WATCHED
	.p2align	3
OP_LIST_TUBES_WATCHED:
	.xword	0                               // 0x0
	.size	OP_LIST_TUBES_WATCHED, 8
	.type	OP_PAUSE_TUBE,@object           // @OP_PAUSE_TUBE
	.globl	OP_PAUSE_TUBE
	.p2align	3
OP_PAUSE_TUBE:
	.xword	0                               // 0x0
	.size	OP_PAUSE_TUBE, 8
	.type	timeout_ct,@object              // @timeout_ct
	.globl	timeout_ct
	.p2align	2
timeout_ct:
	.word	0                               // 0x0
	.size	timeout_ct, 4
	.type	job_data_size_limit,@object     // @job_data_size_limit
	.globl	job_data_size_limit
	.p2align	2
job_data_size_limit:
	.word	0                               // 0x0
	.size	job_data_size_limit, 4
	.type	tubes,@object                   // @tubes
	.globl	tubes
	.p2align	2
tubes:
	.zero	4
	.size	tubes, 4
	.type	version,@object                 // @version
	.globl	version
	.p2align	2
version:
	.word	0                               // 0x0
	.size	version, 4
	.type	drain_mode,@object              // @drain_mode
	.globl	drain_mode
	.p2align	3
drain_mode:
	.xword	0                               // 0x0
	.size	drain_mode, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"true"
	.size	.L.str, 5
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"false"
	.size	.L.str.1, 6
	.type	instance_hex,@object            // @instance_hex
	.bss
	.globl	instance_hex
	.p2align	2
instance_hex:
	.word	0                               // 0x0
	.size	instance_hex, 4
	.type	node_info,@object               // @node_info
	.globl	node_info
	.p2align	2
node_info:
	.zero	12
	.size	node_info, 12
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