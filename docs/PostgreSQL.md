# PostgreSQL #

*   <tt>postgresql*:::statement-start(const char *)</tt>
    *   Fires any time SQL is executed on the server. <tt>copyinstr(arg0)</tt> is the query.
*   <tt>postgresql*:::mark-dirty(uint32_t)</tt>
    *   Fires when a buffer in the shared buffer pool is marked dirty for the first time. The first argument is the buffer (id).
*   <tt>postgresql*:::local-mark-dirty(uint32_t)</tt>
    *   When a local buffer in the shared buffer pool is marked dirty for the first time. The first argument is the buffer (id).
*   <tt>postgresql*:::slru-readpage-entry(uintptr_t, uint32_t, uint32_t, uint32_t)</tt>
    *   Fires on the entry to the slru <tt>SimpleLruReadPage</tt> function. arg0 is a pointer to the PostgreSQL SlruCtl. arg1 is the page number, arg2 is 0 or 1, indicating if the page needs to be writable. arg3 is the transaction id (xid).
*   <tt>postgresql*:::slru-readpage-return(uint32_t)</tt>
    *   Fires when the slru <tt>SimpleLruReadPage</tt> function returns. arg0 is the slot number of the page returned.
*   <tt>postgresql*:::slru-readpage-ro(uintptr_t, uint32_t, uint32_t)</tt>
    *   Fires when the slru <tt>SimpleLruReadPage_ReadOnly</tt> function is entered. arg0 is a pointer to the PostgreSQL SlruCtl. arg1 is the page number. arg2 is the transaction id (xid).
*   <tt>postgresql*:::slru-writepage-entry(uintptr_t, uint32_t, uint32_t)</tt>
    *   Fires when the slru <tt>SimpleLruWritePage</tt> function is entered. arg0 is a pointer to the PostgreSQL SlruCtl. arg1 is the page number. arg2 is the slot number.
*   <tt>postgresql*:::slru-writepage-return()</tt>
    *   Fires when the slru <tt>SimpleLruWritePage</tt> function returns.
*   <tt>postgresql*:::slru-readpage-physical-entry(uintptr_t, char *, uint32_t, uint32_t)</tt>
    *   Fires when the slru <tt>SlruPhysicalReadPage</tt> function is entered. arg0 is a pointer to the PostgreSQL SlruCtl. copyinstr(arg1) is the pathname of the file being read. arg2 is the page number. arg3 is the slot number.
*   <tt>postgresql*:::slru-readpage-physical-return(uint32_t, uint32_t, uint32_t)</tt>
    *   Fires when the slru <tt>SlruPhysicalReadPage</tt> function returns. arg0 is 0 or 1 indicating success. arg1 is the internal error cause (only valid if arg0 is 0). arg2 is the system <tt>errno</tt> (only valid if arg0 is 0).
*   <tt>postgresql*:::slru-writepage-physical-entry(uintptr_t, uint32_t, uint32_t)</tt>
    *   Fires when the slru <tt>SlruPhysicalWritePage</tt> function is entered. arg0 is a pointer to the PostgreSQL SlruCtl. arg1 is the page number. arg2 is the slot number.
*   <tt>postgresql*:::slru-writepage-physical-return(uint32_t, uint32_t, uint32_t)</tt>
    *   Fires when the slru <tt>SlruPhysicalWritePage</tt> function returns. arg0 is 0 or 1 indicating success. arg1 is the internal error cause (only valid if arg0 is 0). arg2 is the system <tt>errno</tt> (only valid if arg0 is 0).
*   <tt>postgresql*:::xlog-insert(uint32_t, uint32_t)</tt>
    *   Fires when data is inserted in the XLog. arg0 is the resource manager (rmid) for the record. arg1 represents the info flags.
*   <tt>postgresql*:::xlog-switch()</tt>
    *   Fires when an XLog switch is requested. This is always immediately proceeded by an firing of the <tt>xlog-insert</tt> probe.
*   <tt>postgresql*:::xlog-checkpoint-entry(uint32_t, uint32_t)</tt>
    *   Fires when a checkpoint is started in PostgreSQL. arg0 is checkpoint the flag set. arg1 the next transaction id (xid).
*   <tt>postgresql*:::xlog-checkpoint-return()</tt>
    *   Fires when the checkpoint has completed.
