.class Lorg/chromium/device/battery/BatteryStatusManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryStatusManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/device/battery/BatteryStatusManager;


# direct methods
.method constructor <init>(Lorg/chromium/device/battery/BatteryStatusManager;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lorg/chromium/device/battery/BatteryStatusManager$1;->this$0:Lorg/chromium/device/battery/BatteryStatusManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryStatusManager$1;->this$0:Lorg/chromium/device/battery/BatteryStatusManager;

    invoke-virtual {v0, p2}, Lorg/chromium/device/battery/BatteryStatusManager;->onReceive(Landroid/content/Intent;)V

    .line 42
    return-void
.end method
