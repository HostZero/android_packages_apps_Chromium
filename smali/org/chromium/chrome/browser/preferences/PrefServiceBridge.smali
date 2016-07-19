.class public final Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;
.super Ljava/lang/Object;
.source "PrefServiceBridge.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final LOCATION_AUTO_ALLOWED:Ljava/lang/String; = "search_engine_location_auto_allowed"

.field public static final SUPERVISED_USER_FILTERING_ALLOW:I = 0x0

.field public static final SUPERVISED_USER_FILTERING_BLOCK:I = 0x2

.field public static final SUPERVISED_USER_FILTERING_WARN:I = 0x1

.field private static sInstance:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;


# instance fields
.field private mClearBrowsingDataListener:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$OnClearBrowsingDataListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->getInstance()Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/search_engines/TemplateUrlService;->load()V

    .line 83
    return-void
.end method

.method private static addContentSettingExceptionToList(Ljava/util/ArrayList;ILjava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 193
    new-instance v0, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;

    invoke-static {p3}, Lorg/chromium/chrome/browser/preferences/website/ContentSetting;->fromInt(I)Lorg/chromium/chrome/browser/preferences/website/ContentSetting;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p4}, Lorg/chromium/chrome/browser/preferences/website/ContentSettingException;-><init>(ILjava/lang/String;Lorg/chromium/chrome/browser/preferences/website/ContentSetting;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method private browsingDataCleared()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->mClearBrowsingDataListener:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$OnClearBrowsingDataListener;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->mClearBrowsingDataListener:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$OnClearBrowsingDataListener;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$OnClearBrowsingDataListener;->onBrowsingDataCleared()V

    .line 705
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->mClearBrowsingDataListener:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$OnClearBrowsingDataListener;

    .line 707
    :cond_0
    return-void
.end method

.method private static createAboutVersionStrings(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$1;)V

    return-object v0
.end method

.method public static getAndroidPermissionForContentSetting(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 208
    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 216
    :goto_0
    return-object v0

    .line 210
    :cond_0
    const/16 v0, 0xb

    if-ne p0, v0, :cond_1

    .line 211
    const-string/jumbo v0, "android.permission.RECORD_AUDIO"

    goto :goto_0

    .line 213
    :cond_1
    const/16 v0, 0xc

    if-ne p0, v0, :cond_2

    .line 214
    const-string/jumbo v0, "android.permission.CAMERA"

    goto :goto_0

    .line 216
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 92
    sget-object v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->sInstance:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->sInstance:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    .line 93
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->sInstance:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    return-object v0
.end method

.method private native nativeCanDeleteBrowsingHistory()Z
.end method

.method private native nativeCanPrefetchAndPrerender()Z
.end method

.method private native nativeClearBrowsingData([I)V
.end method

.method private native nativeGetAboutVersionStrings()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;
.end method

.method private native nativeGetAcceptCookiesEnabled()Z
.end method

.method private native nativeGetAcceptCookiesManaged()Z
.end method

.method private native nativeGetAllowLocationEnabled()Z
.end method

.method private native nativeGetAllowLocationManagedByCustodian()Z
.end method

.method private native nativeGetAllowLocationUserModifiable()Z
.end method

.method private native nativeGetAutoDetectEncodingEnabled()Z
.end method

.method private native nativeGetBlockThirdPartyCookiesEnabled()Z
.end method

.method private native nativeGetBlockThirdPartyCookiesManaged()Z
.end method

.method private native nativeGetBrowsingDataDeletionPreference(I)Z
.end method

.method private native nativeGetBrowsingDataDeletionTimePeriod()I
.end method

.method private native nativeGetCameraEnabled()Z
.end method

.method private native nativeGetCameraManagedByCustodian()Z
.end method

.method private native nativeGetCameraUserModifiable()Z
.end method

.method private native nativeGetClickedUpdateMenuItem()Z
.end method

.method private native nativeGetContentSettingsExceptions(ILjava/util/List;)V
.end method

.method private native nativeGetContextualSearchPreference()Ljava/lang/String;
.end method

.method private native nativeGetContextualSearchPreferenceIsManaged()Z
.end method

.method private native nativeGetCrashReportManaged()Z
.end method

.method private native nativeGetDefaultSupervisedUserFilteringBehavior()I
.end method

.method private native nativeGetDoNotTrackEnabled()Z
.end method

.method private native nativeGetFirstRunEulaAccepted()Z
.end method

.method private native nativeGetFullscreenAllowed()Z
.end method

.method private native nativeGetFullscreenManaged()Z
.end method

.method private native nativeGetIncognitoModeEnabled()Z
.end method

.method private native nativeGetIncognitoModeManaged()Z
.end method

.method private native nativeGetLocationAllowedByPolicy()Z
.end method

.method private native nativeGetMetricsReportingEnabled()Z
.end method

.method private native nativeGetMicEnabled()Z
.end method

.method private native nativeGetMicManagedByCustodian()Z
.end method

.method private native nativeGetMicUserModifiable()Z
.end method

.method private native nativeGetNetworkPredictionEnabled()Z
.end method

.method private native nativeGetNetworkPredictionManaged()Z
.end method

.method private native nativeGetNotificationsEnabled()Z
.end method

.method private native nativeGetPasswordEchoEnabled()Z
.end method

.method private native nativeGetPasswordManagerAutoSigninEnabled()Z
.end method

.method private native nativeGetPasswordManagerAutoSigninManaged()Z
.end method

.method private native nativeGetPrintingEnabled()Z
.end method

.method private native nativeGetPrintingManaged()Z
.end method

.method private native nativeGetProtectedMediaIdentifierEnabled()Z
.end method

.method private native nativeGetRememberPasswordsEnabled()Z
.end method

.method private native nativeGetRememberPasswordsManaged()Z
.end method

.method private native nativeGetResolveNavigationErrorEnabled()Z
.end method

.method private native nativeGetResolveNavigationErrorManaged()Z
.end method

.method private native nativeGetSafeBrowsingEnabled()Z
.end method

.method private native nativeGetSafeBrowsingExtendedReportingEnabled()Z
.end method

.method private native nativeGetSafeBrowsingExtendedReportingManaged()Z
.end method

.method private native nativeGetSafeBrowsingManaged()Z
.end method

.method private native nativeGetSearchSuggestEnabled()Z
.end method

.method private native nativeGetSearchSuggestManaged()Z
.end method

.method private native nativeGetSupervisedUserCustodianEmail()Ljava/lang/String;
.end method

.method private native nativeGetSupervisedUserCustodianName()Ljava/lang/String;
.end method

.method private native nativeGetSupervisedUserCustodianProfileImageURL()Ljava/lang/String;
.end method

.method private native nativeGetSupervisedUserSafeSitesEnabled()Z
.end method

.method private native nativeGetSupervisedUserSecondCustodianEmail()Ljava/lang/String;
.end method

.method private native nativeGetSupervisedUserSecondCustodianName()Ljava/lang/String;
.end method

.method private native nativeGetSupervisedUserSecondCustodianProfileImageURL()Ljava/lang/String;
.end method

.method private native nativeGetSyncLastAccountId()Ljava/lang/String;
.end method

.method private native nativeGetSyncLastAccountName()Ljava/lang/String;
.end method

.method private native nativeGetTranslateEnabled()Z
.end method

.method private native nativeGetTranslateManaged()Z
.end method

.method private native nativeHasSetMetricsReporting()Z
.end method

.method private native nativeIsContentSettingEnabled(I)Z
.end method

.method private native nativeIsContentSettingManaged(I)Z
.end method

.method private native nativeMigrateJavascriptPreference()V
.end method

.method private native nativeObsoleteGetNetworkPredictionEnabledUserPrefValue()Z
.end method

.method private native nativeObsoleteNetworkPredictionEnabledHasUserSetting()Z
.end method

.method private native nativeObsoleteNetworkPredictionOptionsHasUserSetting()Z
.end method

.method private native nativeResetAcceptLanguages(Ljava/lang/String;)V
.end method

.method private native nativeResetTranslateDefaults()V
.end method

.method private native nativeSetAllowCookiesEnabled(Z)V
.end method

.method private native nativeSetAllowLocationEnabled(Z)V
.end method

.method private native nativeSetAutoDetectEncodingEnabled(Z)V
.end method

.method private native nativeSetBlockThirdPartyCookiesEnabled(Z)V
.end method

.method private native nativeSetBrowsingDataDeletionPreference(IZ)V
.end method

.method private native nativeSetBrowsingDataDeletionTimePeriod(I)V
.end method

.method private native nativeSetCameraEnabled(Z)V
.end method

.method private native nativeSetClickedUpdateMenuItem(Z)V
.end method

.method private native nativeSetContentSettingEnabled(IZ)V
.end method

.method private native nativeSetContextualSearchPreference(Ljava/lang/String;)V
.end method

.method private native nativeSetCrashReporting(Z)V
.end method

.method private native nativeSetDoNotTrackEnabled(Z)V
.end method

.method private native nativeSetEulaAccepted()V
.end method

.method private native nativeSetFullscreenAllowed(Z)V
.end method

.method private native nativeSetMetricsReportingEnabled(Z)V
.end method

.method private native nativeSetMicEnabled(Z)V
.end method

.method private native nativeSetNetworkPredictionEnabled(Z)V
.end method

.method private native nativeSetNotificationsEnabled(Z)V
.end method

.method private native nativeSetPasswordEchoEnabled(Z)V
.end method

.method private native nativeSetPasswordManagerAutoSigninEnabled(Z)V
.end method

.method private native nativeSetProtectedMediaIdentifierEnabled(Z)V
.end method

.method private native nativeSetRememberPasswordsEnabled(Z)V
.end method

.method private native nativeSetResolveNavigationErrorEnabled(Z)V
.end method

.method private native nativeSetSafeBrowsingEnabled(Z)V
.end method

.method private native nativeSetSafeBrowsingExtendedReportingEnabled(Z)V
.end method

.method private native nativeSetSearchSuggestEnabled(Z)V
.end method

.method private native nativeSetSupervisedUserId(Ljava/lang/String;)V
.end method

.method private native nativeSetTranslateEnabled(Z)V
.end method


# virtual methods
.method public final canDeleteBrowsingHistory()Z
    .locals 1

    .prologue
    .line 698
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeCanDeleteBrowsingHistory()Z

    move-result v0

    return v0
.end method

.method public final canPrefetchAndPrerender()Z
    .locals 1

    .prologue
    .line 568
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeCanPrefetchAndPrerender()Z

    move-result v0

    return v0
.end method

.method public final clearBrowsingData(Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$OnClearBrowsingDataListener;[I)V
    .locals 1

    .prologue
    .line 689
    sget-boolean v0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->mClearBrowsingDataListener:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$OnClearBrowsingDataListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 690
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->mClearBrowsingDataListener:Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$OnClearBrowsingDataListener;

    .line 691
    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeClearBrowsingData([I)V

    .line 692
    return-void
.end method

.method public final getAboutVersionStrings()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;
    .locals 1

    .prologue
    .line 855
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetAboutVersionStrings()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge$AboutVersionStrings;

    move-result-object v0

    return-object v0
.end method

.method public final getBrowsingDataDeletionPreference(I)Z
    .locals 1

    .prologue
    .line 648
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetBrowsingDataDeletionPreference(I)Z

    move-result v0

    return v0
.end method

.method public final getBrowsingDataDeletionTimePeriod()I
    .locals 1

    .prologue
    .line 667
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetBrowsingDataDeletionTimePeriod()I

    move-result v0

    return v0
.end method

.method public final getClickedUpdateMenuItem()Z
    .locals 1

    .prologue
    .line 946
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetClickedUpdateMenuItem()Z

    move-result v0

    return v0
.end method

.method public final getContentSettingsExceptions(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-direct {p0, p1, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetContentSettingsExceptions(ILjava/util/List;)V

    .line 183
    return-object v0
.end method

.method public final getContextualSearchPreference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetContextualSearchPreference()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultSupervisedUserFilteringBehavior()I
    .locals 1

    .prologue
    .line 878
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetDefaultSupervisedUserFilteringBehavior()I

    move-result v0

    return v0
.end method

.method public final getNetworkPredictionEnabled()Z
    .locals 1

    .prologue
    .line 545
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetNetworkPredictionEnabled()Z

    move-result v0

    return v0
.end method

.method public final getPasswordEchoEnabled()Z
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetPasswordEchoEnabled()Z

    move-result v0

    return v0
.end method

.method public final getSupervisedUserCustodianEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 886
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetSupervisedUserCustodianEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSupervisedUserSecondCustodianEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 898
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetSupervisedUserSecondCustodianEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSupervisedUserSecondCustodianName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 894
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetSupervisedUserSecondCustodianName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSyncLastAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetSyncLastAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hasSetMetricsReporting()Z
    .locals 1

    .prologue
    .line 931
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeHasSetMetricsReporting()Z

    move-result v0

    return v0
.end method

.method public final isAcceptCookiesEnabled()Z
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetAcceptCookiesEnabled()Z

    move-result v0

    return v0
.end method

.method public final isAcceptCookiesManaged()Z
    .locals 1

    .prologue
    .line 227
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetAcceptCookiesManaged()Z

    move-result v0

    return v0
.end method

.method public final isAllowLocationEnabled()Z
    .locals 1

    .prologue
    .line 271
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetAllowLocationEnabled()Z

    move-result v0

    return v0
.end method

.method public final isAllowLocationManagedByCustodian()Z
    .locals 1

    .prologue
    .line 293
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetAllowLocationManagedByCustodian()Z

    move-result v0

    return v0
.end method

.method public final isAllowLocationUserModifiable()Z
    .locals 1

    .prologue
    .line 285
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetAllowLocationUserModifiable()Z

    move-result v0

    return v0
.end method

.method public final isAutoDetectEncodingEnabled()Z
    .locals 1

    .prologue
    .line 624
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetAutoDetectEncodingEnabled()Z

    move-result v0

    return v0
.end method

.method public final isBlockThirdPartyCookiesEnabled()Z
    .locals 1

    .prologue
    .line 231
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetBlockThirdPartyCookiesEnabled()Z

    move-result v0

    return v0
.end method

.method public final isBlockThirdPartyCookiesManaged()Z
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetBlockThirdPartyCookiesManaged()Z

    move-result v0

    return v0
.end method

.method public final isCameraEnabled()Z
    .locals 1

    .prologue
    .line 768
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetCameraEnabled()Z

    move-result v0

    return v0
.end method

.method public final isCameraManagedByCustodian()Z
    .locals 1

    .prologue
    .line 783
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetCameraManagedByCustodian()Z

    move-result v0

    return v0
.end method

.method public final isCameraUserModifiable()Z
    .locals 1

    .prologue
    .line 790
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetCameraUserModifiable()Z

    move-result v0

    return v0
.end method

.method public final isContentSettingEnabled(I)Z
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeIsContentSettingEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final isContentSettingManaged(I)Z
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeIsContentSettingManaged(I)Z

    move-result v0

    return v0
.end method

.method public final isContextualSearchDisabled()Z
    .locals 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getContextualSearchPreference()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isContextualSearchDisabledByPolicy()Z
    .locals 1

    .prologue
    .line 455
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetContextualSearchPreferenceIsManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isContextualSearchDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isContextualSearchUninitialized()Z
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getContextualSearchPreference()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final isCrashReportManaged()Z
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetCrashReportManaged()Z

    move-result v0

    return v0
.end method

.method public final isDoNotTrackEnabled()Z
    .locals 1

    .prologue
    .line 300
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetDoNotTrackEnabled()Z

    move-result v0

    return v0
.end method

.method public final isFirstRunEulaAccepted()Z
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetFirstRunEulaAccepted()Z

    move-result v0

    return v0
.end method

.method public final isFullscreenAllowed()Z
    .locals 1

    .prologue
    .line 582
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetFullscreenAllowed()Z

    move-result v0

    return v0
.end method

.method public final isFullscreenManaged()Z
    .locals 1

    .prologue
    .line 575
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetFullscreenManaged()Z

    move-result v0

    return v0
.end method

.method public final isIncognitoModeEnabled()Z
    .locals 1

    .prologue
    .line 826
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetIncognitoModeEnabled()Z

    move-result v0

    return v0
.end method

.method public final isIncognitoModeManaged()Z
    .locals 1

    .prologue
    .line 833
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetIncognitoModeManaged()Z

    move-result v0

    return v0
.end method

.method public final isLocationAllowedByPolicy()Z
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetLocationAllowedByPolicy()Z

    move-result v0

    return v0
.end method

.method public final isMetricsReportingEnabled()Z
    .locals 1

    .prologue
    .line 917
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetMetricsReportingEnabled()Z

    move-result v0

    return v0
.end method

.method public final isMicEnabled()Z
    .locals 1

    .prologue
    .line 797
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetMicEnabled()Z

    move-result v0

    return v0
.end method

.method public final isMicManagedByCustodian()Z
    .locals 1

    .prologue
    .line 812
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetMicManagedByCustodian()Z

    move-result v0

    return v0
.end method

.method public final isMicUserModifiable()Z
    .locals 1

    .prologue
    .line 819
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetMicUserModifiable()Z

    move-result v0

    return v0
.end method

.method public final isNetworkPredictionManaged()Z
    .locals 1

    .prologue
    .line 559
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetNetworkPredictionManaged()Z

    move-result v0

    return v0
.end method

.method public final isNotificationsEnabled()Z
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public final isPasswordManagerAutoSigninEnabled()Z
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetPasswordManagerAutoSigninEnabled()Z

    move-result v0

    return v0
.end method

.method public final isPasswordManagerAutoSigninManaged()Z
    .locals 1

    .prologue
    .line 257
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetPasswordManagerAutoSigninManaged()Z

    move-result v0

    return v0
.end method

.method public final isPopupsManaged()Z
    .locals 1

    .prologue
    .line 752
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isContentSettingManaged(I)Z

    move-result v0

    return v0
.end method

.method public final isPrintingEnabled()Z
    .locals 1

    .prologue
    .line 840
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetPrintingEnabled()Z

    move-result v0

    return v0
.end method

.method public final isPrintingManaged()Z
    .locals 1

    .prologue
    .line 847
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetPrintingManaged()Z

    move-result v0

    return v0
.end method

.method public final isProtectedMediaIdentifierEnabled()Z
    .locals 1

    .prologue
    .line 603
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetProtectedMediaIdentifierEnabled()Z

    move-result v0

    return v0
.end method

.method public final isRememberPasswordsEnabled()Z
    .locals 1

    .prologue
    .line 242
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetRememberPasswordsEnabled()Z

    move-result v0

    return v0
.end method

.method public final isRememberPasswordsManaged()Z
    .locals 1

    .prologue
    .line 253
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetRememberPasswordsManaged()Z

    move-result v0

    return v0
.end method

.method public final isResolveNavigationErrorEnabled()Z
    .locals 1

    .prologue
    .line 589
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetResolveNavigationErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public final isResolveNavigationErrorManaged()Z
    .locals 1

    .prologue
    .line 596
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetResolveNavigationErrorManaged()Z

    move-result v0

    return v0
.end method

.method public final isSafeBrowsingEnabled()Z
    .locals 1

    .prologue
    .line 500
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetSafeBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method public final isSafeBrowsingExtendedReportingEnabled()Z
    .locals 1

    .prologue
    .line 479
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetSafeBrowsingExtendedReportingEnabled()Z

    move-result v0

    return v0
.end method

.method public final isSafeBrowsingExtendedReportingManaged()Z
    .locals 1

    .prologue
    .line 493
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetSafeBrowsingExtendedReportingManaged()Z

    move-result v0

    return v0
.end method

.method public final isSafeBrowsingManaged()Z
    .locals 1

    .prologue
    .line 514
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetSafeBrowsingManaged()Z

    move-result v0

    return v0
.end method

.method public final isSearchSuggestEnabled()Z
    .locals 1

    .prologue
    .line 412
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetSearchSuggestEnabled()Z

    move-result v0

    return v0
.end method

.method public final isSearchSuggestManaged()Z
    .locals 1

    .prologue
    .line 426
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetSearchSuggestManaged()Z

    move-result v0

    return v0
.end method

.method public final isSupervisedUserSafeSitesEnabled()Z
    .locals 1

    .prologue
    .line 871
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetSupervisedUserSafeSitesEnabled()Z

    move-result v0

    return v0
.end method

.method public final isTranslateEnabled()Z
    .locals 1

    .prologue
    .line 610
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetTranslateEnabled()Z

    move-result v0

    return v0
.end method

.method public final isTranslateManaged()Z
    .locals 1

    .prologue
    .line 617
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeGetTranslateManaged()Z

    move-result v0

    return v0
.end method

.method public final javaScriptEnabled()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isContentSettingEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final javaScriptManaged()Z
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isContentSettingManaged(I)Z

    move-result v0

    return v0
.end method

.method public final migratePreferences(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    .line 107
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    const-string/jumbo v1, "PrefMigrationVersion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 109
    if-ne v1, v4, :cond_0

    .line 127
    :goto_0
    return-void

    .line 110
    :cond_0
    if-le v1, v4, :cond_1

    .line 111
    const-string/jumbo v2, "PrefServiceBridge"

    const-string/jumbo v3, "Saved preferences version is newer than supported.  Attempting to run an older version of Chrome without clearing data is unsupported and the results may be unpredictable."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    if-gtz v1, :cond_2

    .line 117
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeMigrateJavascriptPreference()V

    .line 120
    :cond_2
    if-ge v1, v4, :cond_3

    .line 124
    invoke-virtual {p0, v5, v5}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setContentSettingEnabled(IZ)V

    .line 126
    :cond_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "PrefMigrationVersion"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public final native nativeSetContentSettingForPattern(ILjava/lang/String;I)V
.end method

.method public final obsoleteGetNetworkPredictionEnabledUserPrefValue()Z
    .locals 1

    .prologue
    .line 538
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeObsoleteGetNetworkPredictionEnabledUserPrefValue()Z

    move-result v0

    return v0
.end method

.method public final obsoleteNetworkPredictionEnabledHasUserSetting()Z
    .locals 1

    .prologue
    .line 522
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeObsoleteNetworkPredictionEnabledHasUserSetting()Z

    move-result v0

    return v0
.end method

.method public final obsoleteNetworkPredictionOptionsHasUserSetting()Z
    .locals 1

    .prologue
    .line 530
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeObsoleteNetworkPredictionOptionsHasUserSetting()Z

    move-result v0

    return v0
.end method

.method public final popupsEnabled()Z
    .locals 1

    .prologue
    .line 745
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isContentSettingEnabled(I)Z

    move-result v0

    return v0
.end method

.method public final resetAcceptLanguages(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 864
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeResetAcceptLanguages(Ljava/lang/String;)V

    .line 865
    return-void
.end method

.method public final resetTranslateDefaults()V
    .locals 0

    .prologue
    .line 361
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeResetTranslateDefaults()V

    .line 362
    return-void
.end method

.method public final setAllowCookiesEnabled(Z)V
    .locals 0

    .prologue
    .line 710
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetAllowCookiesEnabled(Z)V

    .line 711
    return-void
.end method

.method public final setAllowLocationEnabled(Z)V
    .locals 0

    .prologue
    .line 734
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetAllowLocationEnabled(Z)V

    .line 735
    return-void
.end method

.method public final setAllowPopupsEnabled(Z)V
    .locals 1

    .prologue
    .line 761
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setContentSettingEnabled(IZ)V

    .line 762
    return-void
.end method

.method public final setAutoDetectEncodingEnabled(Z)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetAutoDetectEncodingEnabled(Z)V

    .line 348
    return-void
.end method

.method public final setBlockThirdPartyCookiesEnabled(Z)V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetBlockThirdPartyCookiesEnabled(Z)V

    .line 715
    return-void
.end method

.method public final setBrowsingDataDeletionPreference(IZ)V
    .locals 0

    .prologue
    .line 658
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetBrowsingDataDeletionPreference(IZ)V

    .line 659
    return-void
.end method

.method public final setBrowsingDataDeletionTimePeriod(I)V
    .locals 0

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetBrowsingDataDeletionTimePeriod(I)V

    .line 677
    return-void
.end method

.method public final setCameraEnabled(Z)V
    .locals 0

    .prologue
    .line 775
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetCameraEnabled(Z)V

    .line 776
    return-void
.end method

.method public final setClickedUpdateMenuItem(Z)V
    .locals 0

    .prologue
    .line 939
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetClickedUpdateMenuItem(Z)V

    .line 940
    return-void
.end method

.method public final setContentSettingEnabled(IZ)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetContentSettingEnabled(IZ)V

    .line 174
    return-void
.end method

.method public final setContextualSearchPreference(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetContextualSearchPreference(Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public final setContextualSearchState(Z)V
    .locals 1

    .prologue
    .line 471
    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setContextualSearchPreference(Ljava/lang/String;)V

    .line 473
    return-void

    .line 471
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public final setCrashReporting(Z)V
    .locals 0

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetCrashReporting(Z)V

    .line 397
    return-void
.end method

.method public final setDoNotTrackEnabled(Z)V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetDoNotTrackEnabled(Z)V

    .line 719
    return-void
.end method

.method public final setEulaAccepted()V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetEulaAccepted()V

    .line 355
    return-void
.end method

.method public final setFullscreenAllowed(Z)V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetFullscreenAllowed(Z)V

    .line 406
    return-void
.end method

.method public final setJavaScriptEnabled(Z)V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setContentSettingEnabled(IZ)V

    .line 369
    return-void
.end method

.method public final setMetricsReportingEnabled(Z)V
    .locals 0

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetMetricsReportingEnabled(Z)V

    .line 925
    return-void
.end method

.method public final setMicEnabled(Z)V
    .locals 0

    .prologue
    .line 804
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetMicEnabled(Z)V

    .line 805
    return-void
.end method

.method public final setNetworkPredictionEnabled(Z)V
    .locals 0

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetNetworkPredictionEnabled(Z)V

    .line 553
    return-void
.end method

.method public final setNotificationsEnabled(Z)V
    .locals 0

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetNotificationsEnabled(Z)V

    .line 731
    return-void
.end method

.method public final setPasswordEchoEnabled(Z)V
    .locals 0

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetPasswordEchoEnabled(Z)V

    .line 739
    return-void
.end method

.method public final setPasswordManagerAutoSigninEnabled(Z)V
    .locals 0

    .prologue
    .line 726
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetPasswordManagerAutoSigninEnabled(Z)V

    .line 727
    return-void
.end method

.method public final setProtectedMediaIdentifierEnabled(Z)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetProtectedMediaIdentifierEnabled(Z)V

    .line 334
    return-void
.end method

.method public final setRememberPasswordsEnabled(Z)V
    .locals 0

    .prologue
    .line 722
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetRememberPasswordsEnabled(Z)V

    .line 723
    return-void
.end method

.method public final setResolveNavigationErrorEnabled(Z)V
    .locals 0

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetResolveNavigationErrorEnabled(Z)V

    .line 632
    return-void
.end method

.method public final setSafeBrowsingEnabled(Z)V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetSafeBrowsingEnabled(Z)V

    .line 508
    return-void
.end method

.method public final setSafeBrowsingExtendedReportingEnabled(Z)V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetSafeBrowsingExtendedReportingEnabled(Z)V

    .line 487
    return-void
.end method

.method public final setSearchSuggestEnabled(Z)V
    .locals 0

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetSearchSuggestEnabled(Z)V

    .line 420
    return-void
.end method

.method public final setSupervisedUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 951
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetSupervisedUserId(Ljava/lang/String;)V

    .line 952
    return-void
.end method

.method public final setTranslateEnabled(Z)V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->nativeSetTranslateEnabled(Z)V

    .line 341
    return-void
.end method
