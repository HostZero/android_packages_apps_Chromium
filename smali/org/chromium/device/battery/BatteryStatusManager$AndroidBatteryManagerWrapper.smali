.class Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;
.super Ljava/lang/Object;
.source "BatteryStatusManager.java"


# instance fields
.field private final mBatteryManager:Landroid/os/BatteryManager;


# direct methods
.method protected constructor <init>(Landroid/os/BatteryManager;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;->mBatteryManager:Landroid/os/BatteryManager;

    .line 59
    return-void
.end method


# virtual methods
.method public getIntProperty(I)I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager$AndroidBatteryManagerWrapper;->mBatteryManager:Landroid/os/BatteryManager;

    invoke-virtual {v0, p1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    return v0
.end method
