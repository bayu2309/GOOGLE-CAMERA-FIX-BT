.class public final Lbhn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static e:Landroid/content/SharedPreferences;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Lgzz;

.field public final c:Lbhq;

.field private d:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lgzz;Landroid/content/SharedPreferences;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbhn;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Lbhn;->b:Lgzz;

    iput-object p3, p0, Lbhn;->d:Landroid/content/SharedPreferences;

    sput-object p3, Lbhn;->e:Landroid/content/SharedPreferences;

    new-instance v0, Lbhq;

    invoke-direct {v0, p2}, Lbhq;-><init>(Lgzz;)V

    iput-object v0, p0, Lbhn;->c:Lbhq;

    invoke-virtual {p0}, Lbhn;->o()I

    move-result v1

    iget-object v0, p0, Lbhn;->b:Lgzz;

    iget-object v0, v0, Lgzz;->b:Lihk;

    iput-boolean v1, v0, Lihk;->m:Z

    invoke-virtual {p0}, Lbhn;->s()I

    move-result v1

    iget-object v0, p0, Lbhn;->b:Lgzz;

    iget-object v0, v0, Lgzz;->b:Lihk;

    iput-boolean v1, v0, Lihk;->n:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    sget-object v0, Lbhn;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbhn;->e:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static t()I
    .locals 1

    const-string/jumbo v0, "pref_disable_zoom_key"

    invoke-static {v0}, Lbhn;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public MenuValue(Ljava/lang/String;)I
    .locals 3

    iget-object v1, p0, Lbhn;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    iget-object v1, p0, Lbhn;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lbhn;->b:Lgzz;

    iget-object v1, v1, Lgzz;->b:Lihk;

    iget-boolean v1, v1, Lihk;->c:Z

    if-eqz v1, :cond_0

    const-string v0, "2592x1458"

    :cond_0
    iget-object v1, p0, Lbhn;->a:Landroid/content/ContentResolver;

    const-string v2, "camera:blacklisted_resolutions_back"

    invoke-static {v1, v2, v0}, Lhyx;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lbhn;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbhn;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Lhyx;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Lbhn;->b:Lgzz;

    iget-object v0, v0, Lgzz;->b:Lihk;

    iget-boolean v0, v0, Lihk;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbhn;->b:Lgzz;

    iget-object v0, v0, Lgzz;->b:Lihk;

    iget-boolean v0, v0, Lihk;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbhn;->b:Lgzz;

    iget-object v0, v0, Lgzz;->b:Lihk;

    iget-boolean v0, v0, Lihk;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbhn;->b:Lgzz;

    invoke-virtual {v0}, Lgzz;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lbhn;->a:Landroid/content/ContentResolver;

    const-string v2, "camera:smartburst_enabled"

    invoke-virtual {p0, v1, v2, v0}, Lbhn;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lbhn;->b:Lgzz;

    iget-object v0, v0, Lgzz;->b:Lihk;

    iget-boolean v0, v0, Lihk;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbhn;->b:Lgzz;

    iget-object v0, v0, Lgzz;->b:Lihk;

    iget-boolean v0, v0, Lihk;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbhn;->b:Lgzz;

    invoke-virtual {v0}, Lgzz;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lbhn;->a:Landroid/content/ContentResolver;

    const-string v2, "camera:hybrid_burst_enabled"

    invoke-virtual {p0, v1, v2, v0}, Lbhn;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 3

    iget-object v1, p0, Lbhn;->a:Landroid/content/ContentResolver;

    const-string v2, "camera:gcam_enabled"

    iget-object v0, p0, Lbhn;->b:Lgzz;

    iget-object v0, v0, Lgzz;->b:Lihk;

    iget-boolean v0, v0, Lihk;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbhn;->b:Lgzz;

    iget-object v0, v0, Lgzz;->b:Lihk;

    iget-boolean v0, v0, Lihk;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbhn;->b:Lgzz;

    iget-object v0, v0, Lgzz;->b:Lihk;

    iget-boolean v0, v0, Lihk;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbhn;->b:Lgzz;

    iget-object v0, v0, Lgzz;->b:Lihk;

    iget-boolean v0, v0, Lihk;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbhn;->b:Lgzz;

    iget-object v0, v0, Lgzz;->b:Lihk;

    iget-boolean v0, v0, Lihk;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbhn;->b:Lgzz;

    iget-object v0, v0, Lgzz;->b:Lihk;

    iget-boolean v0, v0, Lihk;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbhn;->b:Lgzz;

    invoke-virtual {v0}, Lgzz;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lbhn;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()I
    .locals 3

    const/16 v2, 0xf

    invoke-virtual {p0}, Lbhn;->j()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    :goto_0
    add-int/lit8 v0, v2, 0x6

    iget-object v1, p0, Lbhn;->a:Landroid/content/ContentResolver;

    const-string v2, "camera:max_imagereader_image_count"

    invoke-static {v1, v2, v0}, Lhyx;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    const/16 v2, 0x7

    goto :goto_0

    :cond_1
    const/16 v2, 0xe

    goto :goto_0

    :cond_2
    const/16 v2, 0x18

    goto :goto_0

    :cond_3
    const/16 v2, 0x23

    goto :goto_0

    :cond_4
    const/16 v2, 0x2e

    goto :goto_0
