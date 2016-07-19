.class public Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;
.super Ljava/lang/Object;
.source "PrivacyPreferencesManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/preferences/privacy/CrashReportingPermissionManager;


# static fields
.field static final PREF_CRASH_DUMP_UPLOAD:Ljava/lang/String; = "crash_dump_upload"

.field static final PREF_CRASH_DUMP_UPLOAD_NO_CELLULAR:Ljava/lang/String; = "crash_dump_upload_no_cellular"

.field private static sInstance:Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCrashDumpAlwaysUpload:Ljava/lang/String;

.field private final mCrashDumpNeverUpload:Ljava/lang/String;

.field private final mCrashDumpWifiOnlyUpload:Ljava/lang/String;

.field private mCrashUploadingCommandLineDisabled:Z

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashUploadingCommandLineDisabled:Z

    .line 61
    sget v0, Lorg/chromium/chrome/R$string;->crash_dump_never_upload_value:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashDumpNeverUpload:Ljava/lang/String;

    .line 62
    sget v0, Lorg/chromium/chrome/R$string;->crash_dump_only_with_wifi_value:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashDumpWifiOnlyUpload:Ljava/lang/String;

    .line 63
    sget v0, Lorg/chromium/chrome/R$string;->crash_dump_always_upload_value:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashDumpAlwaysUpload:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private allowUploadCrashDump()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isCellularExperimentEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isUsageAndCrashReportingEnabled()Z

    move-result v0

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isMobileNetworkCapable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 236
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "crash_dump_upload"

    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashDumpNeverUpload:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashDumpAlwaysUpload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashDumpWifiOnlyUpload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isWiFiOrEthernetNetwork()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 242
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "crash_dump_upload_no_cellular"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 188
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->sInstance:Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->sInstance:Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    .line 70
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->sInstance:Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    return-object v0
.end method


# virtual methods
.method public enablePotentialCrashUploading()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashUploadingCommandLineDisabled:Z

    .line 309
    return-void
.end method

.method public getPrefCrashDumpUploadPreference()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "crash_dump_upload"

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashDumpNeverUpload:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initCrashUploadPreference(Z)V
    .locals 3

    .prologue
    .line 340
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isMobileNetworkCapable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    if-eqz p1, :cond_0

    .line 343
    const-string/jumbo v1, "crash_dump_upload"

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashDumpWifiOnlyUpload:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 351
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 352
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setCrashReporting(Z)V

    .line 353
    return-void

    .line 345
    :cond_0
    const-string/jumbo v1, "crash_dump_upload"

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashDumpNeverUpload:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 348
    :cond_1
    const-string/jumbo v1, "crash_dump_upload"

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashDumpNeverUpload:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 349
    const-string/jumbo v1, "crash_dump_upload_no_cellular"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public isCellularExperimentEnabled()Z
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "cellular_experiment"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected isMobileNetworkCapable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 204
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 210
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected isNetworkAvailable()Z
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeverUploadCrashDump()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 317
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isCellularExperimentEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isUsageAndCrashReportingEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 318
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 317
    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isUploadCrashDumpEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isPhysicalWebEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 452
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "physical_web"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 453
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhysicalWebOnboarding()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 442
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "physical_web"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 443
    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUploadCommandLineDisabled()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashUploadingCommandLineDisabled:Z

    return v0
.end method

