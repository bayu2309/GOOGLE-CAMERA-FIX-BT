.class abstract Lhol;
.super Lhoj;


# static fields
.field private static final b:Ljava/lang/ref/WeakReference;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lhol;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method constructor <init>([B)V
    .locals 1

    invoke-direct {p0, p1}, Lhoj;-><init>([B)V

    sget-object v0, Lhol;->b:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lhol;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method final c()[B
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhol;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lhol;->d()[B

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lhol;->a:Ljava/lang/ref/WeakReference;

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract d()[B
.end method
