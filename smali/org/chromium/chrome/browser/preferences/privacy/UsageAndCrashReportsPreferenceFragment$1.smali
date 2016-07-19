.class Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment$1;
.super Ljava/lang/Object;
.source "UsageAndCrashReportsPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment$1;->this$0:Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 43
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 44
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment$1;->this$0:Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/privacy/UsageAndCrashReportsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v1

    .line 48
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setMetricsReportingEnabled(Z)V

    .line 49
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->setUsageAndCrashReporting(Z)V

    .line 52
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setCrashReporting(Z)V

    .line 53
    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->initCrashUploadPreference(Z)V

    .line 54
    const/4 v0, 0x1

    return v0
.end method
