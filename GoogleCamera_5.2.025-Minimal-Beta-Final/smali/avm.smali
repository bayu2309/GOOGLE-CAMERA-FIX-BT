.class final Lavm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lihw;


# instance fields
.field private final synthetic a:Lica;


# direct methods
.method constructor <init>(Lica;)V
    .locals 0

    iput-object p1, p0, Lavm;->a:Lica;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lavm;->a:Lica;

    invoke-virtual {v0}, Lica;->a()V

    :cond_0
    return-void
.end method
