.class public Lorg/chromium/device/vibration/VibrationManagerImpl;
.super Ljava/lang/Object;
.source "VibrationManagerImpl.java"

# interfaces
.implements Lorg/chromium/mojom/device/VibrationManager;


# static fields
.field private static sVibratorWrapper:Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mHasVibratePermission:Z

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 56
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mVibrator:Landroid/os/Vibrator;

    .line 57
    sget-object v0, Lorg/chromium/device/vibration/VibrationManagerImpl;->sVibratorWrapper:Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;

    invoke-direct {v0}, Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;-><init>()V

    sput-object v0, Lorg/chromium/device/vibration/VibrationManagerImpl;->sVibratorWrapper:Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;

    .line 60
    :cond_0
    const-string/jumbo v0, "android.permission.VIBRATE"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mHasVibratePermission:Z

    .line 63
    iget-boolean v0, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mHasVibratePermission:Z

    if-nez v0, :cond_1

    .line 64
    const-string/jumbo v0, "VibrationManagerImpl"

    const-string/jumbo v1, "Failed to use vibrate API, requires VIBRATE permission."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    return-void

    .line 60
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mHasVibratePermission:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/device/vibration/VibrationManagerImpl;->sVibratorWrapper:Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;

    iget-object v1, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;->cancel(Landroid/os/Vibrator;)V

    .line 90
    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public vibrate(J)V
    .locals 5

    .prologue
    .line 78
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x2710

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 81
    iget-object v2, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mHasVibratePermission:Z

    if-eqz v2, :cond_0

    .line 83
    sget-object v2, Lorg/chromium/device/vibration/VibrationManagerImpl;->sVibratorWrapper:Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;

    iget-object v3, p0, Lorg/chromium/device/vibration/VibrationManagerImpl;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2, v3, v0, v1}, Lorg/chromium/device/vibration/VibrationManagerImpl$AndroidVibratorWrapper;->vibrate(Landroid/os/Vibrator;J)V

    .line 85
    :cond_0
    return-void
.end method
