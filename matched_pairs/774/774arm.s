	.text
	.globl	disableCore1WDT                 // -- Begin function disableCore1WDT
	.p2align	2
	.type	disableCore1WDT,@function
disableCore1WDT:                        // @disableCore1WDT
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #1
	bl	xTaskGetIdleTaskHandleForCPU
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	bl	esp_task_wdt_delete
	adrp	x8, ESP_OK
	ldr	x8, [x8, :lo12:ESP_OK]
	subs	x8, x0, x8
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	log_e
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	disableCore1WDT, .Lfunc_end0-disableCore1WDT
                                        // -- End function
	.type	ESP_OK,@object                  // @ESP_OK
	.bss
	.globl	ESP_OK
	.p2align	3
ESP_OK:
	.xword	0                               // 0x0
	.size	ESP_OK, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Failed to remove Core 1 IDLE task from WDT"
	.size	.L.str, 43
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xTaskGetIdleTaskHandleForCPU
	.addrsig_sym esp_task_wdt_delete
	.addrsig_sym log_e
	.addrsig_sym ESP_OK