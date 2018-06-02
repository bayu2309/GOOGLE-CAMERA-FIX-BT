.class public abstract Ljxo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field protected a:J

.field protected b:I

.field protected final c:D

.field protected final d:D

.field protected final e:D

.field protected final f:D

.field protected final g:D

.field protected final h:D

.field protected final i:D

.field protected final j:D


# direct methods
.method public constructor <init>(FFFIIJJ)V
    .locals 4

    const-wide v2, 0x412e848000000000L    # 1000000.0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    float-to-double v0, p1

    iput-wide v0, p0, Ljxo;->d:D

    float-to-double v0, p2

    iput-wide v0, p0, Ljxo;->c:D

    float-to-double v0, p3

    iput-wide v0, p0, Ljxo;->g:D

    int-to-double v0, p4

    iput-wide v0, p0, Ljxo;->j:D

    int-to-double v0, p5

    iput-wide v0, p0, Ljxo;->i:D

    long-to-double v0, p6

    div-double/2addr v0, v2

    iput-wide v0, p0, Ljxo;->f:D

    long-to-double v0, p8

    div-double/2addr v0, v2

    iput-wide v0, p0, Ljxo;->e:D

    iget-wide v0, p0, Ljxo;->d:D

    iget-wide v2, p0, Ljxo;->c:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Ljxo;->j:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ljxo;->h:D

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Ljxo;->a:J

    return-wide v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Ljxo;->b:I

    return v0
.end method

.method public abstract d()V
.end method
