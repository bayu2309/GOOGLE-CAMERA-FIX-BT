.class public final Leen;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkhp;


# instance fields
.field private final a:Lkhp;

.field private final b:Lkhp;

.field private final c:Lkhp;

.field private final d:Lkhp;


# direct methods
.method public constructor <init>(Lkhp;Lkhp;Lkhp;Lkhp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leen;->a:Lkhp;

    iput-object p2, p0, Leen;->b:Lkhp;

    iput-object p3, p0, Leen;->c:Lkhp;

    iput-object p4, p0, Leen;->d:Lkhp;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 5

    new-instance v4, Leem;

    iget-object v0, p0, Leen;->a:Lkhp;

    invoke-interface {v0}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Legf;

    iget-object v1, p0, Leen;->b:Lkhp;

    invoke-interface {v1}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v2, p0, Leen;->c:Lkhp;

    invoke-interface {v2}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgvn;

    iget-object v3, p0, Leen;->d:Lkhp;

    invoke-interface {v3}, Lkhp;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfwm;

    invoke-direct {v4, v0, v1, v2, v3}, Leem;-><init>(Legf;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lgvn;Lfwm;)V

    return-object v4
.end method