*   <tt>postgresql*:::clog-checkpoint-entry()</tt>
    *   Fires when the CLOG portion of the checkpoint is started. The CLOG checkpoint involves flushing out an SLRU, see the <tt>slru-*</tt> probes.
*   <tt>postgresql*:::clog-checkpoint-return()</tt>
    *   Fires when the CLOG portion of the checkpoint is complete.
*   <tt>postgresql*:::multixact-checkpoint-entry()</tt>
    *   Fires when the MultiXact portion of the checkpoint is started. The MultiXact checkpoint involves flushing out an SLRU, see the <tt>slru-*</tt> probes.
*   <tt>postgresql*:::multixact-checkpoint-return()</tt>
    *   Fires when the MultiXact portion of the checkpoint is complete.
*   <tt>postgresql*:::subtrans-checkpoint-entry()</tt>
    *   Fires when the SUBTRANS portion of the checkpoint is started. The SUBTRANS checkpoint involves flushing out an SLRU, see the <tt>slru-*</tt> probes.
*   <tt>postgresql*:::subtrans-checkpoint-return()</tt>
    *   Fires when the SUBTRANS portion of the checkpoint is complete.
*   <tt>postgresql*:::buffers-checkpoint-entry(uint32_t)</tt>
    *   Fires when the shared buffers portion of the checkpoint is started. arg0 represents the flags passed to the checkpoint.
*   <tt>postgresql*:::buffers-checkpoint-return()</tt>
    *   Fires when the shared buffers portion of the checkpoint is complete.
*   <tt>postgresql*:::buffer-sync-entry(uint32_t, uint32_t)</tt>
    *   Fires when the buffer pool syncing is started. arg0 is the total number of buffers. arg1 is the number it intends to write.
*   <tt>postgresql*:::buffer-sync-written(uint32_t)</tt>
    *   Fires when the buffer pool syncing is in progress and a buffer has been successfully written.
*   <tt>postgresql*:::buffer-sync-return(uint32_t, uint32_t, uint32_t)</tt>
    *   Fires when the buffer pool syncing is complete. arg0 is the total number of buffers. arg1 is the number actually written. arg2 is the number it intended to write.
*   <tt>postgresql*:::buffer-flush-entry(uint32_t, uint32_t, uint32_t, uint32_t)</tt>
    *   Fires when a buffer flush is started. arg0 is database Oid. arg1 is the tablespace Oid. arg2 is the relation Oid. arg3 is the block number.
*   <tt>postgresql*:::buffer-flush-return(uint32_t, uint32_t, uint32_t, uint32_t)</tt>
    *   Fires when a buffer flush is complete. arg0 is database Oid. arg1 is the tablespace Oid. arg2 is the relation Oid. arg3 is the block number.
*   <tt>postgresql*:::exec-scan(uintptr_t, uint32_t, uintptr_t);</tt>
*   <tt>postgresql*:::exec-agg(uintptr_t, uint32_t);</tt>
*   <tt>postgresql*:::exec-group(uintptr_t, uint32_t);</tt>
*   <tt>postgresql*:::exec-hash-multi(uintptr_t);</tt>
*   <tt>postgresql*:::exec-hashjoin(uintptr_t);</tt>
*   <tt>postgresql*:::exec-limit(uintptr_t);</tt>
*   <tt>postgresql*:::exec-material(uintptr_t);</tt>
*   <tt>postgresql*:::exec-mergejoin(uintptr_t);</tt>
*   <tt>postgresql*:::exec-nestloop(uintptr_t);</tt>
*   <tt>postgresql*:::exec-setop(uintptr_t);</tt>
*   <tt>postgresql*:::exec-sort(uintptr_t, uint32_t);</tt>
*   <tt>postgresql*:::exec-subplan-hash(uintptr_t);</tt>
*   <tt>postgresql*:::exec-subplan-scan(uintptr_t);</tt>
*   <tt>postgresql*:::exec-unique(uintptr_t);</tt>
*   <tt>postgresql*:::autovacuum-start(uint32_t, char *)</tt>
    *   Fires when a autovacuum process is started. arg0 is the database Oid. copyinstr(arg1) is the database name.
*   <tt>postgresql*:::autovacuum-relation(uint32_t, char *, char *, char *)</tt>
    *   Fires when a relation is auto-vacuumed. arg0 is the relation Oid. copyinstr(arg1) is the database name. copyinstr(arg2) is the tablespace name. copyinstr(arg3) is the relation name.

