.class Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences$1;
.super Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;
.source "PrivacyPreferences.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferences;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public isPreferenceControlledByPolicy(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    .line 219
    const-string/jumbo v2, "navigation_error"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isResolveNavigationErrorManaged()Z

    move-result v0

    .line 238
    :goto_0
    return v0

    .line 222
    :cond_0
    const-string/jumbo v2, "search_suggestions"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isSearchSuggestManaged()Z

    move-result v0

    goto :goto_0

    .line 225
    :cond_1
    const-string/jumbo v2, "safe_browsing_extended_reporting"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isSafeBrowsingExtendedReportingManaged()Z

    move-result v0

    goto :goto_0

    .line 228
    :cond_2
    const-string/jumbo v2, "safe_browsing"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 229
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isSafeBrowsingManaged()Z

    move-result v0

    goto :goto_0

    .line 231
    :cond_3
    const-string/jumbo v2, "network_predictions"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 232
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isNetworkPredictionManaged()Z

    move-result v0

    goto :goto_0

    .line 234
    :cond_4
    const-string/jumbo v2, "crash_dump_upload"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "crash_dump_upload_no_cellular"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 236
    :cond_5
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isCrashReportManaged()Z

    move-result v0

    goto :goto_0

    .line 238
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method
