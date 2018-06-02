.class final Lifk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Liio;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIII)Liin;
    .locals 3

    new-instance v0, Lifi;

    const/16 v1, 0x23

    if-ne p3, v1, :cond_0

    const/16 v1, 0x23

    :goto_0
    invoke-static {p1, p2, v1, p4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    invoke-direct {v0, v2}, Lifi;-><init>(Landroid/media/ImageReader;)V

    return-object v0

    :cond_0
    const/16 v1, 0x26

    if-ne p3, v1, :cond_1

    const/16 v1, 0x26

    goto :goto_0

    :cond_1
    const/16 v1, 0x25

    if-ne p3, v1, :cond_2

    const/16 v1, 0x25

    goto :goto_0

    :cond_2
    const/16 v1, 0x20

    if-ne p3, v1, :cond_3

    const/16 v1, 0x20

    goto :goto_0

    :cond_3
    move v1, p3

    goto :goto_0
.end method
