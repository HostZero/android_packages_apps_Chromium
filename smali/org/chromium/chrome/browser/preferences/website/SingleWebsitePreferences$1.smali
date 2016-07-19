.class Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$1;
.super Ljava/lang/Object;
.source "SingleWebsitePreferences.java"

# interfaces
.implements Lorg/chromium/chrome/browser/preferences/website/Website$StoredDataClearedCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)V
    .locals 0

    .prologue
    .line 564
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStoredDataCleared()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 568
    const-string/jumbo v1, "clear_data"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 570
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    # invokes: Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->hasUsagePreferences()Z
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->access$400(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 571
    const-string/jumbo v1, "site_usage"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 574
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;

    # invokes: Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->popBackIfNoSettings()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;->access$500(Lorg/chromium/chrome/browser/preferences/website/SingleWebsitePreferences;)V

    .line 575
    return-void
.end method
