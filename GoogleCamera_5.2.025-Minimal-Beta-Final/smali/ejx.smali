.class public final Lejx;
.super Landroid/os/HandlerThread;
.source "PG"


# instance fields
.field private a:Landroid/os/Handler;

.field private final synthetic b:I

.field private final synthetic c:Lejw;


# direct methods
.method public constructor <init>(Lejw;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lejx;->c:Lejw;

    iput p3, p0, Lejx;->b:I

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lejx;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lejx;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lejx;->a:Landroid/os/Handler;

    iget-object v0, p0, Lejx;->c:Lejw;

    iget-object v0, v0, Lejw;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lejx;->c:Lejw;

    iget-object v1, v1, Lejw;->t:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lejx;->c:Lejw;

    iget-object v2, v2, Lejw;->d:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v3, p0, Lejx;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iget-object v0, p0, Lejx;->c:Lejw;

    iget-object v0, v0, Lejw;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lejx;->c:Lejw;

    iget-object v1, v1, Lejw;->t:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lejx;->c:Lejw;

    iget-object v2, v2, Lejw;->d:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lejx;->b:I

    iget-object v4, p0, Lejx;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    iget-object v0, p0, Lejx;->c:Lejw;

    iget-object v0, v0, Lejw;->d:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lejx;->c:Lejw;

    iget-object v1, v1, Lejw;->t:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lejx;->c:Lejw;

    iget-object v2, v2, Lejw;->d:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    iget-object v4, p0, Lejx;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    return-void
.end method
