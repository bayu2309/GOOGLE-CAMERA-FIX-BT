.class public Lkei;
.super Lkeh;
.source "PG"


# instance fields
.field private final a:Lkey;


# direct methods
.method public constructor <init>(Lkey;)V
    .locals 1

    invoke-direct {p0}, Lkeh;-><init>()V

    invoke-static {p1}, Ljiy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkey;

    iput-object v0, p0, Lkei;->a:Lkey;

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Lkei;->a:Lkey;

    return-object v0
.end method

.method protected final b()Lkey;
    .locals 1

    iget-object v0, p0, Lkei;->a:Lkey;

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkei;->a:Lkey;

    return-object v0
.end method
