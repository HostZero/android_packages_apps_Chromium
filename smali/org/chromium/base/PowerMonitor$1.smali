.class final Lorg/chromium/base/PowerMonitor$1;
.super Ljava/lang/Object;
.source "PowerMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 39
    # invokes: Lorg/chromium/base/PowerMonitor;->nativeOnMainActivitySuspended()V
    invoke-static {}, Lorg/chromium/base/PowerMonitor;->access$100()V

    .line 40
    return-void
.end method