.method public isUploadCrashDumpEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 327
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isMobileNetworkCapable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "crash_dump_upload"

    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashDumpNeverUpload:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashDumpNeverUpload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 332
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "crash_dump_upload_no_cellular"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isUploadLimited()Z
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isCellularExperimentEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isWiFiOrEthernetNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUploadPermitted()Z
    .locals 2

    .prologue
    .line 367
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashUploadingCommandLineDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->allowUploadCrashDump()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "force-dump-upload"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUploadUserPermitted()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isCellularExperimentEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isUsageAndCrashReportingEnabled()Z

    move-result v0

    .line 401
    :cond_0
    :goto_0
    return v0

    .line 396
    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isMobileNetworkCapable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "crash_dump_upload"

    iget-object v3, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashDumpNeverUpload:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashDumpAlwaysUpload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashDumpWifiOnlyUpload:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 401
    :cond_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "crash_dump_upload_no_cellular"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isUsageAndCrashReportingEnabled()Z
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "metrics_reporting"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isUploadCrashDumpEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->setUsageAndCrashReporting(Z)V

    .line 257
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "metrics_reporting"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected isWiFiOrEthernetNetwork()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 197
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 198
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v2, v0, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public migrateNetworkPredictionPreferences()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 92
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v3

    .line 97
    :try_start_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "network_predictions"

    const-string/jumbo v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    .line 104
    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->obsoleteNetworkPredictionOptionsHasUserSetting()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    :cond_0
    :goto_1
    return-void

    .line 99
    :catch_0
    move-exception v2

    move v2, v0

    goto :goto_0

    .line 110
    :cond_1
    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "prefetch_bandwidth"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "prefetch_bandwidth_no_cellular"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    :cond_2
    sget-object v2, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->PRERENDER_ON_WIFI:Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->title()Ljava/lang/String;

    move-result-object v2

    .line 120
    iget-object v4, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "prefetch_bandwidth"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    iget-object v5, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "prefetch_bandwidth_no_cellular"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 126
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq v5, v0, :cond_6

    .line 130
    :cond_3
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isMobileNetworkCapable()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 131
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "prefetch_bandwidth"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    invoke-static {v4}, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->getBandwidthFromTitle(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    move-result-object v2

    .line 134
    sget-object v4, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->NEVER_PRERENDER:Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    invoke-virtual {v4, v2}, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v0, v1

    .line 153
    :cond_4
    :goto_2
    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->obsoleteNetworkPredictionEnabledHasUserSetting()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->obsoleteGetNetworkPredictionEnabledUserPrefValue()Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 158
    :cond_5
    invoke-virtual {v3, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setNetworkPredictionEnabled(Z)V

    .line 162
    :cond_6
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "prefetch_bandwidth"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 165
    const-string/jumbo v1, "prefetch_bandwidth"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    :cond_7
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "prefetch_bandwidth_no_cellular"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 168
    const-string/jumbo v1, "prefetch_bandwidth_no_cellular"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    :cond_8
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "allow_prefetch"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 173
    const-string/jumbo v1, "allow_prefetch"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    :cond_9
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "network_predictions"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 180
    const-string/jumbo v1, "network_predictions"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    :cond_a
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1

    .line 136
    :cond_b
    sget-object v4, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->PRERENDER_ON_WIFI:Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    invoke-virtual {v4, v2}, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 138
    sget-object v4, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->ALWAYS_PRERENDER:Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;

    invoke-virtual {v4, v2}, Lorg/chromium/chrome/browser/preferences/privacy/BandwidthType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 144
    :cond_c
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "prefetch_bandwidth_no_cellular"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 145
    if-nez v5, :cond_4

    move v0, v1

    .line 148
    goto :goto_2
.end method

.method public setCellularExperiment(Z)V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "cellular_experiment"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 275
    return-void
.end method

.method public setPhysicalWebEnabled(Z)V
    .locals 4

    .prologue
    .line 424
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 425
    :goto_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->isPhysicalWebOnboarding()Z

    move-result v1

    .line 426
    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "physical_web"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 427
    if-eqz p1, :cond_2

    .line 428
    if-nez v1, :cond_0

    .line 429
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mContext:Landroid/content/Context;

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->startPhysicalWeb(Lorg/chromium/chrome/browser/ChromeApplication;)V

    .line 434
    :cond_0
    :goto_1
    return-void

    .line 424
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 432
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mContext:Landroid/content/Context;

    check-cast v0, Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWeb;->stopPhysicalWeb(Lorg/chromium/chrome/browser/ChromeApplication;)V

    goto :goto_1
.end method

.method public setUploadCrashDump(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mCrashDumpNeverUpload:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 297
    :goto_0
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setCrashReporting(Z)V

    .line 298
    return-void

    .line 296
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUsageAndCrashReporting(Z)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "metrics_reporting"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 267
    return-void
.end method

.method public shouldPrerender()Z
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lorg/chromium/chrome/browser/device/DeviceClassManager;->enablePrerendering()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 222
    :goto_0
    return v0

    .line 221
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->migrateNetworkPredictionPreferences()V

    .line 222
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->canPrefetchAndPrerender()Z

    move-result v0

    goto :goto_0
.end method
