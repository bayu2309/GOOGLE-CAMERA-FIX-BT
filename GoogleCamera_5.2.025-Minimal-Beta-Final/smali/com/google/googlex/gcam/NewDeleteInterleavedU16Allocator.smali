.class public Lcom/google/googlex/gcam/NewDeleteInterleavedU16Allocator;
.super Lcom/google/googlex/gcam/ClientInterleavedU16Allocator;
.source "PG"


# instance fields
.field public swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_NewDeleteInterleavedU16Allocator()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/NewDeleteInterleavedU16Allocator;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 3

    invoke-static {p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->NewDeleteInterleavedU16Allocator_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/google/googlex/gcam/ClientInterleavedU16Allocator;-><init>(JZ)V

    iput-wide p1, p0, Lcom/google/googlex/gcam/NewDeleteInterleavedU16Allocator;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/google/googlex/gcam/NewDeleteInterleavedU16Allocator;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/NewDeleteInterleavedU16Allocator;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Allocate(III)Lcom/google/googlex/gcam/InterleavedU16Allocation;
    .locals 7

    new-instance v6, Lcom/google/googlex/gcam/InterleavedU16Allocation;

    iget-wide v0, p0, Lcom/google/googlex/gcam/NewDeleteInterleavedU16Allocator;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->NewDeleteInterleavedU16Allocator_Allocate(JLcom/google/googlex/gcam/NewDeleteInterleavedU16Allocator;III)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/google/googlex/gcam/InterleavedU16Allocation;-><init>(JZ)V

    return-object v6
.end method

.method public Release(J)V
    .locals 3

    iget-wide v0, p0, Lcom/google/googlex/gcam/NewDeleteInterleavedU16Allocator;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->NewDeleteInterleavedU16Allocator_Release(JLcom/google/googlex/gcam/NewDeleteInterleavedU16Allocator;J)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/NewDeleteInterleavedU16Allocator;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/googlex/gcam/NewDeleteInterleavedU16Allocator;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/gcam/NewDeleteInterleavedU16Allocator;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/google/googlex/gcam/NewDeleteInterleavedU16Allocator;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_NewDeleteInterleavedU16Allocator(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/gcam/NewDeleteInterleavedU16Allocator;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/google/googlex/gcam/ClientInterleavedU16Allocator;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlex/gcam/NewDeleteInterleavedU16Allocator;->delete()V

    return-void
.end method
