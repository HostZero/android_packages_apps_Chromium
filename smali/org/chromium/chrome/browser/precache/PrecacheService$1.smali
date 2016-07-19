.class Lorg/chromium/chrome/browser/precache/PrecacheService$1;
.super Landroid/content/BroadcastReceiver;
.source "PrecacheService.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/precache/PrecacheService;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/precache/PrecacheService;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/chromium/chrome/browser/precache/PrecacheService$1;->this$0:Lorg/chromium/chrome/browser/precache/PrecacheService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 66
    # getter for: Lorg/chromium/chrome/browser/precache/PrecacheService;->sIsPrecaching:Z
    invoke-static {}, Lorg/chromium/chrome/browser/precache/PrecacheService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService$1;->this$0:Lorg/chromium/chrome/browser/precache/PrecacheService;

    # getter for: Lorg/chromium/chrome/browser/precache/PrecacheService;->mDeviceState:Lorg/chromium/components/precache/DeviceState;
    invoke-static {v0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->access$100(Lorg/chromium/chrome/browser/precache/PrecacheService;)Lorg/chromium/components/precache/DeviceState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/components/precache/DeviceState;->isPowerConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService$1;->this$0:Lorg/chromium/chrome/browser/precache/PrecacheService;

    # getter for: Lorg/chromium/chrome/browser/precache/PrecacheService;->mDeviceState:Lorg/chromium/components/precache/DeviceState;
    invoke-static {v0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->access$100(Lorg/chromium/chrome/browser/precache/PrecacheService;)Lorg/chromium/components/precache/DeviceState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/components/precache/DeviceState;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/precache/PrecacheService$1;->this$0:Lorg/chromium/chrome/browser/precache/PrecacheService;

    # invokes: Lorg/chromium/chrome/browser/precache/PrecacheService;->cancelPrecaching()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/precache/PrecacheService;->access$200(Lorg/chromium/chrome/browser/precache/PrecacheService;)V

    .line 70
    :cond_1
    return-void
.end method
