.class final Lfuf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfur;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final synthetic b:Lfue;


# direct methods
.method constructor <init>(Lfue;)V
    .locals 2

    iput-object p1, p0, Lfuf;->b:Lfue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lfuf;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lfuf;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lfuf;->b:Lfue;

    const/4 v0, 0x0

    iget-object v3, v2, Lfue;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v4, v2, Lfue;->d:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Lfue;->d:I

    iget v4, v2, Lfue;->d:I

    if-ltz v4, :cond_3

    :goto_1
    invoke-static {v1}, Ljiy;->b(Z)V

    iget-boolean v1, v2, Lfue;->c:Z

    if-eqz v1, :cond_2

    iget v1, v2, Lfue;->d:I

    if-nez v1, :cond_2

    iget-object v0, v2, Lfue;->a:Lfur;

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lfur;->close()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
