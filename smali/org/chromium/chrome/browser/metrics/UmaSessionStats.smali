.class public Lorg/chromium/chrome/browser/metrics/UmaSessionStats;
.super Ljava/lang/Object;
.source "UmaSessionStats.java"

# interfaces
.implements Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;


# static fields
.field public static final LAST_USED_TIME_PREF:Ljava/lang/String; = "umasessionstats.lastusedtime"

.field private static sNativeUmaSessionStats:J


# instance fields
.field private mComponentCallbacks:Landroid/content/ComponentCallbacks;

.field private final mContext:Landroid/content/Context;

.field private final mIsMultiWindowCapable:Z

.field private mKeyboardConnected:Z

.field private final mReportingPermissionManager:Lorg/chromium/chrome/browser/preferences/privacy/CrashReportingPermissionManager;

.field private mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

.field private mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->sNativeUmaSessionStats:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mKeyboardConnected:Z

    .line 49
    iput-object p1, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mIsMultiWindowCapable:Z

    .line 52
    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mReportingPermissionManager:Lorg/chromium/chrome/browser/preferences/privacy/CrashReportingPermissionManager;

    .line 53
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/chrome/browser/metrics/UmaSessionStats;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mKeyboardConnected:Z

    return p1
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/metrics/UmaSessionStats;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->recordPageLoadStats(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method private static ensureNativeInitialized()V
    .locals 4

    .prologue
    .line 118
    sget-wide v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->sNativeUmaSessionStats:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 119
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->nativeInit()J

    move-result-wide v0

    sput-wide v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->sNativeUmaSessionStats:J

    .line 121
    :cond_0
    return-void
.end method

.method private getTabCountFromModel(Lorg/chromium/chrome/browser/tabmodel/TabModel;)I
    .locals 1

    .prologue
    .line 74
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public static logRendererCrash()V
    .locals 0

    .prologue
    .line 154
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->nativeLogRendererCrash()V

    .line 155
    return-void
.end method

.method private static native nativeInit()J
.end method

.method private static native nativeLogRendererCrash()V
.end method

.method private static native nativeRecordMultiWindowSession(II)V
.end method

.method private static native nativeRecordPageLoaded(Z)V
.end method

.method private static native nativeRecordPageLoadedWithKeyboard()V
.end method

.method private static native nativeRecordTabCountPerLoad(I)V
.end method

.method private static native nativeRegisterExternalExperiment(II)V
.end method

.method private static native nativeRegisterSyntheticFieldTrial(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeUmaEndSession(J)V
.end method

.method private native nativeUmaResumeSession(J)V
.end method

.method private native nativeUpdateMetricsServiceState(ZZ)V
.end method

.method private recordPageLoadStats(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getWebContents()Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->getNavigationController()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->getUseDesktopUserAgent()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 59
    :goto_0
    invoke-static {v0}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->nativeRecordPageLoaded(Z)V

    .line 60
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mKeyboardConnected:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->nativeRecordPageLoadedWithKeyboard()V

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-nez v0, :cond_2

    .line 71
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 57
    goto :goto_0

    .line 69
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    .line 70
    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->getTabCountFromModel(Lorg/chromium/chrome/browser/tabmodel/TabModel;)I

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->nativeRecordTabCountPerLoad(I)V

    goto :goto_1
.end method

.method private updatePreferences()V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v0

    .line 176
    const-string/jumbo v1, "true"

    const-string/jumbo v2, "UMA_EnableCellularLogUpload"

    const-string/jumbo v3, "Enabled"

    invoke-static {v2, v3}, Lorg/chromium/components/variations/VariationsAssociatedData;->getVariationParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 179
    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->setCellularExperiment(Z)V

    .line 182
    if-eqz v1, :cond_1

    .line 183
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->hasSetMetricsReporting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isUploadCrashDumpEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setMetricsReportingEnabled(Z)V

    .line 191
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isMetricsReportingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->setUsageAndCrashReporting(Z)V

    .line 193
    :cond_1
    return-void
.end method


# virtual methods
.method public logAndEndSession()V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;->destroy()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 145
    :cond_0
    sget-wide v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->sNativeUmaSessionStats:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->nativeUmaEndSession(J)V

    .line 146
    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->removeConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    .line 147
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "umasessionstats.lastusedtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    return-void
.end method

.method public logMultiWindowStats(III)V
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mIsMultiWindowCapable:Z

    if-eqz v0, :cond_0

    .line 128
    if-nez p2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    mul-int/lit8 v0, p1, 0x64

    div-int/2addr v0, p2

    .line 130
    if-lez v0, :cond_2

    .line 131
    :goto_1
    invoke-static {v0, p3}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->nativeRecordMultiWindowSession(II)V

    goto :goto_0

    .line 130
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onConnectionTypeChanged(I)V
    .locals 0

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->updateMetricsServiceState()V

    .line 198
    return-void
.end method

.method public startNewSession(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 83
    invoke-static {}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->ensureNativeInitialized()V

    .line 85
    iput-object p1, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    .line 86
    iget-object v1, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Lorg/chromium/chrome/browser/metrics/UmaSessionStats$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats$1;-><init>(Lorg/chromium/chrome/browser/metrics/UmaSessionStats;)V

    iput-object v1, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    .line 98
    iget-object v1, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v1, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 99
    iget-object v1, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mKeyboardConnected:Z

    .line 101
    new-instance v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats$2;

    iget-object v1, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mTabModelSelector:Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats$2;-><init>(Lorg/chromium/chrome/browser/metrics/UmaSessionStats;Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mTabModelSelectorTabObserver:Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorTabObserver;

    .line 109
    :cond_0
    sget-wide v0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->sNativeUmaSessionStats:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->nativeUmaResumeSession(J)V

    .line 110
    invoke-static {p0}, Lorg/chromium/net/NetworkChangeNotifier;->addConnectionTypeObserver(Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;)V

    .line 111
    invoke-direct {p0}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->updatePreferences()V

    .line 112
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->updateMetricsServiceState()V

    .line 113
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateMetricsServiceState()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isNeverUploadCrashDump()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 163
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mReportingPermissionManager:Lorg/chromium/chrome/browser/preferences/privacy/CrashReportingPermissionManager;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/preferences/privacy/CrashReportingPermissionManager;->isUploadPermitted()Z

    move-result v1

    .line 166
    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->nativeUpdateMetricsServiceState(ZZ)V

    .line 167
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
