.class public final Ljvj;
.super Ljuf;
.source "PG"


# instance fields
.field private final synthetic a:Ljava/lang/Iterable;

.field private final synthetic b:Ljrm;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljrm;)V
    .locals 0

    iput-object p1, p0, Ljvj;->a:Ljava/lang/Iterable;

    iput-object p2, p0, Ljvj;->b:Ljrm;

    invoke-direct {p0}, Ljuf;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Ljvj;->a:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Ljvj;->b:Ljrm;

    invoke-static {v0, v1}, Ljxf;->b(Ljava/util/Iterator;Ljrm;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
