.class public final Liry;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Liru;


# instance fields
.field private final synthetic a:Lirp;


# direct methods
.method public constructor <init>(Lirp;)V
    .locals 0

    iput-object p1, p0, Liry;->a:Lirp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lirp;
    .locals 3

    check-cast p1, Lirr;

    iget-object v0, p0, Liry;->a:Lirp;

    new-instance v1, Lirz;

    invoke-direct {v1, p1}, Lirz;-><init>(Lirr;)V

    new-instance v2, Lisa;

    invoke-direct {v2, p1}, Lisa;-><init>(Lirr;)V

    invoke-interface {v0, p2, v1, v2}, Lirp;->a(Ljava/util/concurrent/Executor;Liqd;Liqd;)Lirp;

    move-result-object v0

    return-object v0
.end method
