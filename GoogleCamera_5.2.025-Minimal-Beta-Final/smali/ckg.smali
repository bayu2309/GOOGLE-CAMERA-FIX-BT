.class public final Lckg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcji;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field private final c:Landroid/content/Context;

.field private final d:Lcjv;

.field private final e:Lgnk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PhotoItemFact"

    invoke-static {v0}, Lbkl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lckg;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcjv;Landroid/content/ContentResolver;Lckc;Lgnk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljiy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lckg;->c:Landroid/content/Context;

    invoke-static {p2}, Ljiy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcjv;

    iput-object v0, p0, Lckg;->d:Lcjv;

    invoke-static {p3}, Ljiy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lckg;->a:Landroid/content/ContentResolver;

    invoke-static {p4}, Ljiy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p5}, Ljiy;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnk;

    iput-object v0, p0, Lckg;->e:Lgnk;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lckf;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lckg;->a:Landroid/content/ContentResolver;

    sget-object v2, Lcke;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lckg;->b(Landroid/database/Cursor;)Lckf;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :goto_0
    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_3
    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    sget-object v1, Lckg;->b:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error in get "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lbkl;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_6
    invoke-static {v1, v2}, Lkfu;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_2

    :cond_3
    move-object v0, v6

    goto :goto_0
.end method

.method public final a(Landroid/net/Uri;ZLjrw;)Lckf;
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lckg;->e:Lgnk;

    invoke-interface {v1, p1}, Lgnk;->c(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lckg;->e:Lgnk;

    invoke-interface {v1, p1}, Lgnk;->d(Landroid/net/Uri;)Landroid/graphics/Point;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v6, Lckf;

    iget-object v7, p0, Lckg;->c:Landroid/content/Context;

    iget-object v8, p0, Lckg;->d:Lcjv;

    invoke-static {v1}, Lihs;->a(Landroid/graphics/Point;)Lihs;

    move-result-object v1

    iget-object v0, p0, Lckg;->e:Lgnk;

    invoke-interface {v0, p1}, Lgnk;->e(Landroid/net/Uri;)J

    move-result-wide v2

    move-object v0, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lckf;->a(Landroid/net/Uri;Lihs;JZLjrw;)Leqm;

    move-result-object v3

    iget-object v5, p0, Lckg;->e:Lgnk;

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lckf;-><init>(Landroid/content/Context;Lcjv;Leqm;Lckg;Lgnk;)V

    move-object v0, v6

    goto :goto_0
.end method

.method public final synthetic a(Landroid/database/Cursor;)Leqi;
    .locals 1

    invoke-virtual {p0, p1}, Lckg;->b(Landroid/database/Cursor;)Lckf;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/database/Cursor;)Lckf;
    .locals 6

    invoke-static {p1}, Lckc;->a(Landroid/database/Cursor;)Leqm;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v0, Lckf;

    iget-object v1, p0, Lckg;->c:Landroid/content/Context;

    iget-object v2, p0, Lckg;->d:Lcjv;

    iget-object v5, p0, Lckg;->e:Lgnk;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lckf;-><init>(Landroid/content/Context;Lcjv;Leqm;Lckg;Lgnk;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lckg;->b:Ljava/lang/String;

    const-string v1, "skipping item with null data, returning null for item"

    invoke-static {v0, v1}, Lbkl;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
