.class public final Lauj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkhp;


# instance fields
.field private final a:Lkhp;

.field private final b:Lkhp;


# direct methods
.method private constructor <init>(Lkhp;Lkhp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lauj;->a:Lkhp;

    iput-object p2, p0, Lauj;->b:Lkhp;

    return-void
.end method

.method public static a(Lkhp;Lkhp;)Lauj;
    .locals 1

    new-instance v0, Lauj;

    invoke-direct {v0, p0, p1}, Lauj;-><init>(Lkhp;Lkhp;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    new-instance v2, Laui;

    iget-object v0, p0, Lauj;->a:Lkhp;

    invoke-interface {v0}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfbq;

    iget-object v1, p0, Lauj;->b:Lkhp;

    invoke-interface {v1}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfcw;

    invoke-direct {v2, v0, v1}, Laui;-><init>(Lfbq;Lfcw;)V

    return-object v2
.end method
