.class final Lts;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final synthetic a:Ltn;


# direct methods
.method constructor <init>(Ltn;)V
    .locals 0

    iput-object p1, p0, Lts;->a:Ltn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lts;->a:Ltn;

    invoke-virtual {v0}, Ltn;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lts;->a:Ltn;

    iget-object v0, v0, Ltn;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lts;->a:Ltn;

    iget-object v0, v0, Ltn;->o:Landroid/os/Handler;

    iget-object v1, p0, Lts;->a:Ltn;

    iget-object v1, v1, Ltn;->n:Ltu;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lts;->a:Ltn;

    iget-object v0, v0, Ltn;->n:Ltu;

    invoke-virtual {v0}, Ltu;->run()V

    :cond_0
    return-void
.end method
