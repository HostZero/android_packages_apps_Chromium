.class public Lorg/chromium/chrome/browser/util/FeatureUtilities;
.super Ljava/lang/Object;
.source "FeatureUtilities.java"


# static fields
.field private static sCachedHerbFlavor:Ljava/lang/String;

.field private static sDocumentModeDisabled:Ljava/lang/Boolean;

.field private static sHasGoogleAccountAuthenticator:Ljava/lang/Boolean;

.field private static sHasRecognitionIntentHandler:Ljava/lang/Boolean;

.field private static sIsHerbFlavorCached:Z

.field private static sResetListener:Lorg/chromium/base/CommandLine$ResetListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sResetListener:Lorg/chromium/base/CommandLine$ResetListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 39
    sput-object p0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sDocumentModeDisabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static cacheHerbFlavor()V
    .locals 5

    .prologue
    .line 225
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 226
    invoke-static {v1}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isHerbDisallowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->getHerbFlavor()Ljava/lang/String;

    move-result-object v2

    .line 232
    const-string/jumbo v0, "TabManagementExperiment"

    invoke-static {v0}, Lorg/chromium/base/FieldTrialList;->findFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Experiment flavor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "Control"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "Default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 237
    :cond_2
    const-string/jumbo v0, "Disabled"

    .line 248
    :cond_3
    :goto_1
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v3

    .line 249
    const-string/jumbo v4, "tab-management-experiment-type-disabled"

    invoke-virtual {v3, v4}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 250
    const-string/jumbo v0, "Disabled"

    .line 261
    :cond_4
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Caching flavor: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    sput-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sCachedHerbFlavor:Ljava/lang/String;

    .line 264
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 265
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->setCachedHerbFlavor(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_5
    const-string/jumbo v3, "Anise"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 239
    const-string/jumbo v0, "Anise"

    goto :goto_1

    .line 240
    :cond_6
    const-string/jumbo v3, "Basil"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 241
    const-string/jumbo v0, "Basil"

    goto :goto_1

    .line 242
    :cond_7
    const-string/jumbo v3, "Chive"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 243
    const-string/jumbo v0, "Chive"

    goto :goto_1

    .line 244
    :cond_8
    const-string/jumbo v3, "Dill"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 245
    const-string/jumbo v0, "Dill"

    goto :goto_1

    .line 251
    :cond_9
    const-string/jumbo v4, "tab-management-experiment-type-anise"

    invoke-virtual {v3, v4}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 252
    const-string/jumbo v0, "Anise"

    goto :goto_2

    .line 253
    :cond_a
    const-string/jumbo v4, "tab-management-experiment-type-basil"

    invoke-virtual {v3, v4}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 254
    const-string/jumbo v0, "Basil"

    goto :goto_2

    .line 255
    :cond_b
    const-string/jumbo v4, "tab-management-experiment-type-chive"

    invoke-virtual {v3, v4}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 256
    const-string/jumbo v0, "Chive"

    goto :goto_2

    .line 257
    :cond_c
    const-string/jumbo v4, "tab-management-experiment-type-dill"

    invoke-virtual {v3, v4}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 258
    const-string/jumbo v0, "Dill"

    goto/16 :goto_2
.end method

.method public static canAllowSync(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 82
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->hasGoogleAccountAuthenticator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->hasSyncPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->hasGoogleAccounts(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHerbFlavor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 200
    invoke-static {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isHerbDisallowed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "Disabled"

    .line 218
    :goto_0
    return-object v0

    .line 202
    :cond_0
    sget-boolean v1, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sIsHerbFlavorCached:Z

    if-nez v1, :cond_1

    .line 203
    const/4 v1, 0x0

    sput-object v1, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sCachedHerbFlavor:Ljava/lang/String;

    .line 206
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 208
    :try_start_0
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ChromePreferenceManager;->getCachedHerbFlavor()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sCachedHerbFlavor:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 214
    const/4 v0, 0x1

    sput-boolean v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sIsHerbFlavorCached:Z

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Retrieved cached Herb flavor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sCachedHerbFlavor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_1
    sget-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sCachedHerbFlavor:Ljava/lang/String;

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method

.method static hasGoogleAccountAuthenticator(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sHasGoogleAccountAuthenticator:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 89
    invoke-static {p0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->hasGoogleAccountAuthenticator()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sHasGoogleAccountAuthenticator:Ljava/lang/Boolean;

    .line 92
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sHasGoogleAccountAuthenticator:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static hasGoogleAccounts(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 97
    invoke-static {p0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->hasGoogleAccounts()Z

    move-result v0

    return v0
.end method

.method private static hasSyncPermissions(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v0, v3, :cond_0

    move v0, v1

    .line 107
    :goto_0
    return v0

    .line 105
    :cond_0
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 106
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    const-string/jumbo v3, "no_modify_accounts"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private static initResetListener()V
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sResetListener:Lorg/chromium/base/CommandLine$ResetListener;

    if-eqz v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/util/FeatureUtilities$1;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/util/FeatureUtilities$1;-><init>()V

    .line 186
    sput-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sResetListener:Lorg/chromium/base/CommandLine$ResetListener;

    invoke-static {v0}, Lorg/chromium/base/CommandLine;->addResetListener(Lorg/chromium/base/CommandLine$ResetListener;)V

    goto :goto_0
.end method

.method public static isDocumentMode(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sDocumentModeDisabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/CommandLine;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->initResetListener()V

    .line 118
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "disable-document-mode"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sDocumentModeDisabled:Ljava/lang/Boolean;

    .line 121
    :cond_0
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentModeEligible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->isOptedOutOfDocumentMode()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sDocumentModeDisabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sDocumentModeDisabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDocumentModeEligible(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isHerbDisallowed(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 190
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeVersionInfo;->isStableBuild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/ChromeVersionInfo;->isBetaBuild()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

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

.method public static isRecognitionIntentPresent(Landroid/content/Context;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 66
    sget-object v1, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sHasRecognitionIntentHandler:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    if-nez p1, :cond_2

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 68
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 70
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sHasRecognitionIntentHandler:Ljava/lang/Boolean;

    .line 73
    :cond_2
    sget-object v0, Lorg/chromium/chrome/browser/util/FeatureUtilities;->sHasRecognitionIntentHandler:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isTabSwitchingEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 160
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isTabSwitchingEnabledInDocumentModeInternal()Z

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

.method public static isTabSwitchingEnabledInDocumentMode(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 169
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isDocumentMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->isTabSwitchingEnabledInDocumentModeInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTabSwitchingEnabledInDocumentModeInternal()Z
    .locals 2

    .prologue
    .line 173
    invoke-static {}, Lorg/chromium/base/CommandLine;->getInstance()Lorg/chromium/base/CommandLine;

    move-result-object v0

    const-string/jumbo v1, "enable-tab-switcher-in-document-mode"

    invoke-virtual {v0, v1}, Lorg/chromium/base/CommandLine;->hasSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native nativeSetCustomTabVisible(Z)V
.end method

.method private static native nativeSetDocumentModeEnabled(Z)V
.end method

.method public static native nativeSetSqlMmapDisabledByDefault()V
.end method

.method public static setCustomTabVisible(Z)V
    .locals 0

    .prologue
    .line 150
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->nativeSetCustomTabVisible(Z)V

    .line 151
    return-void
.end method

.method public static setDocumentModeEnabled(Z)V
    .locals 0

    .prologue
    .line 142
    invoke-static {p0}, Lorg/chromium/chrome/browser/util/FeatureUtilities;->nativeSetDocumentModeEnabled(Z)V

    .line 143
    return-void
.end method
