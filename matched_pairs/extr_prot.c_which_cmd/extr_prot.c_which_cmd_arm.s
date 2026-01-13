	.text
	.p2align	2                               // -- Begin function which_cmd
	.type	which_cmd,@function
which_cmd:                              // @which_cmd
// %bb.0:
	sub	sp, sp, #240
	stp	x29, x30, [sp, #224]            // 16-byte Folded Spill
	add	x29, sp, #224
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-20]                 // 4-byte Folded Spill
	adrp	x8, CMD_PUT
	ldr	w9, [x8, :lo12:CMD_PUT]
	stur	w9, [x29, #-24]                 // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_PUT]
	bl	CONSTSTRLEN
	ldur	w1, [x29, #-24]                 // 4-byte Folded Reload
	mov	w2, w0
	ldur	w0, [x29, #-20]                 // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, OP_PUT
	ldr	w8, [x8, :lo12:OP_PUT]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_2:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-28]                 // 4-byte Folded Spill
	adrp	x8, CMD_PEEKJOB
	ldr	w9, [x8, :lo12:CMD_PEEKJOB]
	stur	w9, [x29, #-32]                 // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_PEEKJOB]
	bl	CONSTSTRLEN
	ldur	w1, [x29, #-32]                 // 4-byte Folded Reload
	mov	w2, w0
	ldur	w0, [x29, #-28]                 // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, OP_PEEKJOB
	ldr	w8, [x8, :lo12:OP_PEEKJOB]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-36]                 // 4-byte Folded Spill
	adrp	x8, CMD_PEEK_READY
	ldr	w9, [x8, :lo12:CMD_PEEK_READY]
	stur	w9, [x29, #-40]                 // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_PEEK_READY]
	bl	CONSTSTRLEN
	ldur	w1, [x29, #-40]                 // 4-byte Folded Reload
	mov	w2, w0
	ldur	w0, [x29, #-36]                 // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, OP_PEEK_READY
	ldr	w8, [x8, :lo12:OP_PEEK_READY]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_6:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-44]                 // 4-byte Folded Spill
	adrp	x8, CMD_PEEK_DELAYED
	ldr	w9, [x8, :lo12:CMD_PEEK_DELAYED]
	stur	w9, [x29, #-48]                 // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_PEEK_DELAYED]
	bl	CONSTSTRLEN
	ldur	w1, [x29, #-48]                 // 4-byte Folded Reload
	mov	w2, w0
	ldur	w0, [x29, #-44]                 // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, OP_PEEK_DELAYED
	ldr	w8, [x8, :lo12:OP_PEEK_DELAYED]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_8:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-52]                 // 4-byte Folded Spill
	adrp	x8, CMD_PEEK_BURIED
	ldr	w9, [x8, :lo12:CMD_PEEK_BURIED]
	stur	w9, [x29, #-56]                 // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_PEEK_BURIED]
	bl	CONSTSTRLEN
	ldur	w1, [x29, #-56]                 // 4-byte Folded Reload
	mov	w2, w0
	ldur	w0, [x29, #-52]                 // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, OP_PEEK_BURIED
	ldr	w8, [x8, :lo12:OP_PEEK_BURIED]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_10:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-60]                 // 4-byte Folded Spill
	adrp	x8, CMD_RESERVE_TIMEOUT
	ldr	w9, [x8, :lo12:CMD_RESERVE_TIMEOUT]
	stur	w9, [x29, #-64]                 // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_RESERVE_TIMEOUT]
	bl	CONSTSTRLEN
	ldur	w1, [x29, #-64]                 // 4-byte Folded Reload
	mov	w2, w0
	ldur	w0, [x29, #-60]                 // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x8, OP_RESERVE_TIMEOUT
	ldr	w8, [x8, :lo12:OP_RESERVE_TIMEOUT]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_12:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-68]                 // 4-byte Folded Spill
	adrp	x8, CMD_RESERVE_JOB
	ldr	w9, [x8, :lo12:CMD_RESERVE_JOB]
	stur	w9, [x29, #-72]                 // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_RESERVE_JOB]
	bl	CONSTSTRLEN
	ldur	w1, [x29, #-72]                 // 4-byte Folded Reload
	mov	w2, w0
	ldur	w0, [x29, #-68]                 // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	adrp	x8, OP_RESERVE_JOB
	ldr	w8, [x8, :lo12:OP_RESERVE_JOB]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_14:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-76]                 // 4-byte Folded Spill
	adrp	x8, CMD_RESERVE
	ldr	w9, [x8, :lo12:CMD_RESERVE]
	stur	w9, [x29, #-80]                 // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_RESERVE]
	bl	CONSTSTRLEN
	ldur	w1, [x29, #-80]                 // 4-byte Folded Reload
	mov	w2, w0
	ldur	w0, [x29, #-76]                 // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	adrp	x8, OP_RESERVE
	ldr	w8, [x8, :lo12:OP_RESERVE]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_16:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-84]                 // 4-byte Folded Spill
	adrp	x8, CMD_DELETE
	ldr	w9, [x8, :lo12:CMD_DELETE]
	stur	w9, [x29, #-88]                 // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_DELETE]
	bl	CONSTSTRLEN
	ldur	w1, [x29, #-88]                 // 4-byte Folded Reload
	mov	w2, w0
	ldur	w0, [x29, #-84]                 // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	adrp	x8, OP_DELETE
	ldr	w8, [x8, :lo12:OP_DELETE]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_18:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-92]                 // 4-byte Folded Spill
	adrp	x8, CMD_RELEASE
	ldr	w9, [x8, :lo12:CMD_RELEASE]
	stur	w9, [x29, #-96]                 // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_RELEASE]
	bl	CONSTSTRLEN
	ldur	w1, [x29, #-96]                 // 4-byte Folded Reload
	mov	w2, w0
	ldur	w0, [x29, #-92]                 // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_20
	b	.LBB0_19
.LBB0_19:
	adrp	x8, OP_RELEASE
	ldr	w8, [x8, :lo12:OP_RELEASE]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_20:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-100]                // 4-byte Folded Spill
	adrp	x8, CMD_BURY
	ldr	w9, [x8, :lo12:CMD_BURY]
	stur	w9, [x29, #-104]                // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_BURY]
	bl	CONSTSTRLEN
	ldur	w1, [x29, #-104]                // 4-byte Folded Reload
	mov	w2, w0
	ldur	w0, [x29, #-100]                // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_22
	b	.LBB0_21
.LBB0_21:
	adrp	x8, OP_BURY
	ldr	w8, [x8, :lo12:OP_BURY]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_22:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	stur	w8, [x29, #-108]                // 4-byte Folded Spill
	adrp	x8, CMD_KICK
	ldr	w9, [x8, :lo12:CMD_KICK]
	str	w9, [sp, #112]                  // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_KICK]
	bl	CONSTSTRLEN
	ldr	w1, [sp, #112]                  // 4-byte Folded Reload
	mov	w2, w0
	ldur	w0, [x29, #-108]                // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_24
	b	.LBB0_23
.LBB0_23:
	adrp	x8, OP_KICK
	ldr	w8, [x8, :lo12:OP_KICK]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_24:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #108]                  // 4-byte Folded Spill
	adrp	x8, CMD_KICKJOB
	ldr	w9, [x8, :lo12:CMD_KICKJOB]
	str	w9, [sp, #104]                  // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_KICKJOB]
	bl	CONSTSTRLEN
	ldr	w1, [sp, #104]                  // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #108]                  // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_26
	b	.LBB0_25
.LBB0_25:
	adrp	x8, OP_KICKJOB
	ldr	w8, [x8, :lo12:OP_KICKJOB]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_26:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #100]                  // 4-byte Folded Spill
	adrp	x8, CMD_TOUCH
	ldr	w9, [x8, :lo12:CMD_TOUCH]
	str	w9, [sp, #96]                   // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_TOUCH]
	bl	CONSTSTRLEN
	ldr	w1, [sp, #96]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #100]                  // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_28
	b	.LBB0_27
.LBB0_27:
	adrp	x8, OP_TOUCH
	ldr	w8, [x8, :lo12:OP_TOUCH]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_28:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #92]                   // 4-byte Folded Spill
	adrp	x8, CMD_STATSJOB
	ldr	w9, [x8, :lo12:CMD_STATSJOB]
	str	w9, [sp, #88]                   // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_STATSJOB]
	bl	CONSTSTRLEN
	ldr	w1, [sp, #88]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #92]                   // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_30
	b	.LBB0_29
.LBB0_29:
	adrp	x8, OP_STATSJOB
	ldr	w8, [x8, :lo12:OP_STATSJOB]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_30:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #84]                   // 4-byte Folded Spill
	adrp	x8, CMD_STATS_TUBE
	ldr	w9, [x8, :lo12:CMD_STATS_TUBE]
	str	w9, [sp, #80]                   // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_STATS_TUBE]
	bl	CONSTSTRLEN
	ldr	w1, [sp, #80]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #84]                   // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_32
	b	.LBB0_31
.LBB0_31:
	adrp	x8, OP_STATS_TUBE
	ldr	w8, [x8, :lo12:OP_STATS_TUBE]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_32:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #76]                   // 4-byte Folded Spill
	adrp	x8, CMD_STATS
	ldr	w9, [x8, :lo12:CMD_STATS]
	str	w9, [sp, #72]                   // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_STATS]
	bl	CONSTSTRLEN
	ldr	w1, [sp, #72]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #76]                   // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_34
	b	.LBB0_33
.LBB0_33:
	adrp	x8, OP_STATS
	ldr	w8, [x8, :lo12:OP_STATS]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_34:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #68]                   // 4-byte Folded Spill
	adrp	x8, CMD_USE
	ldr	w9, [x8, :lo12:CMD_USE]
	str	w9, [sp, #64]                   // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_USE]
	bl	CONSTSTRLEN
	ldr	w1, [sp, #64]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #68]                   // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_36
	b	.LBB0_35
.LBB0_35:
	adrp	x8, OP_USE
	ldr	w8, [x8, :lo12:OP_USE]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_36:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #60]                   // 4-byte Folded Spill
	adrp	x8, CMD_WATCH
	ldr	w9, [x8, :lo12:CMD_WATCH]
	str	w9, [sp, #56]                   // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_WATCH]
	bl	CONSTSTRLEN
	ldr	w1, [sp, #56]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #60]                   // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_38
	b	.LBB0_37
.LBB0_37:
	adrp	x8, OP_WATCH
	ldr	w8, [x8, :lo12:OP_WATCH]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_38:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #52]                   // 4-byte Folded Spill
	adrp	x8, CMD_IGNORE
	ldr	w9, [x8, :lo12:CMD_IGNORE]
	str	w9, [sp, #48]                   // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_IGNORE]
	bl	CONSTSTRLEN
	ldr	w1, [sp, #48]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #52]                   // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_40
	b	.LBB0_39
.LBB0_39:
	adrp	x8, OP_IGNORE
	ldr	w8, [x8, :lo12:OP_IGNORE]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_40:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #44]                   // 4-byte Folded Spill
	adrp	x8, CMD_LIST_TUBES_WATCHED
	ldr	w9, [x8, :lo12:CMD_LIST_TUBES_WATCHED]
	str	w9, [sp, #40]                   // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_LIST_TUBES_WATCHED]
	bl	CONSTSTRLEN
	ldr	w1, [sp, #40]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #44]                   // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_42
	b	.LBB0_41
.LBB0_41:
	adrp	x8, OP_LIST_TUBES_WATCHED
	ldr	w8, [x8, :lo12:OP_LIST_TUBES_WATCHED]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_42:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #36]                   // 4-byte Folded Spill
	adrp	x8, CMD_LIST_TUBE_USED
	ldr	w9, [x8, :lo12:CMD_LIST_TUBE_USED]
	str	w9, [sp, #32]                   // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_LIST_TUBE_USED]
	bl	CONSTSTRLEN
	ldr	w1, [sp, #32]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #36]                   // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_44
	b	.LBB0_43
.LBB0_43:
	adrp	x8, OP_LIST_TUBE_USED
	ldr	w8, [x8, :lo12:OP_LIST_TUBE_USED]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_44:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	adrp	x8, CMD_LIST_TUBES
	ldr	w9, [x8, :lo12:CMD_LIST_TUBES]
	str	w9, [sp, #24]                   // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_LIST_TUBES]
	bl	CONSTSTRLEN
	ldr	w1, [sp, #24]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #28]                   // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_46
	b	.LBB0_45
.LBB0_45:
	adrp	x8, OP_LIST_TUBES
	ldr	w8, [x8, :lo12:OP_LIST_TUBES]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_46:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	adrp	x8, CMD_QUIT
	ldr	w9, [x8, :lo12:CMD_QUIT]
	str	w9, [sp, #16]                   // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_QUIT]
	bl	CONSTSTRLEN
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_48
	b	.LBB0_47
.LBB0_47:
	adrp	x8, OP_QUIT
	ldr	w8, [x8, :lo12:OP_QUIT]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_48:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	adrp	x8, CMD_PAUSE_TUBE
	ldr	w9, [x8, :lo12:CMD_PAUSE_TUBE]
	str	w9, [sp, #8]                    // 4-byte Folded Spill
	ldr	w0, [x8, :lo12:CMD_PAUSE_TUBE]
	bl	CONSTSTRLEN
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	strncmp
	cbnz	w0, .LBB0_50
	b	.LBB0_49
.LBB0_49:
	adrp	x8, OP_PAUSE_TUBE
	ldr	w8, [x8, :lo12:OP_PAUSE_TUBE]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_50:
	adrp	x8, OP_UNKNOWN
	ldr	w8, [x8, :lo12:OP_UNKNOWN]
	stur	w8, [x29, #-4]
	b	.LBB0_51
.LBB0_51:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #224]            // 16-byte Folded Reload
	add	sp, sp, #240
	ret
.Lfunc_end0:
	.size	which_cmd, .Lfunc_end0-which_cmd
                                        // -- End function
	.type	CMD_PUT,@object                 // @CMD_PUT
	.bss
	.globl	CMD_PUT
	.p2align	2
CMD_PUT:
	.word	0                               // 0x0
	.size	CMD_PUT, 4
	.type	OP_PUT,@object                  // @OP_PUT
	.globl	OP_PUT
	.p2align	2
OP_PUT:
	.word	0                               // 0x0
	.size	OP_PUT, 4
	.type	CMD_PEEKJOB,@object             // @CMD_PEEKJOB
	.globl	CMD_PEEKJOB
	.p2align	2
CMD_PEEKJOB:
	.word	0                               // 0x0
	.size	CMD_PEEKJOB, 4
	.type	OP_PEEKJOB,@object              // @OP_PEEKJOB
	.globl	OP_PEEKJOB
	.p2align	2
OP_PEEKJOB:
	.word	0                               // 0x0
	.size	OP_PEEKJOB, 4
	.type	CMD_PEEK_READY,@object          // @CMD_PEEK_READY
	.globl	CMD_PEEK_READY
	.p2align	2
CMD_PEEK_READY:
	.word	0                               // 0x0
	.size	CMD_PEEK_READY, 4
	.type	OP_PEEK_READY,@object           // @OP_PEEK_READY
	.globl	OP_PEEK_READY
	.p2align	2
OP_PEEK_READY:
	.word	0                               // 0x0
	.size	OP_PEEK_READY, 4
	.type	CMD_PEEK_DELAYED,@object        // @CMD_PEEK_DELAYED
	.globl	CMD_PEEK_DELAYED
	.p2align	2
CMD_PEEK_DELAYED:
	.word	0                               // 0x0
	.size	CMD_PEEK_DELAYED, 4
	.type	OP_PEEK_DELAYED,@object         // @OP_PEEK_DELAYED
	.globl	OP_PEEK_DELAYED
	.p2align	2
OP_PEEK_DELAYED:
	.word	0                               // 0x0
	.size	OP_PEEK_DELAYED, 4
	.type	CMD_PEEK_BURIED,@object         // @CMD_PEEK_BURIED
	.globl	CMD_PEEK_BURIED
	.p2align	2
CMD_PEEK_BURIED:
	.word	0                               // 0x0
	.size	CMD_PEEK_BURIED, 4
	.type	OP_PEEK_BURIED,@object          // @OP_PEEK_BURIED
	.globl	OP_PEEK_BURIED
	.p2align	2
OP_PEEK_BURIED:
	.word	0                               // 0x0
	.size	OP_PEEK_BURIED, 4
	.type	CMD_RESERVE_TIMEOUT,@object     // @CMD_RESERVE_TIMEOUT
	.globl	CMD_RESERVE_TIMEOUT
	.p2align	2
CMD_RESERVE_TIMEOUT:
	.word	0                               // 0x0
	.size	CMD_RESERVE_TIMEOUT, 4
	.type	OP_RESERVE_TIMEOUT,@object      // @OP_RESERVE_TIMEOUT
	.globl	OP_RESERVE_TIMEOUT
	.p2align	2
OP_RESERVE_TIMEOUT:
	.word	0                               // 0x0
	.size	OP_RESERVE_TIMEOUT, 4
	.type	CMD_RESERVE_JOB,@object         // @CMD_RESERVE_JOB
	.globl	CMD_RESERVE_JOB
	.p2align	2
CMD_RESERVE_JOB:
	.word	0                               // 0x0
	.size	CMD_RESERVE_JOB, 4
	.type	OP_RESERVE_JOB,@object          // @OP_RESERVE_JOB
	.globl	OP_RESERVE_JOB
	.p2align	2
OP_RESERVE_JOB:
	.word	0                               // 0x0
	.size	OP_RESERVE_JOB, 4
	.type	CMD_RESERVE,@object             // @CMD_RESERVE
	.globl	CMD_RESERVE
	.p2align	2
CMD_RESERVE:
	.word	0                               // 0x0
	.size	CMD_RESERVE, 4
	.type	OP_RESERVE,@object              // @OP_RESERVE
	.globl	OP_RESERVE
	.p2align	2
OP_RESERVE:
	.word	0                               // 0x0
	.size	OP_RESERVE, 4
	.type	CMD_DELETE,@object              // @CMD_DELETE
	.globl	CMD_DELETE
	.p2align	2
CMD_DELETE:
	.word	0                               // 0x0
	.size	CMD_DELETE, 4
	.type	OP_DELETE,@object               // @OP_DELETE
	.globl	OP_DELETE
	.p2align	2
OP_DELETE:
	.word	0                               // 0x0
	.size	OP_DELETE, 4
	.type	CMD_RELEASE,@object             // @CMD_RELEASE
	.globl	CMD_RELEASE
	.p2align	2
CMD_RELEASE:
	.word	0                               // 0x0
	.size	CMD_RELEASE, 4
	.type	OP_RELEASE,@object              // @OP_RELEASE
	.globl	OP_RELEASE
	.p2align	2
OP_RELEASE:
	.word	0                               // 0x0
	.size	OP_RELEASE, 4
	.type	CMD_BURY,@object                // @CMD_BURY
	.globl	CMD_BURY
	.p2align	2
CMD_BURY:
	.word	0                               // 0x0
	.size	CMD_BURY, 4
	.type	OP_BURY,@object                 // @OP_BURY
	.globl	OP_BURY
	.p2align	2
OP_BURY:
	.word	0                               // 0x0
	.size	OP_BURY, 4
	.type	CMD_KICK,@object                // @CMD_KICK
	.globl	CMD_KICK
	.p2align	2
CMD_KICK:
	.word	0                               // 0x0
	.size	CMD_KICK, 4
	.type	OP_KICK,@object                 // @OP_KICK
	.globl	OP_KICK
	.p2align	2
OP_KICK:
	.word	0                               // 0x0
	.size	OP_KICK, 4
	.type	CMD_KICKJOB,@object             // @CMD_KICKJOB
	.globl	CMD_KICKJOB
	.p2align	2
CMD_KICKJOB:
	.word	0                               // 0x0
	.size	CMD_KICKJOB, 4
	.type	OP_KICKJOB,@object              // @OP_KICKJOB
	.globl	OP_KICKJOB
	.p2align	2
OP_KICKJOB:
	.word	0                               // 0x0
	.size	OP_KICKJOB, 4
	.type	CMD_TOUCH,@object               // @CMD_TOUCH
	.globl	CMD_TOUCH
	.p2align	2
CMD_TOUCH:
	.word	0                               // 0x0
	.size	CMD_TOUCH, 4
	.type	OP_TOUCH,@object                // @OP_TOUCH
	.globl	OP_TOUCH
	.p2align	2
OP_TOUCH:
	.word	0                               // 0x0
	.size	OP_TOUCH, 4
	.type	CMD_STATSJOB,@object            // @CMD_STATSJOB
	.globl	CMD_STATSJOB
	.p2align	2
CMD_STATSJOB:
	.word	0                               // 0x0
	.size	CMD_STATSJOB, 4
	.type	OP_STATSJOB,@object             // @OP_STATSJOB
	.globl	OP_STATSJOB
	.p2align	2
OP_STATSJOB:
	.word	0                               // 0x0
	.size	OP_STATSJOB, 4
	.type	CMD_STATS_TUBE,@object          // @CMD_STATS_TUBE
	.globl	CMD_STATS_TUBE
	.p2align	2
CMD_STATS_TUBE:
	.word	0                               // 0x0
	.size	CMD_STATS_TUBE, 4
	.type	OP_STATS_TUBE,@object           // @OP_STATS_TUBE
	.globl	OP_STATS_TUBE
	.p2align	2
OP_STATS_TUBE:
	.word	0                               // 0x0
	.size	OP_STATS_TUBE, 4
	.type	CMD_STATS,@object               // @CMD_STATS
	.globl	CMD_STATS
	.p2align	2
CMD_STATS:
	.word	0                               // 0x0
	.size	CMD_STATS, 4
	.type	OP_STATS,@object                // @OP_STATS
	.globl	OP_STATS
	.p2align	2
OP_STATS:
	.word	0                               // 0x0
	.size	OP_STATS, 4
	.type	CMD_USE,@object                 // @CMD_USE
	.globl	CMD_USE
	.p2align	2
CMD_USE:
	.word	0                               // 0x0
	.size	CMD_USE, 4
	.type	OP_USE,@object                  // @OP_USE
	.globl	OP_USE
	.p2align	2
OP_USE:
	.word	0                               // 0x0
	.size	OP_USE, 4
	.type	CMD_WATCH,@object               // @CMD_WATCH
	.globl	CMD_WATCH
	.p2align	2
CMD_WATCH:
	.word	0                               // 0x0
	.size	CMD_WATCH, 4
	.type	OP_WATCH,@object                // @OP_WATCH
	.globl	OP_WATCH
	.p2align	2
OP_WATCH:
	.word	0                               // 0x0
	.size	OP_WATCH, 4
	.type	CMD_IGNORE,@object              // @CMD_IGNORE
	.globl	CMD_IGNORE
	.p2align	2
CMD_IGNORE:
	.word	0                               // 0x0
	.size	CMD_IGNORE, 4
	.type	OP_IGNORE,@object               // @OP_IGNORE
	.globl	OP_IGNORE
	.p2align	2
OP_IGNORE:
	.word	0                               // 0x0
	.size	OP_IGNORE, 4
	.type	CMD_LIST_TUBES_WATCHED,@object  // @CMD_LIST_TUBES_WATCHED
	.globl	CMD_LIST_TUBES_WATCHED
	.p2align	2
CMD_LIST_TUBES_WATCHED:
	.word	0                               // 0x0
	.size	CMD_LIST_TUBES_WATCHED, 4
	.type	OP_LIST_TUBES_WATCHED,@object   // @OP_LIST_TUBES_WATCHED
	.globl	OP_LIST_TUBES_WATCHED
	.p2align	2
OP_LIST_TUBES_WATCHED:
	.word	0                               // 0x0
	.size	OP_LIST_TUBES_WATCHED, 4
	.type	CMD_LIST_TUBE_USED,@object      // @CMD_LIST_TUBE_USED
	.globl	CMD_LIST_TUBE_USED
	.p2align	2
CMD_LIST_TUBE_USED:
	.word	0                               // 0x0
	.size	CMD_LIST_TUBE_USED, 4
	.type	OP_LIST_TUBE_USED,@object       // @OP_LIST_TUBE_USED
	.globl	OP_LIST_TUBE_USED
	.p2align	2
OP_LIST_TUBE_USED:
	.word	0                               // 0x0
	.size	OP_LIST_TUBE_USED, 4
	.type	CMD_LIST_TUBES,@object          // @CMD_LIST_TUBES
	.globl	CMD_LIST_TUBES
	.p2align	2
CMD_LIST_TUBES:
	.word	0                               // 0x0
	.size	CMD_LIST_TUBES, 4
	.type	OP_LIST_TUBES,@object           // @OP_LIST_TUBES
	.globl	OP_LIST_TUBES
	.p2align	2
OP_LIST_TUBES:
	.word	0                               // 0x0
	.size	OP_LIST_TUBES, 4
	.type	CMD_QUIT,@object                // @CMD_QUIT
	.globl	CMD_QUIT
	.p2align	2
CMD_QUIT:
	.word	0                               // 0x0
	.size	CMD_QUIT, 4
	.type	OP_QUIT,@object                 // @OP_QUIT
	.globl	OP_QUIT
	.p2align	2
OP_QUIT:
	.word	0                               // 0x0
	.size	OP_QUIT, 4
	.type	CMD_PAUSE_TUBE,@object          // @CMD_PAUSE_TUBE
	.globl	CMD_PAUSE_TUBE
	.p2align	2
CMD_PAUSE_TUBE:
	.word	0                               // 0x0
	.size	CMD_PAUSE_TUBE, 4
	.type	OP_PAUSE_TUBE,@object           // @OP_PAUSE_TUBE
	.globl	OP_PAUSE_TUBE
	.p2align	2
OP_PAUSE_TUBE:
	.word	0                               // 0x0
	.size	OP_PAUSE_TUBE, 4
	.type	OP_UNKNOWN,@object              // @OP_UNKNOWN
	.globl	OP_UNKNOWN
	.p2align	2
OP_UNKNOWN:
	.word	0                               // 0x0
	.size	OP_UNKNOWN, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym which_cmd
	.addrsig_sym strncmp
	.addrsig_sym CONSTSTRLEN
	.addrsig_sym CMD_PUT
	.addrsig_sym OP_PUT
	.addrsig_sym CMD_PEEKJOB
	.addrsig_sym OP_PEEKJOB
	.addrsig_sym CMD_PEEK_READY
	.addrsig_sym OP_PEEK_READY
	.addrsig_sym CMD_PEEK_DELAYED
	.addrsig_sym OP_PEEK_DELAYED
	.addrsig_sym CMD_PEEK_BURIED
	.addrsig_sym OP_PEEK_BURIED
	.addrsig_sym CMD_RESERVE_TIMEOUT
	.addrsig_sym OP_RESERVE_TIMEOUT
	.addrsig_sym CMD_RESERVE_JOB
	.addrsig_sym OP_RESERVE_JOB
	.addrsig_sym CMD_RESERVE
	.addrsig_sym OP_RESERVE
	.addrsig_sym CMD_DELETE
	.addrsig_sym OP_DELETE
	.addrsig_sym CMD_RELEASE
	.addrsig_sym OP_RELEASE
	.addrsig_sym CMD_BURY
	.addrsig_sym OP_BURY
	.addrsig_sym CMD_KICK
	.addrsig_sym OP_KICK
	.addrsig_sym CMD_KICKJOB
	.addrsig_sym OP_KICKJOB
	.addrsig_sym CMD_TOUCH
	.addrsig_sym OP_TOUCH
	.addrsig_sym CMD_STATSJOB
	.addrsig_sym OP_STATSJOB
	.addrsig_sym CMD_STATS_TUBE
	.addrsig_sym OP_STATS_TUBE
	.addrsig_sym CMD_STATS
	.addrsig_sym OP_STATS
	.addrsig_sym CMD_USE
	.addrsig_sym OP_USE
	.addrsig_sym CMD_WATCH
	.addrsig_sym OP_WATCH
	.addrsig_sym CMD_IGNORE
	.addrsig_sym OP_IGNORE
	.addrsig_sym CMD_LIST_TUBES_WATCHED
	.addrsig_sym OP_LIST_TUBES_WATCHED
	.addrsig_sym CMD_LIST_TUBE_USED
	.addrsig_sym OP_LIST_TUBE_USED
	.addrsig_sym CMD_LIST_TUBES
	.addrsig_sym OP_LIST_TUBES
	.addrsig_sym CMD_QUIT
	.addrsig_sym OP_QUIT
	.addrsig_sym CMD_PAUSE_TUBE
	.addrsig_sym OP_PAUSE_TUBE
	.addrsig_sym OP_UNKNOWN