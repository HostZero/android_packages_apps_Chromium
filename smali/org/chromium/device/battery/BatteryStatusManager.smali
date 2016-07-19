.class Lorg/chromium/device/battery/BatteryStatusManager;
.super Ljava/lang/Object;
.source "BatteryStatusManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAndroidBatteryManager:Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

.field private final mAppContext:Landroid/content/Context;

.field private final mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

.field private mEnabled:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private final mIgnoreBatteryPresentState:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/chromium/device/battery/BatteryStatusManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/device/battery/BatteryStatusManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;)V
    .locals 3

    .prologue
    .line 78
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "Galaxy Nexus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v1, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    const-string/jumbo v0, "batterymanager"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    invoke-direct {v1, v0}, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;-><init>(Landroid/os/BatteryManager;)V

    move-object v0, v1

    :goto_0
    invoke-direct {p0, p1, p2, v2, v0}, Lorg/chromium/device/battery/BatteryStatusManager;-><init>(Landroid/content/Context;Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;ZLorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;)V

    .line 83
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;ZLorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mFilter:Landroid/content/IntentFilter;

    .line 38
    new-instance v0, Lorg/chromium/device/battery/BatteryStatusManager$1;

    invoke-direct {v0, p0}, Lorg/chromium/device/battery/BatteryStatusManager$1;-><init>(Lorg/chromium/device/battery/BatteryStatusManager;)V

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAppContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

    .line 71
    iput-boolean p3, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mIgnoreBatteryPresentState:Z

    .line 72
    iput-object p4, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAndroidBatteryManager:Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    .line 73
    return-void
.end method

.method private updateBatteryStatusForLollipop(Lorg/chromium/mojom/device/BatteryStatus;)V
    .locals 14

    .prologue
    const-wide v12, 0x40ac200000000000L    # 3600.0

    const-wide/16 v10, 0x0

    .line 167
    sget-boolean v0, Lorg/chromium/device/battery/BatteryStatusManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAndroidBatteryManager:Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAndroidBatteryManager:Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;->getIntProperty(I)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 172
    iget-object v2, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAndroidBatteryManager:Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;->getIntProperty(I)I

    move-result v2

    int-to-double v2, v2

    .line 174
    iget-object v4, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAndroidBatteryManager:Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;->getIntProperty(I)I

    move-result v4

    int-to-double v4, v4

    .line 177
    iget-boolean v6, p1, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    if-eqz v6, :cond_2

    .line 178
    iget-wide v6, p1, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1

    cmpl-double v6, v4, v10

    if-lez v6, :cond_1

    .line 180
    div-double/2addr v2, v4

    .line 181
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v0

    mul-double/2addr v0, v2

    mul-double/2addr v0, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    cmpg-double v6, v4, v10

    if-gez v6, :cond_1

    .line 186
    neg-double v4, v4

    div-double/2addr v2, v4

    .line 187
    mul-double/2addr v0, v2

    mul-double/2addr v0, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    iput-wide v0, p1, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    goto :goto_0
.end method


# virtual methods
.method onReceive(Landroid/content/Intent;)V
    .locals 13

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v12, -0x1

    .line 118
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const-string/jumbo v0, "BatteryStatusManager"

    const-string/jumbo v1, "Unexpected intent."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mIgnoreBatteryPresentState:Z

    if-eqz v0, :cond_2

    move v0, v1

    .line 126
    :goto_1
    const-string/jumbo v3, "plugged"

    invoke-virtual {p1, v3, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 128
    if-eqz v0, :cond_1

    if-ne v3, v12, :cond_3

    .line 130
    :cond_1
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

    new-instance v1, Lorg/chromium/mojom/device/BatteryStatus;

    invoke-direct {v1}, Lorg/chromium/mojom/device/BatteryStatus;-><init>()V

    invoke-interface {v0, v1}, Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;->onBatteryStatusChanged(Lorg/chromium/mojom/device/BatteryStatus;)V

    goto :goto_0

    .line 123
    :cond_2
    const-string/jumbo v0, "present"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1

    .line 134
    :cond_3
    const-string/jumbo v0, "level"

    invoke-virtual {p1, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 135
    const-string/jumbo v6, "scale"

    invoke-virtual {p1, v6, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 136
    int-to-double v10, v0

    int-to-double v6, v6

    div-double v6, v10, v6

    .line 137
    cmpg-double v0, v6, v4

    if-ltz v0, :cond_4

    cmpl-double v0, v6, v8

    if-lez v0, :cond_5

    :cond_4
    move-wide v6, v8

    .line 146
    :cond_5
    if-eqz v3, :cond_7

    move v0, v1

    .line 147
    :goto_2
    const-string/jumbo v3, "status"

    invoke-virtual {p1, v3, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 148
    const/4 v8, 0x5

    if-ne v3, v8, :cond_8

    .line 149
    :goto_3
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    move-wide v2, v4

    .line 152
    :goto_4
    new-instance v1, Lorg/chromium/mojom/device/BatteryStatus;

    invoke-direct {v1}, Lorg/chromium/mojom/device/BatteryStatus;-><init>()V

    .line 153
    iput-boolean v0, v1, Lorg/chromium/mojom/device/BatteryStatus;->charging:Z

    .line 154
    iput-wide v2, v1, Lorg/chromium/mojom/device/BatteryStatus;->chargingTime:D

    .line 155
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v2, v1, Lorg/chromium/mojom/device/BatteryStatus;->dischargingTime:D

    .line 156
    iput-wide v6, v1, Lorg/chromium/mojom/device/BatteryStatus;->level:D

    .line 158
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAndroidBatteryManager:Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;

    if-eqz v0, :cond_6

    .line 159
    invoke-direct {p0, v1}, Lorg/chromium/device/battery/BatteryStatusManager;->updateBatteryStatusForLollipop(Lorg/chromium/mojom/device/BatteryStatus;)V

    .line 162
    :cond_6
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mCallback:Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;

    invoke-interface {v0, v1}, Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;->onBatteryStatusChanged(Lorg/chromium/mojom/device/BatteryStatus;)V

    goto :goto_0

    :cond_7
    move v0, v2

    .line 146
    goto :goto_2

    :cond_8
    move v1, v2

    .line 148
    goto :goto_3

    .line 149
    :cond_9
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_4
.end method

.method start()Z
    .locals 3

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    .line 103
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    return v0
.end method

.method stop()V
    .locals 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/device/battery/BatteryStatusManager;->mEnabled:Z

    .line 114
    :cond_0
    return-void
.end method
