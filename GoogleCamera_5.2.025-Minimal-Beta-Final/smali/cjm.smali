.class public final Lcjm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkhp;


# instance fields
.field private final a:Lkhp;

.field private final b:Lkhp;

.field private final c:Lkhp;


# direct methods
.method public constructor <init>(Lkhp;Lkhp;Lkhp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjm;->a:Lkhp;

    iput-object p2, p0, Lcjm;->b:Lkhp;

    iput-object p3, p0, Lcjm;->c:Lkhp;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcjm;->a:Lkhp;

    invoke-interface {v0}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcjm;->b:Lkhp;

    iget-object v2, p0, Lcjm;->c:Lkhp;

    if-eqz v0, :cond_0

    invoke-interface {v2}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzd;

    :goto_0
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lkgh;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzd;

    return-object v0

    :cond_0
    invoke-interface {v1}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzd;

    goto :goto_0
.end method
