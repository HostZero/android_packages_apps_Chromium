.class Lorg/chromium/chrome/browser/PowerBroadcastReceiver$PowerManagerHelper;
.super Ljava/lang/Object;
.source "PowerBroadcastReceiver.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isScreenOn(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 43
    invoke-static {p1}, Lorg/chromium/base/ApiCompatibilityUtils;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
