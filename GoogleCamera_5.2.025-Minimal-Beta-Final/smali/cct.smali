.class public final Lcct;
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

    iput-object p1, p0, Lcct;->a:Lkhp;

    iput-object p2, p0, Lcct;->b:Lkhp;

    iput-object p3, p0, Lcct;->c:Lkhp;

    iput-object p4, p0, Lcct;->d:Lkhp;

    iput-object p5, p0, Lcct;->e:Lkhp;

    return-void
.end method

.method public static a(Lkhp;Lkhp;Lkhp;Lkhp;Lkhp;)Lcct;
    .locals 6

    new-instance v0, Lcct;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcct;-><init>(Lkhp;Lkhp;Lkhp;Lkhp;Lkhp;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcct;->a:Lkhp;

    invoke-interface {v0}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfed;

    iget-object v0, p0, Lcct;->b:Lkhp;

    invoke-interface {v0}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcay;

    iget-object v0, p0, Lcct;->c:Lkhp;

    invoke-interface {v0}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldoj;

    iget-object v0, p0, Lcct;->d:Lkhp;

    invoke-interface {v0}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcef;

    iget-object v0, p0, Lcct;->e:Lkhp;

    invoke-interface {v0}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lijs;

    new-instance v0, Lcbn;

    invoke-direct/range {v0 .. v5}, Lcbn;-><init>(Lcay;Ldoj;Lfed;Lcef;Lijs;)V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lkgh;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcbn;

    return-object v0
.end method
