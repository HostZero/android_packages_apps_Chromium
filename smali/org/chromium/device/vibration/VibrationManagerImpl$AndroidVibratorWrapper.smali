.class public Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;
.super Ljava/lang/Object;
.source "VibrationManagerImpl.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Landroid/os/Vibrator;)V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/os/Vibrator;->cancel()V

    .line 46
    return-void
.end method

.method public vibrate(Landroid/os/Vibrator;J)V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p1, p2, p3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 42
    return-void
.end method
