.class public Lorg/chromium/ui/base/TouchDevice;
.super Ljava/lang/Object;
.source "TouchDevice.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static availableHoverTypes(Landroid/content/Context;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 87
    .line 89
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_4

    aget v4, v2, v1

    .line 90
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 91
    if-eqz v4, :cond_1

    .line 93
    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v4

    .line 95
    const/16 v5, 0x2002

    invoke-static {v4, v5}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v5

    if-nez v5, :cond_0

    const v5, 0x100008

    invoke-static {v4, v5}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v5

    if-nez v5, :cond_0

    const v5, 0x10004

    invoke-static {v4, v5}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    :cond_0
    or-int/lit8 v0, v0, 0x4

    .line 89
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_2
    const/16 v5, 0x4002

    invoke-static {v4, v5}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v5, 0x1002

    invoke-static {v4, v5}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    :cond_3
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 107
    :cond_4
    if-nez v0, :cond_5

    const/4 v0, 0x1

    .line 109
    :cond_5
    return v0
.end method

.method private static availablePointerTypes(Landroid/content/Context;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 57
    .line 59
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget v4, v2, v1

    .line 60
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    .line 61
    if-eqz v4, :cond_1

    .line 63
    invoke-virtual {v4}, Landroid/view/InputDevice;->getSources()I

    move-result v4

    .line 65
    const/16 v5, 0x2002

    invoke-static {v4, v5}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x4002

    invoke-static {v4, v5}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v5

    if-nez v5, :cond_0

    const v5, 0x100008

    invoke-static {v4, v5}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v5

    if-nez v5, :cond_0

    const v5, 0x10004

    invoke-static {v4, v5}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    :cond_0
    or-int/lit8 v0, v0, 0x4

    .line 59
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_2
    const/16 v5, 0x1002

    invoke-static {v4, v5}, Lorg/chromium/ui/base/TouchDevice;->hasSource(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 77
    :cond_3
    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 79
    :cond_4
    return v0
.end method

.method private static hasSource(II)Z
    .locals 1

    .prologue
    .line 113
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static maxTouchPoints(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.touchscreen.multitouch.jazzhand"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    const/4 v0, 0x5

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
