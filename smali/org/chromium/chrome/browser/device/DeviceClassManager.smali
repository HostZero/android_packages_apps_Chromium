.class public Lorg/chromium/chrome/browser/device/DeviceClassManager;
.super Ljava/lang/Object;
.source "DeviceClassManager.java"


# static fields
.field private static sInstance:Lorg/chromium/chrome/browser/device/DeviceClassManager;


# instance fields
.field private mDisableAutoHidingToolbar:Ljava/lang/Boolean;

.field private mDisableDomainReliability:Z

.field private mEnableAccessibilityLayout:Z

.field private mEnableAnimations:Z

.field private final mEnableFullscreen:Z

.field private mEnableLayerDecorationCache:Z

.field private mEnablePrerendering:Z

.field private mEnableSnapshots:Z

.field private mEnableToolbarSwipe:Z

.field private mEnableToolbarSwipeInDocumentMode:Z


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableSnapshots:Z

    .line 60
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableLayerDecorationCache:Z

    .line 61
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableAccessibilityLayout:Z

    .line 62
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableAnimations:Z

    .line 63
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnablePrerendering:Z

    .line 64
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableToolbarSwipe:Z

    .line 65
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mDisableDomainReliability:Z

    .line 76
    :goto_0
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableAccessibilityLayout:Z

    .line 81
    :cond_0
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v2

    .line 82
    iget-boolean v3, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableAccessibilityLayout:Z

    const-string/jumbo v4, "enable-accessibility-tab-switcher"

    invoke-virtual {v2, v4}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v3, v4

    iput-boolean v3, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableAccessibilityLayout:Z

    .line 84
    const-string/jumbo v3, "disable-fullscreen"

    invoke-virtual {v2, v3}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableFullscreen:Z

    .line 86
    const-string/jumbo v0, "enable-toolbar-swipe-in-document-mode"

    invoke-virtual {v2, v0}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableToolbarSwipeInDocumentMode:Z

    .line 90
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableAccessibilityLayout:Z

    if-eqz v0, :cond_1

    .line 91
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableAnimations:Z

    .line 93
    :cond_1
    return-void

    .line 67
    :cond_2
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableSnapshots:Z

    .line 68
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableLayerDecorationCache:Z

    .line 69
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableAccessibilityLayout:Z

    .line 70
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableAnimations:Z

    .line 71
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnablePrerendering:Z

    .line 72
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableToolbarSwipe:Z

    .line 73
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mDisableDomainReliability:Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 84
    goto :goto_1
.end method

.method public static disableDomainReliability()Z
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->getInstance()Lorg/chromium/chrome/browser/device/DeviceClassManager;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mDisableDomainReliability:Z

    return v0
.end method

.method public static enableAccessibilityLayout()Z
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->getInstance()Lorg/chromium/chrome/browser/device/DeviceClassManager;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableAccessibilityLayout:Z

    return v0
.end method

.method public static enableAnimations(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->getInstance()Lorg/chromium/chrome/browser/device/DeviceClassManager;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableAnimations:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->isAccessibilityModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static enableFullscreen()Z
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->getInstance()Lorg/chromium/chrome/browser/device/DeviceClassManager;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableFullscreen:Z

    return v0
.end method

.method public static enableLayerDecorationCache()Z
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->getInstance()Lorg/chromium/chrome/browser/device/DeviceClassManager;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableLayerDecorationCache:Z

    return v0
.end method

.method public static enablePrerendering()Z
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->getInstance()Lorg/chromium/chrome/browser/device/DeviceClassManager;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnablePrerendering:Z

    return v0
.end method

.method public static enableSnapshots()Z
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->getInstance()Lorg/chromium/chrome/browser/device/DeviceClassManager;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableSnapshots:Z

    return v0
.end method

.method public static enableToolbarSwipe(Z)Z
    .locals 1

    .prologue
    .line 143
    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->getInstance()Lorg/chromium/chrome/browser/device/DeviceClassManager;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableToolbarSwipe:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->getInstance()Lorg/chromium/chrome/browser/device/DeviceClassManager;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mEnableToolbarSwipeInDocumentMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getInstance()Lorg/chromium/chrome/browser/device/DeviceClassManager;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->sInstance:Lorg/chromium/chrome/browser/device/DeviceClassManager;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lorg/chromium/chrome/browser/device/DeviceClassManager;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/device/DeviceClassManager;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->sInstance:Lorg/chromium/chrome/browser/device/DeviceClassManager;

    .line 49
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->sInstance:Lorg/chromium/chrome/browser/device/DeviceClassManager;

    return-object v0
.end method

.method public static isAccessibilityModeEnabled(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 155
    const-string/jumbo v0, "DeviceClassManager::isAccessibilityModeEnabled"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 156
    const-string/jumbo v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 158
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 160
    :goto_0
    const-string/jumbo v1, "DeviceClassManager::isAccessibilityModeEnabled"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 161
    return v0

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAutoHidingToolbarDisabled(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 169
    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->getInstance()Lorg/chromium/chrome/browser/device/DeviceClassManager;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mDisableAutoHidingToolbar:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 170
    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->getInstance()Lorg/chromium/chrome/browser/device/DeviceClassManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mDisableAutoHidingToolbar:Ljava/lang/Boolean;

    .line 171
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "disable-auto-hiding-toolbar-threshold"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->getSwitchValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const-string/jumbo v0, "DisableAutoHidingToolbar"

    const-string/jumbo v1, "disable_auto_hiding_toolbar_threshold"

    invoke-static {v0, v1}, Lorg/chromium/components/variations/VariationsAssociatedData;->getVariationParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 183
    if-lt v1, v0, :cond_1

    .line 184
    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->getInstance()Lorg/chromium/chrome/browser/device/DeviceClassManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mDisableAutoHidingToolbar:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_1
    :goto_0
    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->getInstance()Lorg/chromium/chrome/browser/device/DeviceClassManager;

    move-result-object v0

    iget-object v0, v0, Lorg/chromium/chrome/browser/device/DeviceClassManager;->mDisableAutoHidingToolbar:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
