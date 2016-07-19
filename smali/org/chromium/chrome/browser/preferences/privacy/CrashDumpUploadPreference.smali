.class public Lorg/chromium/chrome/browser/preferences/privacy/CrashDumpUploadPreference;
.super Lorg/chromium/chrome/browser/preferences/ChromeBaseListPreference;
.source "CrashDumpUploadPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/preferences/ChromeBaseListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/CrashDumpUploadPreference;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {p0, p0}, Lorg/chromium/chrome/browser/preferences/privacy/CrashDumpUploadPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 27
    invoke-static {p1}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getPrefCrashDumpUploadPreference()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/CrashDumpUploadPreference;->getSummaryText(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/CrashDumpUploadPreference;->setSummary(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public getSummaryText(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/CrashDumpUploadPreference;->mContext:Landroid/content/Context;

    sget v1, Lorg/chromium/chrome/R$string;->crash_dump_always_upload_value:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    sget v0, Lorg/chromium/chrome/R$string;->crash_dump_always_upload:I

    .line 51
    :goto_0
    return v0

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/CrashDumpUploadPreference;->mContext:Landroid/content/Context;

    sget v1, Lorg/chromium/chrome/R$string;->crash_dump_only_with_wifi_value:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    sget v0, Lorg/chromium/chrome/R$string;->crash_dump_only_with_wifi:I

    goto :goto_0

    .line 51
    :cond_1
    sget v0, Lorg/chromium/chrome/R$string;->crash_dump_never_upload:I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 34
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/preferences/privacy/CrashDumpUploadPreference;->getSummaryText(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/privacy/CrashDumpUploadPreference;->setSummary(I)V

    .line 35
    const/4 v0, 0x1

    return v0
.end method
