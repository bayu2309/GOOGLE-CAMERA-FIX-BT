.class final Lyl;
.super Lacb;
.source "PG"


# instance fields
.field public a:Laaf;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Landroid/hardware/camera2/CameraDevice;

.field public e:Lya;

.field public f:Lach;

.field public g:Landroid/graphics/Rect;

.field public h:Z

.field public i:Landroid/hardware/camera2/CameraCaptureSession;

.field public j:Landroid/media/ImageReader;

.field public k:Laba;

.field public l:Laad;

.field public m:Lys;

.field public n:Laae;

.field public o:I

.field public p:Lyr;

.field public final synthetic q:Lxx;

.field private s:I

.field private t:Lacd;

.field private u:Lacd;

.field private v:Landroid/graphics/SurfaceTexture;

.field private w:Landroid/view/Surface;

.field private x:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private y:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


# direct methods
.method constructor <init>(Lxx;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lyl;->q:Lxx;

    invoke-direct {p0, p2}, Lacb;-><init>(Landroid/os/Looper;)V

    iput v0, p0, Lyl;->s:I

    iput v0, p0, Lyl;->o:I

    new-instance v0, Lyo;

    invoke-direct {v0, p0}, Lyo;-><init>(Lyl;)V

    iput-object v0, p0, Lyl;->x:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v0, Lyp;

    invoke-direct {v0, p0}, Lyp;-><init>(Lyl;)V

    iput-object v0, p0, Lyl;->y:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    new-instance v0, Lyq;

    invoke-direct {v0, p0}, Lyq;-><init>(Lyl;)V

    iput-object v0, p0, Lyl;->p:Lyr;

    return-void
.end method

.method private final b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lyl;->i:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyl;->i:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lyl;->a(I)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lxx;->a:Lacf;

    const-string v2, "Failed to close existing camera capture session"

    invoke-static {v1, v2, v0}, Lace;->a(Lacf;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Labv;
    .locals 5

    :try_start_0
    new-instance v0, Lyu;

    iget-object v1, p0, Lyl;->d:Landroid/hardware/camera2/CameraDevice;

    iget-object v2, p0, Lyl;->g:Landroid/graphics/Rect;

    iget-object v3, p0, Lyl;->t:Lacd;

    iget-object v4, p0, Lyl;->u:Lacd;

    invoke-direct {v0, v1, v2, v3, v4}, Lyu;-><init>(Landroid/hardware/camera2/CameraDevice;Landroid/graphics/Rect;Lacd;Lacd;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lxx;->a:Lacf;

    const-string v1, "Unable to query camera device to build settings representation"

    invoke-static {v0, v1}, Lace;->b(Lacf;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(I)V
    .locals 1

    iget-object v0, p0, Lyl;->q:Lxx;

    iget-object v0, v0, Lxx;->c:Labx;

    invoke-virtual {v0}, Labx;->a()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lyl;->q:Lxx;

    iget-object v0, v0, Lxx;->c:Labx;

    invoke-virtual {v0, p1}, Labx;->a(I)V

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lyl;->o:I

    iget-object v0, p0, Lyl;->p:Lyr;

    invoke-virtual {v0}, Lyr;->a()V

    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    const/16 v11, 0x10

    const/4 v10, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lacb;->handleMessage(Landroid/os/Message;)V

    sget-object v0, Lxx;->a:Lacf;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleMessage - action = \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Lug;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lace;->d(Lacf;Ljava/lang/String;)V

    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unimplemented CameraProxy message="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    if-eq v6, v10, :cond_25

    :try_start_1
    iget-object v1, p0, Lyl;->d:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lyl;->d:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lyl;->d:Landroid/hardware/camera2/CameraDevice;

    :cond_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lyl;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lyl;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lyl;->q:Lxx;

    iget-object v2, v2, Lxx;->g:Labp;

    check-cast v0, Ljava/lang/RuntimeException;

    iget-object v3, p0, Lyl;->q:Lxx;

    iget-object v3, v3, Lxx;->c:Labx;

    invoke-virtual {v3}, Labx;->a()I

    move-result v3

    invoke-virtual {v2, v0, v1, v6, v3}, Labp;->a(Ljava/lang/RuntimeException;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-static {p1}, Labd;->a(Landroid/os/Message;)V

    :goto_0
    return-void

    :sswitch_0
    :try_start_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Laaf;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lyl;->q:Lxx;

    iget-object v2, v2, Lxx;->c:Labx;

    invoke-virtual {v2}, Labx;->a()I

    move-result v2

    if-le v2, v3, :cond_3

    invoke-virtual {p0, v1}, Lyl;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Laaf;->b(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    invoke-static {p1}, Labd;->a(Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    :try_start_3
    iput-object v0, p0, Lyl;->a:Laaf;

    iput v1, p0, Lyl;->b:I

    iget-object v0, p0, Lyl;->q:Lxx;

    iget-object v0, v0, Lxx;->h:Ljava/util/List;

    iget v2, p0, Lyl;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lyl;->c:Ljava/lang/String;

    sget-object v0, Lxx;->a:Lacf;

    const-string v2, "Opening camera index %d (id %s) with camera2 API"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x1

    iget-object v5, p0, Lyl;->c:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lace;->c(Lacf;Ljava/lang/String;)V

    iget-object v0, p0, Lyl;->c:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lyl;->a:Laaf;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Laaf;->a(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {p1}, Labd;->a(Landroid/os/Message;)V

    throw v0

    :cond_4
    :try_start_4
    iget-object v0, p0, Lyl;->q:Lxx;

    iget-object v0, v0, Lxx;->e:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lyl;->c:Ljava/lang/String;

    iget-object v2, p0, Lyl;->x:Landroid/hardware/camera2/CameraDevice$StateCallback;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lyl;->q:Lxx;

    iget-object v0, v0, Lxx;->c:Labx;

    invoke-virtual {v0}, Labx;->a()I

    move-result v0

    if-ne v0, v3, :cond_5

    sget-object v0, Lxx;->a:Lacf;

    const-string v1, "Ignoring release at inappropriate time"

    invoke-static {v0, v1}, Lace;->e(Lacf;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lyl;->i:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lyl;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyl;->i:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_6
    iget-object v0, p0, Lyl;->d:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lyl;->d:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyl;->d:Landroid/hardware/camera2/CameraDevice;

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lyl;->e:Lya;

    const/4 v0, 0x0

    iput-object v0, p0, Lyl;->f:Lach;

    const/4 v0, 0x0

    iput-object v0, p0, Lyl;->g:Landroid/graphics/Rect;

    iget-object v0, p0, Lyl;->w:Landroid/view/Surface;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lyl;->w:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyl;->w:Landroid/view/Surface;

    :cond_8
    const/4 v0, 0x0

    iput-object v0, p0, Lyl;->v:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lyl;->j:Landroid/media/ImageReader;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lyl;->j:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyl;->j:Landroid/media/ImageReader;

    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lyl;->t:Lacd;

    const/4 v0, 0x0

    iput-object v0, p0, Lyl;->u:Lacd;

    const/4 v0, 0x0

    iput v0, p0, Lyl;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lyl;->c:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lyl;->a(I)V

    goto/16 :goto_1

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lyl;->q:Lxx;

    iget-object v1, v1, Lxx;->c:Labx;

    invoke-virtual {v1}, Labx;->a()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_a

    sget-object v0, Lxx;->a:Lacf;

    const-string v1, "Ignoring texture setting at inappropriate time"

    invoke-static {v0, v1}, Lace;->e(Lacf;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Lyl;->v:Landroid/graphics/SurfaceTexture;

    if-ne v0, v1, :cond_b

    sget-object v0, Lxx;->a:Lacf;

    const-string v1, "Optimizing out redundant preview texture setting"

    invoke-static {v0, v1}, Lace;->c(Lacf;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    iget-object v1, p0, Lyl;->i:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lyl;->b()V

    :cond_c
    iput-object v0, p0, Lyl;->v:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lyl;->t:Lacd;

    iget-object v1, v1, Lacd;->a:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lyl;->t:Lacd;

    iget-object v2, v2, Lacd;->a:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object v1, p0, Lyl;->w:Landroid/view/Surface;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lyl;->w:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    :cond_d
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lyl;->w:Landroid/view/Surface;

    iget-object v0, p0, Lyl;->j:Landroid/media/ImageReader;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lyl;->j:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    :cond_e
    iget-object v0, p0, Lyl;->u:Lacd;

    iget-object v0, v0, Lacd;->a:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lyl;->u:Lacd;

    iget-object v1, v1, Lacd;->a:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/16 v2, 0x100

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lyl;->j:Landroid/media/ImageReader;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lyl;->d:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/Surface;

    const/4 v2, 0x0

    iget-object v4, p0, Lyl;->w:Landroid/view/Surface;

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-object v4, p0, Lyl;->j:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lyl;->y:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    sget-object v1, Lxx;->a:Lacf;

    const-string v2, "Failed to create camera capture session"

    invoke-static {v1, v2, v0}, Lace;->a(Lacf;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :sswitch_3
    iget-object v0, p0, Lyl;->q:Lxx;

    iget-object v0, v0, Lxx;->c:Labx;

    invoke-virtual {v0}, Labx;->a()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_f

    sget-object v0, Lxx;->a:Lacf;

    const-string v1, "Refusing to start preview at inappropriate time"

    invoke-static {v0, v1}, Lace;->e(Lacf;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Laba;

    iput-object v0, p0, Lyl;->k:Laba;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lyl;->a(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v0, p0, Lyl;->i:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lyl;->f:Lach;

    iget-object v2, p0, Lyl;->d:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/Surface;

    const/4 v7, 0x0

    iget-object v8, p0, Lyl;->w:Landroid/view/Surface;

    aput-object v8, v5, v7

    invoke-virtual {v1, v2, v4, v5}, Lach;->a(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lyl;->p:Lyr;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_8
    sget-object v1, Lxx;->a:Lacf;

    const-string v2, "Unable to start preview"

    invoke-static {v1, v2, v0}, Lace;->b(Lacf;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lyl;->a(I)V

    goto/16 :goto_1

    :sswitch_4
    iget-object v0, p0, Lyl;->q:Lxx;

    iget-object v0, v0, Lxx;->c:Labx;

    invoke-virtual {v0}, Labx;->a()I

    move-result v0

    if-ge v0, v11, :cond_10

    sget-object v0, Lxx;->a:Lacf;

    const-string v1, "Refusing to stop preview at inappropriate time"

    invoke-static {v0, v1}, Lace;->e(Lacf;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lyl;->i:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lyl;->a(I)V

    goto/16 :goto_1

    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lyu;

    iget-object v7, p0, Lyl;->f:Lach;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, v0, Lyu;->d:Ljava/util/List;

    invoke-virtual {v0, v5}, Lyu;->a(Ljava/util/List;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lyu;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, v0, Lyu;->e:Ljava/util/List;

    invoke-virtual {v0, v5}, Lyu;->a(Ljava/util/List;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lyu;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v5, Landroid/util/Range;

    iget v8, v0, Lyu;->g:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v0, Lyu;->h:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v0, v4, v5}, Lyu;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-byte v5, v0, Lyu;->l:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lyu;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v4, v0, Lyu;->b:Lach;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v8, v0, Lyu;->c:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v8}, Lach;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v5, v0, Lyu;->o:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lyu;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v4, v0, Lyu;->p:Labi;

    if-eqz v4, :cond_11

    iget-object v4, v0, Lyu;->p:Labi;

    invoke-virtual {v4}, Labi;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    sget-object v4, Lyu;->a:Lacf;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Unable to convert to API 2 flash mode: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lyu;->p:Labi;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lace;->e(Lacf;Ljava/lang/String;)V

    :cond_11
    move-object v4, v2

    move-object v5, v2

    :goto_2
    iget-object v8, v0, Lyu;->b:Lach;

    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v8, v9, v5}, Lach;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    iget-object v5, v0, Lyu;->b:Lach;

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v8, v4}, Lach;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    iget-object v4, v0, Lyu;->q:Labj;

    if-eqz v4, :cond_12

    iget-object v4, v0, Lyu;->q:Labj;

    invoke-virtual {v4}, Labj;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    :pswitch_0
    sget-object v4, Lyu;->a:Lacf;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Unable to convert to API 2 focus mode: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lyu;->q:Labj;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lace;->e(Lacf;Ljava/lang/String;)V

    :cond_12
    move-object v4, v2

    :goto_3
    iget-object v5, v0, Lyu;->b:Lach;

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v8, v4}, Lach;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    iget-object v4, v0, Lyu;->r:Labk;

    if-eqz v4, :cond_13

    iget-object v4, v0, Lyu;->r:Labk;

    invoke-virtual {v4}, Labk;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    :pswitch_1
    sget-object v4, Lyu;->a:Lacf;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Unable to convert to API 2 scene mode: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lyu;->r:Labk;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lace;->e(Lacf;Ljava/lang/String;)V

    :cond_13
    move-object v4, v2

    :goto_4
    iget-object v5, v0, Lyu;->b:Lach;

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v8, v4}, Lach;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    iget-object v4, v0, Lyu;->s:Labm;

    if-eqz v4, :cond_14

    iget-object v4, v0, Lyu;->s:Labm;

    invoke-virtual {v4}, Labm;->ordinal()I

    move-result v4

    packed-switch v4, :pswitch_data_3

    sget-object v4, Lyu;->a:Lacf;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Unable to convert to API 2 white balance: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lyu;->s:Labm;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lace;->e(Lacf;Ljava/lang/String;)V

    :cond_14
    move-object v4, v2

    :goto_5
    iget-object v5, v0, Lyu;->b:Lach;

    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v5, v8, v4}, Lach;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v5, v0, Lyu;->t:Z

    if-eqz v5, :cond_15

    move v1, v3

    :cond_15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lyu;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v4, v0, Lyu;->b:Lach;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v1, v0, Lyu;->t:Z

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_6
    invoke-virtual {v4, v5, v1}, Lach;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v2, v0, Lyu;->u:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lyu;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-boolean v2, v0, Lyu;->v:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lyu;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, v0, Lyu;->x:Labw;

    if-eqz v1, :cond_16

    iget-object v1, v0, Lyu;->x:Labw;

    iget-object v1, v1, Labw;->e:Ljava/lang/String;

    if-nez v1, :cond_19

    :cond_16
    iget-object v1, v0, Lyu;->b:Lach;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lach;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    :goto_7
    iget-object v1, v0, Lyu;->y:Lacd;

    if-eqz v1, :cond_1a

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v2, Landroid/util/Size;

    iget-object v4, v0, Lyu;->y:Lacd;

    iget-object v4, v4, Lacd;->a:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, v0, Lyu;->y:Lacd;

    iget-object v5, v5, Lacd;->a:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lyu;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_8
    iget-object v1, v0, Lyu;->b:Lach;

    if-eqz v1, :cond_17

    if-ne v1, v7, :cond_1b

    :cond_17
    :goto_9
    invoke-virtual {v0}, Lyu;->b()Lacd;

    move-result-object v1

    iput-object v1, p0, Lyl;->t:Lacd;

    invoke-virtual {v0}, Lyu;->c()Lacd;

    move-result-object v0

    iput-object v0, p0, Lyl;->u:Lacd;

    iget-object v0, p0, Lyl;->q:Lxx;

    iget-object v0, v0, Lxx;->c:Labx;

    invoke-virtual {v0}, Labx;->a()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v0

    if-lt v0, v11, :cond_1c

    :try_start_9
    iget-object v0, p0, Lyl;->i:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lyl;->f:Lach;

    iget-object v2, p0, Lyl;->d:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/Surface;

    const/4 v7, 0x0

    iget-object v8, p0, Lyl;->w:Landroid/view/Surface;

    aput-object v8, v5, v7

    invoke-virtual {v1, v2, v4, v5}, Lach;->a(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lyl;->p:Lyr;

    invoke-virtual {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_9
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    :try_start_a
    sget-object v1, Lxx;->a:Lacf;

    const-string v2, "Failed to apply updated request settings"

    invoke-static {v1, v2, v0}, Lace;->a(Lacf;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :pswitch_2
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v4

    move-object v4, v2

    goto/16 :goto_2

    :pswitch_3
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_2

    :pswitch_4
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_2

    :pswitch_5
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v2

    goto/16 :goto_2

    :pswitch_6
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v4

    move-object v4, v2

    goto/16 :goto_2

    :pswitch_7
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_3

    :pswitch_8
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_3

    :pswitch_9
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_3

    :pswitch_a
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_3

    :pswitch_b
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_3

    :pswitch_c
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_3

    :pswitch_d
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_4

    :pswitch_e
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_4

    :pswitch_f
    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_4

    :pswitch_10
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_4

    :pswitch_11
    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_4

    :pswitch_12
    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_4

    :pswitch_13
    sget v4, Lacc;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_4

    :pswitch_14
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_4

    :pswitch_15
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_4

    :pswitch_16
    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_4

    :pswitch_17
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_4

    :pswitch_18
    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_4

    :pswitch_19
    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_4

    :pswitch_1a
    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_4

    :pswitch_1b
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_4

    :pswitch_1c
    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_4

    :pswitch_1d
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_5

    :pswitch_1e
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_5

    :pswitch_1f
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_5

    :pswitch_20
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_5

    :pswitch_21
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_5

    :pswitch_22
    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_5

    :pswitch_23
    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_5

    :pswitch_24
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_5

    :cond_18
    move-object v1, v2

    goto/16 :goto_6

    :cond_19
    new-instance v1, Landroid/location/Location;

    iget-object v2, v0, Lyu;->x:Labw;

    iget-object v2, v2, Labw;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lyu;->x:Labw;

    iget-wide v4, v2, Labw;->d:J

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setTime(J)V

    iget-object v2, v0, Lyu;->x:Labw;

    iget-wide v4, v2, Labw;->c:D

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setAltitude(D)V

    iget-object v2, v0, Lyu;->x:Labw;

    iget-wide v4, v2, Labw;->a:D

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    iget-object v2, v0, Lyu;->x:Labw;

    iget-wide v4, v2, Labw;->b:D

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    iget-object v2, v0, Lyu;->b:Lach;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4, v1}, Lach;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_1a
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lyu;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_1b
    iget-object v2, v7, Lach;->a:Ljava/util/Map;

    iget-object v1, v1, Lach;->a:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-wide v4, v7, Lach;->b:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    iput-wide v4, v7, Lach;->b:J

    goto/16 :goto_9

    :cond_1c
    iget-object v0, p0, Lyl;->q:Lxx;

    iget-object v0, v0, Lxx;->c:Labx;

    invoke-virtual {v0}, Labx;->a()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lyl;->a(I)V

    goto/16 :goto_1

    :sswitch_6
    iget v0, p0, Lyl;->s:I

    if-lez v0, :cond_1d

    sget-object v0, Lxx;->a:Lacf;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage - Ignored AUTO_FOCUS because there was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lyl;->s:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pending CANCEL_AUTO_FOCUS messages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lace;->d(Lacf;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1d
    iget-object v0, p0, Lyl;->q:Lxx;

    iget-object v0, v0, Lxx;->c:Labx;

    invoke-virtual {v0}, Labx;->a()I

    move-result v0

    if-ge v0, v11, :cond_1e

    sget-object v0, Lxx;->a:Lacf;

    const-string v1, "Ignoring attempt to autofocus without preview"

    invoke-static {v0, v1}, Lace;->e(Lacf;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Laad;

    new-instance v1, Lym;

    invoke-direct {v1, p0, v0}, Lym;-><init>(Lyl;Laad;)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lyl;->a(I)V

    new-instance v0, Lach;

    iget-object v2, p0, Lyl;->f:Lach;

    invoke-direct {v0, v2}, Lach;-><init>(Lach;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lach;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v2, p0, Lyl;->i:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, p0, Lyl;->d:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/view/Surface;

    const/4 v8, 0x0

    iget-object v9, p0, Lyl;->w:Landroid/view/Surface;

    aput-object v9, v7, v8

    invoke-virtual {v0, v4, v5, v7}, Lach;->a(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_b
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    :catch_4
    move-exception v0

    :try_start_c
    sget-object v1, Lxx;->a:Lacf;

    const-string v2, "Unable to lock autofocus"

    invoke-static {v1, v2, v0}, Lace;->a(Lacf;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lyl;->a(I)V

    goto/16 :goto_1

    :sswitch_7
    iget v0, p0, Lyl;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyl;->s:I

    iget-object v0, p0, Lyl;->q:Lxx;

    iget-object v0, v0, Lxx;->c:Labx;

    invoke-virtual {v0}, Labx;->a()I

    move-result v0

    if-ge v0, v11, :cond_1f

    sget-object v0, Lxx;->a:Lacf;

    const-string v1, "Ignoring attempt to release focus lock without preview"

    invoke-static {v0, v1}, Lace;->e(Lacf;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1f
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lyl;->a(I)V

    new-instance v0, Lach;

    iget-object v1, p0, Lyl;->f:Lach;

    invoke-direct {v0, v1}, Lach;-><init>(Lach;)V

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lach;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    iget-object v1, p0, Lyl;->i:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lyl;->d:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/view/Surface;

    const/4 v7, 0x0

    iget-object v8, p0, Lyl;->w:Landroid/view/Surface;

    aput-object v8, v5, v7

    invoke-virtual {v0, v2, v4, v5}, Lach;->a(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    :catch_5
    move-exception v0

    :try_start_e
    sget-object v1, Lxx;->a:Lacf;

    const-string v2, "Unable to cancel autofocus"

    invoke-static {v1, v2, v0}, Lace;->a(Lacf;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lyl;->a(I)V

    goto/16 :goto_1

    :sswitch_8
    iget v0, p0, Lyl;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lyl;->s:I

    goto/16 :goto_1

    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Laae;

    iput-object v0, p0, Lyl;->n:Laae;

    goto/16 :goto_1

    :sswitch_a
    iget-object v2, p0, Lyl;->f:Lach;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v0, p1, Landroid/os/Message;->arg2:I

    if-lez v0, :cond_20

    iget-object v0, p0, Lyl;->e:Lya;

    iget-object v0, v0, Lya;->a:Labo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Labo;->a(IZ)I

    move-result v0

    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lach;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_20
    move v0, v1

    goto :goto_a

    :sswitch_b
    iget-object v0, p0, Lyl;->f:Lach;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lach;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    goto/16 :goto_1

    :sswitch_c
    iget-object v0, p0, Lyl;->q:Lxx;

    iget-object v0, v0, Lxx;->c:Labx;

    invoke-virtual {v0}, Labx;->a()I

    move-result v0

    if-ge v0, v11, :cond_21

    sget-object v0, Lxx;->a:Lacf;

    const-string v1, "Photos may only be taken when a preview is active"

    invoke-static {v0, v1}, Lace;->b(Lacf;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_21
    iget-object v0, p0, Lyl;->q:Lxx;

    iget-object v0, v0, Lxx;->c:Labx;

    invoke-virtual {v0}, Labx;->a()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_22

    sget-object v0, Lxx;->a:Lacf;

    const-string v1, "Taking a (likely blurry) photo without the lens locked"

    invoke-static {v0, v1}, Lace;->e(Lacf;Ljava/lang/String;)V

    :cond_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lys;

    iget-boolean v1, p0, Lyl;->h:Z

    if-nez v1, :cond_23

    iget v1, p0, Lyl;->o:I

    if-ne v1, v10, :cond_24

    iget-object v1, p0, Lyl;->f:Lach;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lach;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lyl;->f:Lach;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lach;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    :cond_23
    sget-object v1, Lxx;->a:Lacf;

    const-string v2, "Skipping pre-capture autoexposure convergence"

    invoke-static {v1, v2}, Lace;->c(Lacf;Ljava/lang/String;)V

    iget-object v1, p0, Lyl;->j:Landroid/media/ImageReader;

    invoke-virtual {v1, v0, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :try_start_f
    iget-object v1, p0, Lyl;->i:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lyl;->f:Lach;

    iget-object v4, p0, Lyl;->d:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x2

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/view/Surface;

    const/4 v8, 0x0

    iget-object v9, p0, Lyl;->j:Landroid/media/ImageReader;

    invoke-virtual {v9}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v4, v5, v7}, Lach;->a(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    :catch_6
    move-exception v0

    :try_start_10
    sget-object v1, Lxx;->a:Lacf;

    const-string v2, "Unable to initiate immediate capture"

    invoke-static {v1, v2, v0}, Lace;->a(Lacf;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_24
    sget-object v1, Lxx;->a:Lacf;

    const-string v2, "Forcing pre-capture autoexposure convergence"

    invoke-static {v1, v2}, Lace;->c(Lacf;Ljava/lang/String;)V

    new-instance v1, Lyn;

    invoke-direct {v1, p0, v0}, Lyn;-><init>(Lyl;Lys;)V

    new-instance v0, Lach;

    iget-object v2, p0, Lyl;->f:Lach;

    invoke-direct {v0, v2}, Lach;-><init>(Lach;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lach;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :try_start_11
    iget-object v2, p0, Lyl;->i:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, p0, Lyl;->d:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x1

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/view/Surface;

    const/4 v8, 0x0

    iget-object v9, p0, Lyl;->w:Landroid/view/Surface;

    aput-object v9, v7, v8

    invoke-virtual {v0, v4, v5, v7}, Lach;->a(Landroid/hardware/camera2/CameraDevice;I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p0}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_11
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_1

    :catch_7
    move-exception v0

    :try_start_12
    sget-object v1, Lxx;->a:Lacf;

    const-string v2, "Unable to run autoexposure and perform capture"

    invoke-static {v1, v2, v0}, Lace;->a(Lacf;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    :cond_25
    :try_start_13
    iget-object v1, p0, Lyl;->d:Landroid/hardware/camera2/CameraDevice;

    if-nez v1, :cond_0

    if-ne v6, v3, :cond_27

    iget-object v0, p0, Lyl;->a:Laaf;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lyl;->a:Laaf;

    iget v1, p0, Lyl;->b:I

    iget v2, p0, Lyl;->b:I

    invoke-virtual {p0, v2}, Lyl;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Laaf;->a(ILjava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_26
    :goto_b
    invoke-static {p1}, Labd;->a(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_27
    :try_start_14
    sget-object v0, Lxx;->a:Lacf;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot handle message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCamera is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lace;->e(Lacf;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_b

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0xcc -> :sswitch_5
        0x12d -> :sswitch_6
        0x12e -> :sswitch_7
        0x12f -> :sswitch_9
        0x131 -> :sswitch_8
        0x1f6 -> :sswitch_a
        0x1f7 -> :sswitch_b
        0x259 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_1
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method
