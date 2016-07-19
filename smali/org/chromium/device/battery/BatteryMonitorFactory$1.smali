.class Lorg/chromium/device/battery/BatteryMonitorFactory$1;
.super Ljava/lang/Object;
.source "BatteryMonitorFactory.java"

# interfaces
.implements Lorg/chromium/device/battery/BatteryStatusManager$BatteryStatusCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/device/battery/BatteryMonitorFactory;


# direct methods
.method constructor <init>(Lorg/chromium/device/battery/BatteryMonitorFactory;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lorg/chromium/device/battery/BatteryMonitorFactory$1;->this$0:Lorg/chromium/device/battery/BatteryMonitorFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryStatusChanged(Lorg/chromium/mojom/device/BatteryStatus;)V
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 35
    iget-object v0, p0, Lorg/chromium/device/battery/BatteryMonitorFactory$1;->this$0:Lorg/chromium/device/battery/BatteryMonitorFactory;

    # getter for: Lorg/chromium/device/battery/BatteryMonitorFactory;->mSubscribedMonitors:Ljava/util/HashSet;
    invoke-static {v0}, Lorg/chromium/device/battery/BatteryMonitorFactory;->access$000(Lorg/chromium/device/battery/BatteryMonitorFactory;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/device/battery/BatteryMonitorImpl;

    .line 36
    invoke-virtual {v0, p1}, Lorg/chromium/device/battery/BatteryMonitorImpl;->didChange(Lorg/chromium/mojom/device/BatteryStatus;)V

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method
