.class public final Lkai;
.super Lkgl;
.source "PG"


# static fields
.field private static volatile h:[Lkai;


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lkgl;-><init>()V

    iput-wide v2, p0, Lkai;->a:J

    iput-wide v2, p0, Lkai;->b:J

    iput-wide v2, p0, Lkai;->c:J

    iput v0, p0, Lkai;->d:I

    iput v0, p0, Lkai;->e:I

    iput v0, p0, Lkai;->f:I

    iput v0, p0, Lkai;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lkai;->unknownFieldData:Lkgn;

    const/4 v0, -0x1

    iput v0, p0, Lkai;->cachedSize:I

    return-void
.end method

.method public static a()[Lkai;
    .locals 2

    sget-object v0, Lkai;->h:[Lkai;

    if-nez v0, :cond_1

    sget-object v1, Lkgp;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lkai;->h:[Lkai;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lkai;

    sput-object v0, Lkai;->h:[Lkai;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lkai;->h:[Lkai;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected final computeSerializedSize()I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-super {p0}, Lkgl;->computeSerializedSize()I

    move-result v0

    iget-wide v2, p0, Lkai;->a:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-wide v2, p0, Lkai;->a:J

    invoke-static {v1, v2, v3}, Lkgj;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v2, p0, Lkai;->b:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-wide v2, p0, Lkai;->b:J

    invoke-static {v1, v2, v3}, Lkgj;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v2, p0, Lkai;->c:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-wide v2, p0, Lkai;->c:J

    invoke-static {v1, v2, v3}, Lkgj;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lkai;->d:I

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget v2, p0, Lkai;->d:I

    invoke-static {v1, v2}, Lkgj;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lkai;->e:I

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iget v2, p0, Lkai;->e:I

    invoke-static {v1, v2}, Lkgj;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lkai;->f:I

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    iget v2, p0, Lkai;->f:I

    invoke-static {v1, v2}, Lkgj;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lkai;->g:I

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget v2, p0, Lkai;->g:I

    invoke-static {v1, v2}, Lkgj;->b(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method public final synthetic mergeFrom(Lkgi;)Lkgr;
    .locals 11

    const-wide/16 v2, 0x0

    const/16 v10, 0x40

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lkgi;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1, v0}, Lkgl;->storeUnknownField(Lkgi;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    move-wide v0, v2

    move v4, v5

    :goto_1
    if-ge v4, v10, :cond_2

    invoke-virtual {p1}, Lkgi;->i()B

    move-result v6

    and-int/lit8 v7, v6, 0x7f

    int-to-long v8, v7

    shl-long/2addr v8, v4

    or-long/2addr v0, v8

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_1

    iput-wide v0, p0, Lkai;->a:J

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x7

    goto :goto_1

    :cond_2
    invoke-static {}, Lkgq;->c()Lkgq;

    move-result-object v0

    throw v0

    :sswitch_2
    move-wide v0, v2

    move v4, v5

    :goto_2
    if-ge v4, v10, :cond_4

    invoke-virtual {p1}, Lkgi;->i()B

    move-result v6

    and-int/lit8 v7, v6, 0x7f

    int-to-long v8, v7

    shl-long/2addr v8, v4

    or-long/2addr v0, v8

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_3

    iput-wide v0, p0, Lkai;->b:J

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x7

    goto :goto_2

    :cond_4
    invoke-static {}, Lkgq;->c()Lkgq;

    move-result-object v0

    throw v0

    :sswitch_3
    move-wide v0, v2

    move v4, v5

    :goto_3
    if-ge v4, v10, :cond_6

    invoke-virtual {p1}, Lkgi;->i()B

    move-result v6

    and-int/lit8 v7, v6, 0x7f

    int-to-long v8, v7

    shl-long/2addr v8, v4

    or-long/2addr v0, v8

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_5

    iput-wide v0, p0, Lkai;->c:J

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x7

    goto :goto_3

    :cond_6
    invoke-static {}, Lkgq;->c()Lkgq;

    move-result-object v0

    throw v0

    :sswitch_4
    invoke-virtual {p1}, Lkgi;->d()I

    move-result v0

    iput v0, p0, Lkai;->d:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lkgi;->d()I

    move-result v0

    iput v0, p0, Lkai;->e:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lkgi;->d()I

    move-result v0

    iput v0, p0, Lkai;->f:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lkgi;->d()I

    move-result v0

    iput v0, p0, Lkai;->g:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public final writeTo(Lkgj;)V
    .locals 6

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lkai;->a:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v2, p0, Lkai;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lkgj;->a(IJ)V

    :cond_0
    iget-wide v0, p0, Lkai;->b:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-wide v2, p0, Lkai;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lkgj;->a(IJ)V

    :cond_1
    iget-wide v0, p0, Lkai;->c:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-wide v2, p0, Lkai;->c:J

    invoke-virtual {p1, v0, v2, v3}, Lkgj;->a(IJ)V

    :cond_2
    iget v0, p0, Lkai;->d:I

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    iget v1, p0, Lkai;->d:I

    invoke-virtual {p1, v0, v1}, Lkgj;->a(II)V

    :cond_3
    iget v0, p0, Lkai;->e:I

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lkai;->e:I

    invoke-virtual {p1, v0, v1}, Lkgj;->a(II)V

    :cond_4
    iget v0, p0, Lkai;->f:I

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lkai;->f:I

    invoke-virtual {p1, v0, v1}, Lkgj;->a(II)V

    :cond_5
    iget v0, p0, Lkai;->g:I

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lkai;->g:I

    invoke-virtual {p1, v0, v1}, Lkgj;->a(II)V

    :cond_6
    invoke-super {p0, p1}, Lkgl;->writeTo(Lkgj;)V

    return-void
.end method
