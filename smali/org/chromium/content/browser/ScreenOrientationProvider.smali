.class public Lorg/chromium/content/browser/ScreenOrientationProvider;
.super Ljava/lang/Object;
.source "ScreenOrientationProvider.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    return-void
.end method

.method private static getOrientationFromWebScreenOrientations(BLandroid/app/Activity;)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    packed-switch p0, :pswitch_data_0

    .line 61
    const-string/jumbo v1, "cr.ScreenOrientation"

    const-string/jumbo v3, "Trying to lock to unsupported orientation!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 33
    goto :goto_0

    .line 35
    :pswitch_2
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_3
    move v0, v2

    .line 37
    goto :goto_0

    .line 39
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 41
    :pswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 43
    :pswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 45
    :pswitch_7
    const/16 v0, 0xa

    goto :goto_0

    .line 47
    :pswitch_8
    invoke-static {p1}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->create(Landroid/content/Context;)Lorg/chromium/ui/gfx/DeviceDisplayInfo;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getRotationDegrees()I

    move-result v3

    .line 49
    if-eqz v3, :cond_0

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_2

    .line 50
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplayHeight()I

    move-result v3

    invoke-virtual {v0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplayWidth()I

    move-result v0

    if-lt v3, v0, :cond_1

    move v0, v1

    .line 51
    goto :goto_0

    :cond_1
    move v0, v2

    .line 53
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplayHeight()I

    move-result v3

    invoke-virtual {v0}, Lorg/chromium/ui/gfx/DeviceDisplayInfo;->getDisplayWidth()I

    move-result v0

    if-ge v3, v0, :cond_3

    move v0, v1

    .line 56
    goto :goto_0

    :cond_3
    move v0, v2

    .line 58
    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method static lockOrientation(B)V
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/chromium/content/browser/ScreenOrientationProvider;->lockOrientation(BLandroid/app/Activity;)V

    .line 69
    return-void
.end method

.method public static lockOrientation(BLandroid/app/Activity;)V
    .locals 2

    .prologue
    .line 72
    if-nez p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-static {p0, p1}, Lorg/chromium/content/browser/ScreenOrientationProvider;->getOrientationFromWebScreenOrientations(BLandroid/app/Activity;)I

    move-result v0

    .line 75
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 79
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method static startAccurateListening()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lorg/chromium/content/browser/ScreenOrientationProvider$1;

    invoke-direct {v0}, Lorg/chromium/content/browser/ScreenOrientationProvider$1;-><init>()V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method static stopAccurateListening()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lorg/chromium/content/browser/ScreenOrientationProvider$2;

    invoke-direct {v0}, Lorg/chromium/content/browser/ScreenOrientationProvider$2;-><init>()V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method static unlockOrientation()V
    .locals 5

    .prologue
    .line 84
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v2

    .line 85
    if-nez v2, :cond_0

    .line 109
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "org.chromium.content_public.common.orientation"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 96
    int-to-byte v0, v0

    invoke-static {v0, v2}, Lorg/chromium/content/browser/ScreenOrientationProvider;->getOrientationFromWebScreenOrientations(BLandroid/app/Activity;)I

    move-result v0

    .line 100
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 101
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 103
    iget v0, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_1
    invoke-virtual {v2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    throw v1
.end method
