.class public Lcom/google/vrtoolkit/cardboard/b/b;
.super Ljava/lang/Object;
.source "DeviceSensorLooper.java"

# interfaces
.implements Lcom/google/vrtoolkit/cardboard/b/f;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Landroid/hardware/SensorManager;

.field private d:Landroid/os/Looper;

.field private e:Landroid/hardware/SensorEventListener;

.field private final f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/google/vrtoolkit/cardboard/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vrtoolkit/cardboard/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/b;->f:Ljava/util/ArrayList;

    .line 63
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/b/b;->c:Landroid/hardware/SensorManager;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/google/vrtoolkit/cardboard/b/b;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/b;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/google/vrtoolkit/cardboard/b/b;)Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/b;->c:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic c(Lcom/google/vrtoolkit/cardboard/b/b;)Landroid/hardware/SensorEventListener;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/b;->e:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/vrtoolkit/cardboard/b/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/vrtoolkit/cardboard/b/b;)Landroid/hardware/Sensor;
    .locals 2

    .prologue
    .line 37
    .line 1069
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v1, "HTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1072
    :cond_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/b;->c:Landroid/hardware/SensorManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/b/b;->b:Z

    if-eqz v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v0, Lcom/google/vrtoolkit/cardboard/b/c;

    invoke-direct {v0, p0}, Lcom/google/vrtoolkit/cardboard/b/c;-><init>(Lcom/google/vrtoolkit/cardboard/b/b;)V

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/b;->e:Landroid/hardware/SensorEventListener;

    .line 106
    new-instance v0, Lcom/google/vrtoolkit/cardboard/b/d;

    const-string/jumbo v1, "sensor"

    invoke-direct {v0, p0, v1}, Lcom/google/vrtoolkit/cardboard/b/d;-><init>(Lcom/google/vrtoolkit/cardboard/b/b;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 134
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/b;->d:Landroid/os/Looper;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/b/b;->b:Z

    goto :goto_0
.end method

.method public final a(Landroid/hardware/SensorEventListener;)V
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/b/b;->f:Ljava/util/ArrayList;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/b/b;->b:Z

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/b;->c:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/b/b;->e:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 149
    iput-object v2, p0, Lcom/google/vrtoolkit/cardboard/b/b;->e:Landroid/hardware/SensorEventListener;

    .line 151
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/b;->d:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 152
    iput-object v2, p0, Lcom/google/vrtoolkit/cardboard/b/b;->d:Landroid/os/Looper;

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/vrtoolkit/cardboard/b/b;->b:Z

    goto :goto_0
.end method

.method public final b(Landroid/hardware/SensorEventListener;)V
    .locals 2

    .prologue
    .line 165
    iget-object v1, p0, Lcom/google/vrtoolkit/cardboard/b/b;->f:Ljava/util/ArrayList;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/b/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 167
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
