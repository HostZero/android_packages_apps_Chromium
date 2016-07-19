.class final Lcom/google/vrtoolkit/cardboard/b/c;
.super Ljava/lang/Object;
.source "DeviceSensorLooper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private synthetic a:Lcom/google/vrtoolkit/cardboard/b/b;


# direct methods
.method constructor <init>(Lcom/google/vrtoolkit/cardboard/b/b;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/b/c;->a:Lcom/google/vrtoolkit/cardboard/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/c;->a:Lcom/google/vrtoolkit/cardboard/b/b;

    invoke-static {v0}, Lcom/google/vrtoolkit/cardboard/b/b;->a(Lcom/google/vrtoolkit/cardboard/b/b;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/c;->a:Lcom/google/vrtoolkit/cardboard/b/b;

    invoke-static {v0}, Lcom/google/vrtoolkit/cardboard/b/b;->a(Lcom/google/vrtoolkit/cardboard/b/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorEventListener;

    .line 100
    invoke-interface {v0, p1, p2}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/c;->a:Lcom/google/vrtoolkit/cardboard/b/b;

    invoke-static {v0}, Lcom/google/vrtoolkit/cardboard/b/b;->a(Lcom/google/vrtoolkit/cardboard/b/b;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/c;->a:Lcom/google/vrtoolkit/cardboard/b/b;

    invoke-static {v0}, Lcom/google/vrtoolkit/cardboard/b/b;->a(Lcom/google/vrtoolkit/cardboard/b/b;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorEventListener;

    .line 91
    invoke-interface {v0, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
