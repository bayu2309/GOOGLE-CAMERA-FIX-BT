.class final Lclz;
.super Lclr;
.source "PG"


# instance fields
.field private synthetic a:Lcly;


# direct methods
.method constructor <init>(Lcly;)V
    .locals 0

    iput-object p1, p0, Lclz;->a:Lcly;

    invoke-direct {p0, p1}, Lclr;-><init>(Lclq;)V

    return-void
.end method


# virtual methods
.method public final m()V
    .locals 2

    iget-object v0, p0, Lclz;->a:Lcly;

    iget-object v0, v0, Lcly;->g:Lgvj;

    invoke-virtual {v0}, Lgvj;->a()V

    invoke-super {p0}, Lclr;->m()V

    iget-object v0, p0, Lclz;->a:Lcly;

    iget-object v0, v0, Lcly;->g:Lgvj;

    iget-object v1, p0, Lclz;->a:Lcly;

    iget-object v1, v1, Lcly;->i:Lgvl;

    invoke-virtual {v0, v1}, Lgvj;->a(Lgvl;)V

    return-void
.end method
