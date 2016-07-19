.class public Lorg/chromium/ui/base/DeviceFormFactor;
.super Ljava/lang/Object;
.source "DeviceFormFactor.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final MINIMUM_TABLET_WIDTH_DP:I = 0x258

.field private static sIsLargeTablet:Ljava/lang/Boolean;

.field private static sIsTablet:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    const-class v0, Lorg/chromium/ui/base/DeviceFormFactor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/base/DeviceFormFactor;->$assertionsDisabled:Z

    .line 25
    sput-object v1, Lorg/chromium/ui/base/DeviceFormFactor;->sIsTablet:Ljava/lang/Boolean;

    .line 26
    sput-object v1, Lorg/chromium/ui/base/DeviceFormFactor;->sIsLargeTablet:Ljava/lang/Boolean;

    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmallestDeviceWidthDp(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 61
    sget-boolean v0, Lorg/chromium/ui/base/DeviceFormFactor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 64
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 70
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v2

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 77
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto :goto_0
.end method

.method public static isLargeTablet(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lorg/chromium/ui/base/DeviceFormFactor;->sIsLargeTablet:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 48
    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->getSmallestDeviceWidthDp(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/base/DeviceFormFactor;->sIsLargeTablet:Ljava/lang/Boolean;

    .line 50
    :cond_0
    sget-object v0, Lorg/chromium/ui/base/DeviceFormFactor;->sIsLargeTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lorg/chromium/ui/base/DeviceFormFactor;->sIsTablet:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 36
    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->getSmallestDeviceWidthDp(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/ui/base/DeviceFormFactor;->sIsTablet:Ljava/lang/Boolean;

    .line 38
    :cond_0
    sget-object v0, Lorg/chromium/ui/base/DeviceFormFactor;->sIsTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
