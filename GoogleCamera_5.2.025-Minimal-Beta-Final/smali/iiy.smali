.class public final enum Liiy;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Liiy;

.field public static final enum b:Liiy;

.field public static final enum c:Liiy;

.field private static final synthetic e:[Liiy;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Liiy;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2, v2}, Liiy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Liiy;->a:Liiy;

    new-instance v0, Liiy;

    const-string v1, "FAIL_TIMEOUT"

    invoke-direct {v0, v1, v3, v3}, Liiy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Liiy;->b:Liiy;

    new-instance v0, Liiy;

    const-string v1, "FAIL_EXCEPTION"

    invoke-direct {v0, v1, v4, v4}, Liiy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Liiy;->c:Liiy;

    const/4 v0, 0x3

    new-array v0, v0, [Liiy;

    sget-object v1, Liiy;->a:Liiy;

    aput-object v1, v0, v2

    sget-object v1, Liiy;->b:Liiy;

    aput-object v1, v0, v3

    sget-object v1, Liiy;->c:Liiy;

    aput-object v1, v0, v4

    sput-object v0, Liiy;->e:[Liiy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Liiy;->d:I

    return-void
.end method

.method public static values()[Liiy;
    .locals 1

    sget-object v0, Liiy;->e:[Liiy;

    invoke-virtual {v0}, [Liiy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liiy;

    return-object v0
.end method
