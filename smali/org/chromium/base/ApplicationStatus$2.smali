.class final Lorg/chromium/base/ApplicationStatus$2;
.super Ljava/lang/Object;
.source "ApplicationStatus.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    # invokes: Lorg/chromium/base/ApplicationStatus;->onStateChange(Landroid/app/Activity;I)V
    invoke-static {p1, v0}, Lorg/chromium/base/ApplicationStatus;->access$100(Landroid/app/Activity;I)V

    .line 140
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x6

    # invokes: Lorg/chromium/base/ApplicationStatus;->onStateChange(Landroid/app/Activity;I)V
    invoke-static {p1, v0}, Lorg/chromium/base/ApplicationStatus;->access$100(Landroid/app/Activity;I)V

    .line 145
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x4

    # invokes: Lorg/chromium/base/ApplicationStatus;->onStateChange(Landroid/app/Activity;I)V
    invoke-static {p1, v0}, Lorg/chromium/base/ApplicationStatus;->access$100(Landroid/app/Activity;I)V

    .line 150
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x3

    # invokes: Lorg/chromium/base/ApplicationStatus;->onStateChange(Landroid/app/Activity;I)V
    invoke-static {p1, v0}, Lorg/chromium/base/ApplicationStatus;->access$100(Landroid/app/Activity;I)V

    .line 155
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x2

    # invokes: Lorg/chromium/base/ApplicationStatus;->onStateChange(Landroid/app/Activity;I)V
    invoke-static {p1, v0}, Lorg/chromium/base/ApplicationStatus;->access$100(Landroid/app/Activity;I)V

    .line 163
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x5

    # invokes: Lorg/chromium/base/ApplicationStatus;->onStateChange(Landroid/app/Activity;I)V
    invoke-static {p1, v0}, Lorg/chromium/base/ApplicationStatus;->access$100(Landroid/app/Activity;I)V

    .line 168
    return-void
.end method