.end method

.method public final f()I
    .locals 3

    const/16 v0, 0x8

    invoke-virtual {p0}, Lbhn;->j()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    :goto_0
    iget-object v1, p0, Lbhn;->a:Landroid/content/ContentResolver;

    const-string v2, "camera:max_hdr_plus_burst_frame_count"

    invoke-static {v1, v2, v0}, Lhyx;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x5

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    goto :goto_0

    :cond_3
    const/16 v0, 0xb

    goto :goto_0

    :cond_4
    const/16 v0, 0xc

    goto :goto_0
.end method

.method public final g()I
    .locals 3

    invoke-virtual {p0}, Lbhn;->f()I

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lbhn;->a:Landroid/content/ContentResolver;

    const-string v2, "camera:max_hdr_plus_imagereader_image_count"

    invoke-static {v1, v2, v0}, Lhyx;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 3

    iget-object v0, p0, Lbhn;->a:Landroid/content/ContentResolver;

    const-string v1, "camera:zsl_enabled"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lbhn;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lbhn;->q()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object v0, p0, Lbhn;->a:Landroid/content/ContentResolver;

    const-string v1, "camera:zsl_enabled"

    invoke-virtual {p0, v0, v1, v2}, Lbhn;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public j()I
    .locals 1

    const-string v0, "pref_parameters_camera_key"

    invoke-virtual {p0, v0}, Lbhn;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    const-string v0, "pref_config_camera_key"

    invoke-virtual {p0, v0}, Lbhn;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    const-string v0, "pref_compress_jpeg_key"

    invoke-virtual {p0, v0}, Lbhn;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    const-string v0, "pref_compress_dng_key"

    invoke-virtual {p0, v0}, Lbhn;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    const-string v0, "pref_refocus_resolution_key"

    invoke-virtual {p0, v0}, Lbhn;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    const-string v0, "pref_enable_gouda_mode_key"

    invoke-virtual {p0, v0}, Lbhn;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 1

    const-string v0, "pref_enable_lowlight_key"

    invoke-virtual {p0, v0}, Lbhn;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    const-string v0, "pref_enable_zsl_key"

    invoke-virtual {p0, v0}, Lbhn;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public r()I
    .locals 1

    const-string v0, "pref_enable_noise_key"

    invoke-virtual {p0, v0}, Lbhn;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    const-string v0, "pref_enable_front_hdr_key"

    invoke-virtual {p0, v0}, Lbhn;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setaemode()I
    .locals 1

    const-string v0, "pref_aemode_key"

    invoke-virtual {p0, v0}, Lbhn;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setpaemode()I
    .locals 1

    const-string v0, "pref_paemode_key"

    invoke-virtual {p0, v0}, Lbhn;->MenuValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
