.class public final Lhvi;
.super Lhuf;


# instance fields
.field private final b:Lhld;


# direct methods
.method public constructor <init>(Lhld;)V
    .locals 1

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    invoke-direct {p0, v0}, Lhuf;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lhvi;->b:Lhld;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lhvi;->b:Lhld;

    iget-object v0, v0, Lhld;->e:Landroid/os/Looper;

    return-object v0
.end method

.method public final a(Lhto;)Lhto;
    .locals 2

    iget-object v0, p0, Lhvi;->b:Lhld;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lhld;->a(ILhto;)Lhto;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lhto;)Lhto;
    .locals 2

    iget-object v0, p0, Lhvi;->b:Lhld;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lhld;->a(ILhto;)Lhto;

    move-result-object v0

    return-object v0
.end method
