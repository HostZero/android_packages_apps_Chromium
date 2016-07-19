.class Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;
.super Ljava/lang/Object;
.source "DeviceSensors.java"

# interfaces
.implements Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxy;


# instance fields
.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 673
    iput-object p1, p0, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 674
    return-void
.end method


# virtual methods
.method public registerListener(Landroid/hardware/SensorEventListener;IILandroid/os/Handler;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 679
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 680
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 683
    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v2, p1, v0, p3, p4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/SensorEventListener;I)V
    .locals 3

    .prologue
    .line 688
    iget-object v0, p0, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 689
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 690
    iget-object v1, p0, Lorg/chromium/content/browser/DeviceSensors$SensorManagerProxyImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v1, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 692
    :cond_0
    return-void
.end method
