.class final Lru;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final i:Landroid/graphics/RectF;

.field private static j:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public a:I

.field public b:Z

.field public c:F

.field public d:F

.field public e:F

.field public f:[I

.field public g:Z

.field public final h:Landroid/content/Context;

.field private k:Landroid/text/TextPaint;

.field private final l:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lru;->i:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lru;->j:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lru;->a:I

    iput-boolean v1, p0, Lru;->b:Z

    iput v0, p0, Lru;->c:F

    iput v0, p0, Lru;->d:F

    iput v0, p0, Lru;->e:F

    new-array v0, v1, [I

    iput-object v0, p0, Lru;->f:[I

    iput-boolean v1, p0, Lru;->g:Z

    iput-object p1, p0, Lru;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lru;->h:Landroid/content/Context;

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    invoke-static {p1}, Lru;->a(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    if-nez p2, :cond_0

    :cond_0
    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "ACTVAutoSizeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to invoke TextView#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4

    :try_start_0
    sget-object v0, Lru;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-class v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v1, Lru;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ACTVAutoSizeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to retrieve TextView#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() method"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a([I)[I
    .locals 6

    const/4 v0, 0x0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget v4, p0, v1

    if-lez v4, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-eq v2, v1, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    new-array p0, v2, [I

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p0, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method final a(FFF)V
    .locals 3

    const/4 v1, 0x0

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Minimum auto-size text size ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px) is less or equal to (0px)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmpg-float v0, p2, p1

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Maximum auto-size text size ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px) is less or equal to minimum auto-size text size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmpg-float v0, p3, v1

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The auto-size step granularity ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px) is less or equal to (0px)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lru;->a:I

    iput p1, p0, Lru;->d:F

    iput p2, p0, Lru;->e:F

    iput p3, p0, Lru;->c:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lru;->g:Z

    return-void
.end method

.method final a(IF)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lru;->h:Landroid/content/Context;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iget-object v1, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInLayout()Z

    move-result v1

    iget-object v0, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lru;->b:Z

    :try_start_0
    const-string v0, "nullLayouts"

    invoke-static {v0}, Lru;->a(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lru;->l:Landroid/widget/TextView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    if-nez v1, :cond_3

    iget-object v0, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    :goto_2
    iget-object v0, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lru;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ACTVAutoSizeHelper"

    const-string v3, "Failed to invoke TextView#nullLayouts() method"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->forceLayout()V

    goto :goto_2
.end method

.method final a()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lru;->f:[I

    array-length v3, v0

    if-lez v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lru;->g:Z

    iget-boolean v0, p0, Lru;->g:Z

    if-eqz v0, :cond_0

    iput v1, p0, Lru;->a:I

    iget-object v0, p0, Lru;->f:[I

    aget v0, v0, v2

    int-to-float v0, v0

    iput v0, p0, Lru;->d:F

    iget-object v0, p0, Lru;->f:[I

    add-int/lit8 v1, v3, -0x1

    aget v0, v0, v1

    int-to-float v0, v0

    iput v0, p0, Lru;->e:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lru;->c:F

    :cond_0
    iget-boolean v0, p0, Lru;->g:Z

    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method final b()Z
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lru;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lru;->a:I

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lru;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru;->f:[I

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_0
    iget v0, p0, Lru;->d:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    move v1, v2

    :goto_0
    iget v4, p0, Lru;->c:F

    add-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lru;->e:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-gt v4, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    iget v4, p0, Lru;->c:F

    add-float/2addr v0, v4

    goto :goto_0

    :cond_1
    new-array v4, v1, [I

    iget v0, p0, Lru;->d:F

    move v6, v3

    move v3, v0

    move v0, v6

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v4, v0

    iget v5, p0, Lru;->c:F

    add-float/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lru;->a([I)[I

    move-result-object v0

    iput-object v0, p0, Lru;->f:[I

    :cond_3
    iput-boolean v2, p0, Lru;->b:Z

    :goto_2
    iget-boolean v0, p0, Lru;->b:Z

    return v0

    :cond_4
    iput-boolean v3, p0, Lru;->b:Z

    goto :goto_2
.end method

.method final c()V
    .locals 14

    invoke-virtual {p0}, Lru;->d()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lru;->b:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lru;->l:Landroid/widget/TextView;

    const-string v1, "getHorizontallyScrolling"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lru;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x100000

    :goto_1
    iget-object v1, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    sget-object v6, Lru;->i:Landroid/graphics/RectF;

    monitor-enter v6

    :try_start_0
    sget-object v2, Lru;->i:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    sget-object v2, Lru;->i:Landroid/graphics/RectF;

    int-to-float v0, v0

    iput v0, v2, Landroid/graphics/RectF;->right:F

    sget-object v0, Lru;->i:Landroid/graphics/RectF;

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    sget-object v7, Lru;->i:Landroid/graphics/RectF;

    iget-object v0, p0, Lru;->f:[I

    array-length v0, v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No available text sizes to choose from."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    iget-object v0, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    const/4 v1, 0x1

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v0, v5

    move v5, v1

    :goto_2
    if-gt v5, v4, :cond_a

    add-int v0, v5, v4

    :try_start_1
    div-int/lit8 v8, v0, 0x2

    iget-object v0, p0, Lru;->f:[I

    aget v9, v0, v8

    iget-object v0, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v0, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v2, p0, Lru;->l:Landroid/widget/TextView;

    invoke-interface {v0, v1, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_d

    move-object v3, v0

    :goto_3
    iget-object v0, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v2

    iget-object v0, p0, Lru;->k:Landroid/text/TextPaint;

    if-nez v0, :cond_5

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lru;->k:Landroid/text/TextPaint;

    :goto_4
    iget-object v0, p0, Lru;->k:Landroid/text/TextPaint;

    iget-object v1, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lru;->k:Landroid/text/TextPaint;

    int-to-float v1, v9

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lru;->l:Landroid/widget/TextView;

    const-string v1, "getLayoutAlignment"

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-static {v0, v1, v9}, Lru;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Alignment;

    iget v1, v7, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget-object v1, p0, Lru;->l:Landroid/widget/TextView;

    const-string v10, "getTextDirectionHeuristic"

    sget-object v11, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {v1, v10, v11}, Lru;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/TextDirectionHeuristic;

    const/4 v10, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v11

    iget-object v12, p0, Lru;->k:Landroid/text/TextPaint;

    invoke-static {v3, v10, v11, v12, v9}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-object v9, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v9

    iget-object v10, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-object v9, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v9

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-object v9, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-object v9, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v9

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v9

    const/4 v0, -0x1

    if-ne v2, v0, :cond_6

    const v0, 0x7fffffff

    :goto_5
    invoke-virtual {v9, v0}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    const/4 v1, -0x1

    if-eq v2, v1, :cond_7

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-gt v1, v2, :cond_4

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_7

    :cond_4
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_9

    add-int/lit8 v0, v8, 0x1

    move v13, v0

    move v0, v5

    move v5, v13

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lru;->k:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->reset()V

    goto/16 :goto_4

    :cond_6
    move v0, v2

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, v7, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    const/4 v0, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v0, v8, -0x1

    move v4, v0

    goto/16 :goto_2

    :cond_a
    iget-object v1, p0, Lru;->f:[I

    aget v0, v1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lru;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lru;->a(IF)V

    :cond_b
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lru;->b:Z

    goto/16 :goto_0

    :cond_d
    move-object v3, v1

    goto/16 :goto_3
.end method

.method final d()Z
    .locals 1

    invoke-virtual {p0}, Lru;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lru;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()Z
    .locals 1

    iget-object v0, p0, Lru;->l:Landroid/widget/TextView;

    instance-of v0, v0, Lqz;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
