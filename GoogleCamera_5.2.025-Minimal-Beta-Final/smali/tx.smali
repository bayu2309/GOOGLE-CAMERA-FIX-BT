.class public final Ltx;
.super Lsn;
.source "PG"


# instance fields
.field public c:Ltv;

.field private final d:I

.field private final e:I

.field private f:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    const/16 v3, 0x16

    const/16 v2, 0x15

    invoke-direct {p0, p1, p2}, Lsn;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v1, v0, :cond_0

    iput v2, p0, Ltx;->d:I

    iput v3, p0, Ltx;->e:I

    :goto_0
    return-void

    :cond_0
    iput v3, p0, Ltx;->d:I

    iput v2, p0, Ltx;->e:I

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(IIIII)I
    .locals 1

    invoke-super/range {p0 .. p5}, Lsn;->a(IIIII)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Landroid/view/MotionEvent;I)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lsn;->a(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic hasFocus()Z
    .locals 1

    invoke-super {p0}, Lsn;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic hasWindowFocus()Z
    .locals 1

    invoke-super {p0}, Lsn;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic isFocused()Z
    .locals 1

    invoke-super {p0}, Lsn;->isFocused()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic isInTouchMode()Z
    .locals 1

    invoke-super {p0}, Lsn;->isInTouchMode()Z

    move-result v0

    return v0
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Ltx;->c:Ltv;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ltx;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Los;

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Ltx;->pointToPosition(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    sub-int v1, v3, v1

    if-ltz v1, :cond_3

    invoke-virtual {v0}, Los;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {v0, v1}, Los;->a(I)Lox;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Ltx;->f:Landroid/view/MenuItem;

    if-eq v2, v1, :cond_1

    iget-object v0, v0, Los;->a:Lot;

    if-eqz v2, :cond_0

    iget-object v3, p0, Ltx;->c:Ltv;

    invoke-interface {v3, v0, v2}, Ltv;->a(Lot;Landroid/view/MenuItem;)V

    :cond_0
    iput-object v1, p0, Ltx;->f:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    iget-object v2, p0, Ltx;->c:Ltv;

    invoke-interface {v2, v0, v1}, Ltv;->b(Lot;Landroid/view/MenuItem;)V

    :cond_1
    invoke-super {p0, p1}, Lsn;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v1, 0x0

    check-cast v0, Los;

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-virtual {p0}, Ltx;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/ListMenuItemView;

    if-eqz v0, :cond_1

    iget v2, p0, Ltx;->d:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/view/menu/ListMenuItemView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/support/v7/view/menu/ListMenuItemView;->a:Lox;

    invoke-virtual {v2}, Lox;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ltx;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0}, Ltx;->getSelectedItemId()J

    move-result-wide v4

    invoke-virtual {p0, v0, v2, v4, v5}, Ltx;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-eqz v0, :cond_2

    iget v0, p0, Ltx;->e:I

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Ltx;->setSelection(I)V

    invoke-virtual {p0}, Ltx;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Los;

    iget-object v0, v0, Los;->a:Lot;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lot;->a(Z)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lsn;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Lsn;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Lsn;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
