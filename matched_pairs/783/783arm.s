	.text
	.globl	rmtInit                         // -- Begin function rmtInit
	.p2align	2
	.type	rmtInit,@function
rmtInit:                                // @rmtInit
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	adrp	x8, RMT
	add	x8, x8, :lo12:RMT
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	stur	w0, [x29, #-12]
	stur	w1, [x29, #-16]
	stur	w2, [x29, #-20]
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-24]
	adrp	x8, g_rmt_block_lock
	ldr	x8, [x8, :lo12:g_rmt_block_lock]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	bl	xSemaphoreCreateMutex
	adrp	x8, g_rmt_block_lock
	str	x0, [x8, :lo12:g_rmt_block_lock]
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	adrp	x8, g_rmt_block_lock
	ldr	x0, [x8, :lo12:g_rmt_block_lock]
	adrp	x8, portMAX_DELAY
	ldr	w1, [x8, :lo12:portMAX_DELAY]
	bl	xSemaphoreTake
	adrp	x8, pdPASS
	ldr	x8, [x8, :lo12:pdPASS]
	subs	x8, x0, x8
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_3
.LBB0_5:
	stur	xzr, [x29, #-40]
	b	.LBB0_6
.LBB0_6:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_8 Depth 2
	ldur	x8, [x29, #-40]
	adrp	x9, MAX_CHANNELS
	ldr	x9, [x9, :lo12:MAX_CHANNELS]
	subs	x8, x8, x9
	b.hs	.LBB0_19
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=1
	str	xzr, [sp, #48]
	b	.LBB0_8
.LBB0_8:                                //   Parent Loop BB0_6 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x9, [sp, #48]
	ldursw	x10, [x29, #-24]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	b.hs	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=2
	ldur	x8, [x29, #-40]
	ldr	x9, [sp, #48]
	add	x8, x8, x9
	adrp	x9, MAX_CHANNELS
	ldr	x9, [x9, :lo12:MAX_CHANNELS]
	subs	x8, x8, x9
	cset	w8, lo
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_8 Depth=2
	ldr	w8, [sp, #28]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_15
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_8 Depth=2
	adrp	x8, g_rmt_objects
	ldr	x8, [x8, :lo12:g_rmt_objects]
	ldur	x9, [x29, #-40]
	ldr	x10, [sp, #48]
	add	x9, x9, x10
	ldr	x8, [x8, x9, lsl #3]
	cbz	x8, .LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	x9, [sp, #48]
	ldur	x8, [x29, #-40]
	add	x8, x8, x9
	stur	x8, [x29, #-40]
	b	.LBB0_15
.LBB0_13:                               //   in Loop: Header=BB0_8 Depth=2
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_8 Depth=2
	ldr	x8, [sp, #48]
	add	x8, x8, #1
	str	x8, [sp, #48]
	b	.LBB0_8
.LBB0_15:                               //   in Loop: Header=BB0_6 Depth=1
	ldr	x8, [sp, #48]
	ldursw	x9, [x29, #-24]
	subs	x8, x8, x9
	b.ne	.LBB0_17
	b	.LBB0_16
.LBB0_16:
	b	.LBB0_19
.LBB0_17:                               //   in Loop: Header=BB0_6 Depth=1
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_6 Depth=1
	ldur	x8, [x29, #-40]
	add	x8, x8, #1
	stur	x8, [x29, #-40]
	b	.LBB0_6
.LBB0_19:
	ldur	x8, [x29, #-40]
	adrp	x9, MAX_CHANNELS
	ldr	x9, [x9, :lo12:MAX_CHANNELS]
	subs	x8, x8, x9
	b.eq	.LBB0_22
	b	.LBB0_20
.LBB0_20:
	ldur	x8, [x29, #-40]
	ldr	x9, [sp, #48]
	add	x8, x8, x9
	adrp	x9, MAX_CHANNELS
	ldr	x9, [x9, :lo12:MAX_CHANNELS]
	subs	x8, x8, x9
	b.hs	.LBB0_22
	b	.LBB0_21
.LBB0_21:
	ldr	x8, [sp, #48]
	ldursw	x9, [x29, #-24]
	subs	x8, x8, x9
	b.eq	.LBB0_23
	b	.LBB0_22
.LBB0_22:
	adrp	x8, g_rmt_block_lock
	ldr	x0, [x8, :lo12:g_rmt_block_lock]
	bl	xSemaphoreGive
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_33
.LBB0_23:
	ldur	w0, [x29, #-12]
	ldur	x1, [x29, #-40]
	ldur	w2, [x29, #-24]
	bl	_rmtAllocate
	stur	x0, [x29, #-32]
	adrp	x8, g_rmt_block_lock
	ldr	x0, [x8, :lo12:g_rmt_block_lock]
	bl	xSemaphoreGive
	ldur	x8, [x29, #-40]
	str	x8, [sp, #40]
	adrp	x8, g_rmt_objlocks
	ldr	x8, [x8, :lo12:g_rmt_objlocks]
	ldr	x9, [sp, #40]
	ldr	x8, [x8, x9, lsl #3]
	cbnz	x8, .LBB0_27
	b	.LBB0_24
.LBB0_24:
	bl	xSemaphoreCreateMutex
	adrp	x8, g_rmt_objlocks
	ldr	x9, [x8, :lo12:g_rmt_objlocks]
	ldr	x10, [sp, #40]
	str	x0, [x9, x10, lsl #3]
	ldr	x8, [x8, :lo12:g_rmt_objlocks]
	ldr	x9, [sp, #40]
	ldr	x8, [x8, x9, lsl #3]
	cbnz	x8, .LBB0_26
	b	.LBB0_25
.LBB0_25:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_33
.LBB0_26:
	b	.LBB0_27
.LBB0_27:
	ldr	x0, [sp, #40]
	bl	RMT_MUTEX_LOCK
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-32]
	str	w8, [x9]
	ldur	w8, [x29, #-16]
	ldur	x9, [x29, #-32]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-24]
	ldur	x9, [x29, #-32]
	str	w8, [x9, #8]
	ldr	x8, [sp, #40]
	ldur	x9, [x29, #-32]
	str	x8, [x9, #16]
	ldur	w0, [x29, #-12]
	ldr	x1, [sp, #40]
	ldur	w2, [x29, #-16]
	bl	_initPin
	ldr	x9, [sp, #32]                   // 8-byte Folded Reload
	adrp	x10, RMT
	str	x10, [sp, #8]                   // 8-byte Folded Spill
	ldr	x8, [x10, :lo12:RMT]
	ldr	x11, [sp, #40]
	mov	x12, #112
	str	x12, [sp, #16]                  // 8-byte Folded Spill
	mul	x11, x11, x12
	add	x11, x8, x11
	mov	w8, #1
	str	w8, [x11, #72]
	ldur	w11, [x29, #-24]
	ldr	x13, [x10, :lo12:RMT]
	ldr	x14, [sp, #40]
	mul	x14, x14, x12
	add	x13, x13, x14
	str	w11, [x13, #76]
	ldr	x11, [x10, :lo12:RMT]
	ldr	x13, [sp, #40]
	mul	x13, x13, x12
	add	x11, x11, x13
	str	xzr, [x11, #104]
	ldr	x11, [x10, :lo12:RMT]
	ldr	x13, [sp, #40]
	mul	x13, x13, x12
	add	x11, x11, x13
	str	xzr, [x11, #96]
	ldr	x11, [x10, :lo12:RMT]
	ldr	x13, [sp, #40]
	mul	x13, x13, x12
	add	x11, x11, x13
	str	xzr, [x11, #88]
	ldr	x11, [x10, :lo12:RMT]
	ldr	x13, [sp, #40]
	mul	x13, x13, x12
	add	x13, x11, x13
	mov	w11, #128
	str	w11, [x13, #80]
	ldr	x11, [x10, :lo12:RMT]
	ldr	x13, [sp, #40]
	mul	x13, x13, x12
	add	x11, x11, x13
	str	xzr, [x11, #64]
	ldr	x11, [x10, :lo12:RMT]
	ldr	x13, [sp, #40]
	mul	x13, x13, x12
	add	x11, x11, x13
	str	xzr, [x11, #56]
	ldr	x11, [x10, :lo12:RMT]
	ldr	x13, [sp, #40]
	mul	x13, x13, x12
	add	x11, x11, x13
	str	xzr, [x11, #48]
	ldr	x11, [x10, :lo12:RMT]
	ldr	x13, [sp, #40]
	mul	x13, x13, x12
	add	x11, x11, x13
	str	xzr, [x11, #40]
	ldr	x11, [x10, :lo12:RMT]
	ldr	x13, [sp, #40]
	mul	x13, x13, x12
	add	x11, x11, x13
	str	xzr, [x11, #32]
	ldr	x11, [x10, :lo12:RMT]
	ldr	x13, [sp, #40]
	mul	x13, x13, x12
	add	x11, x11, x13
	str	xzr, [x11, #24]
	ldr	x11, [x10, :lo12:RMT]
	ldr	x13, [sp, #40]
	mul	x13, x13, x12
	str	w8, [x11, x13]
	ldr	x10, [x10, :lo12:RMT]
	ldr	x11, [sp, #40]
	mul	x11, x11, x12
	add	x10, x10, x11
	str	xzr, [x10, #16]
	str	w8, [x9, #8]
	ldur	w8, [x29, #-16]
	cbz	w8, .LBB0_29
	b	.LBB0_28
.LBB0_28:
	adrp	x8, RMT
	ldr	x9, [x8, :lo12:RMT]
	ldr	x11, [sp, #40]
	mov	x10, #112
	mul	x11, x11, x10
	add	x9, x9, x11
	str	wzr, [x9, #4]
	ldr	x8, [x8, :lo12:RMT]
	ldr	x9, [sp, #40]
	mul	x9, x9, x10
	add	x9, x8, x9
	mov	w8, #1
	str	w8, [x9, #8]
	b	.LBB0_30
.LBB0_29:
	adrp	x9, RMT
	ldr	x8, [x9, :lo12:RMT]
	ldr	x10, [sp, #40]
	mov	x11, #112
	mul	x10, x10, x11
	add	x10, x8, x10
	mov	w8, #1
	str	w8, [x10, #4]
	ldr	x9, [x9, :lo12:RMT]
	ldr	x10, [sp, #40]
	mul	x10, x10, x11
	add	x9, x9, x10
	str	w8, [x9, #12]
	b	.LBB0_30
.LBB0_30:
	adrp	x8, intr_handle
	ldr	w8, [x8, :lo12:intr_handle]
	cbnz	w8, .LBB0_32
	b	.LBB0_31
.LBB0_31:
	adrp	x8, ETS_RMT_INTR_SOURCE
	ldr	w0, [x8, :lo12:ETS_RMT_INTR_SOURCE]
	adrp	x8, ESP_INTR_FLAG_IRAM
	ldr	x8, [x8, :lo12:ESP_INTR_FLAG_IRAM]
	mov	w1, w8
	adrp	x8, _rmt_isr
	ldr	w2, [x8, :lo12:_rmt_isr]
	mov	x3, xzr
	adrp	x4, intr_handle
	add	x4, x4, :lo12:intr_handle
	bl	esp_intr_alloc
	b	.LBB0_32
.LBB0_32:
	ldr	x0, [sp, #40]
	bl	RMT_MUTEX_UNLOCK
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	b	.LBB0_33
.LBB0_33:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	rmtInit, .Lfunc_end0-rmtInit
                                        // -- End function
	.type	g_rmt_block_lock,@object        // @g_rmt_block_lock
	.bss
	.globl	g_rmt_block_lock
	.p2align	3
g_rmt_block_lock:
	.xword	0
	.size	g_rmt_block_lock, 8
	.type	portMAX_DELAY,@object           // @portMAX_DELAY
	.globl	portMAX_DELAY
	.p2align	2
portMAX_DELAY:
	.word	0                               // 0x0
	.size	portMAX_DELAY, 4
	.type	pdPASS,@object                  // @pdPASS
	.globl	pdPASS
	.p2align	3
pdPASS:
	.xword	0                               // 0x0
	.size	pdPASS, 8
	.type	MAX_CHANNELS,@object            // @MAX_CHANNELS
	.globl	MAX_CHANNELS
	.p2align	3
MAX_CHANNELS:
	.xword	0                               // 0x0
	.size	MAX_CHANNELS, 8
	.type	g_rmt_objects,@object           // @g_rmt_objects
	.globl	g_rmt_objects
	.p2align	3
g_rmt_objects:
	.xword	0
	.size	g_rmt_objects, 8
	.type	g_rmt_objlocks,@object          // @g_rmt_objlocks
	.globl	g_rmt_objlocks
	.p2align	3
g_rmt_objlocks:
	.xword	0
	.size	g_rmt_objlocks, 8
	.type	RMT,@object                     // @RMT
	.globl	RMT
	.p2align	3
RMT:
	.zero	16
	.size	RMT, 16
	.type	intr_handle,@object             // @intr_handle
	.globl	intr_handle
	.p2align	2
intr_handle:
	.word	0                               // 0x0
	.size	intr_handle, 4
	.type	ETS_RMT_INTR_SOURCE,@object     // @ETS_RMT_INTR_SOURCE
	.globl	ETS_RMT_INTR_SOURCE
	.p2align	2
ETS_RMT_INTR_SOURCE:
	.word	0                               // 0x0
	.size	ETS_RMT_INTR_SOURCE, 4
	.type	ESP_INTR_FLAG_IRAM,@object      // @ESP_INTR_FLAG_IRAM
	.globl	ESP_INTR_FLAG_IRAM
	.p2align	3
ESP_INTR_FLAG_IRAM:
	.xword	0                               // 0x0
	.size	ESP_INTR_FLAG_IRAM, 8
	.type	_rmt_isr,@object                // @_rmt_isr
	.globl	_rmt_isr
	.p2align	2
_rmt_isr:
	.word	0                               // 0x0
	.size	_rmt_isr, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xSemaphoreCreateMutex
	.addrsig_sym xSemaphoreTake
	.addrsig_sym xSemaphoreGive
	.addrsig_sym _rmtAllocate
	.addrsig_sym RMT_MUTEX_LOCK
	.addrsig_sym _initPin
	.addrsig_sym esp_intr_alloc
	.addrsig_sym RMT_MUTEX_UNLOCK
	.addrsig_sym g_rmt_block_lock
	.addrsig_sym portMAX_DELAY
	.addrsig_sym pdPASS
	.addrsig_sym MAX_CHANNELS
	.addrsig_sym g_rmt_objects
	.addrsig_sym g_rmt_objlocks
	.addrsig_sym RMT
	.addrsig_sym intr_handle
	.addrsig_sym ETS_RMT_INTR_SOURCE
	.addrsig_sym ESP_INTR_FLAG_IRAM
	.addrsig_sym _rmt_isr