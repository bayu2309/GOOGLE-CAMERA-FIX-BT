.class public final Laxz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkhp;


# instance fields
.field private final a:Lkhp;

.field private final b:Lkhp;

.field private final c:Lkhp;

.field private final d:Lkhp;

.field private final e:Lkhp;


# direct methods
.method private constructor <init>(Lkhp;Lkhp;Lkhp;Lkhp;Lkhp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laxz;->a:Lkhp;

    iput-object p2, p0, Laxz;->b:Lkhp;

    iput-object p3, p0, Laxz;->c:Lkhp;

    iput-object p4, p0, Laxz;->d:Lkhp;

    iput-object p5, p0, Laxz;->e:Lkhp;

    return-void
.end method

.method public static a(Lkhp;Lkhp;Lkhp;Lkhp;Lkhp;)Laxz;
    .locals 6

    new-instance v0, Laxz;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Laxz;-><init>(Lkhp;Lkhp;Lkhp;Lkhp;Lkhp;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 6

    new-instance v0, Laxy;

    iget-object v1, p0, Laxz;->a:Lkhp;

    invoke-interface {v1}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Layd;

    iget-object v2, p0, Laxz;->b:Lkhp;

    invoke-interface {v2}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfla;

    iget-object v3, p0, Laxz;->c:Lkhp;

    invoke-interface {v3}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfge;

    iget-object v4, p0, Laxz;->d:Lkhp;

    invoke-interface {v4}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkey;

    iget-object v5, p0, Laxz;->e:Lkhp;

    invoke-interface {v5}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laxo;

    invoke-direct/range {v0 .. v5}, Laxy;-><init>(Layd;Lfla;Lfge;Lkey;Laxo;)V

    return-object v0
.end method
