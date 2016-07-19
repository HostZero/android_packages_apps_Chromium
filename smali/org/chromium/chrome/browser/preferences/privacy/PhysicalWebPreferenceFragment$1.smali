.class Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment$1;
.super Ljava/lang/Object;
.source "PhysicalWebPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment$1;->this$0:Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 90
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment$1;->this$0:Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->onPrefsFeatureEnabled(Landroid/content/Context;)V

    .line 93
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment$1;->this$0:Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;

    # invokes: Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->ensureLocationPermission()V
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->access$000(Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;)V

    .line 97
    :goto_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment$1;->this$0:Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/privacy/PrivacyPreferencesManager;->setPhysicalWebEnabled(Z)V

    .line 98
    const/4 v0, 0x1

    return v0

    .line 95
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment$1;->this$0:Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lorg/chromium/chrome/browser/physicalweb/PhysicalWebUma;->onPrefsFeatureDisabled(Landroid/content/Context;)V

    goto :goto_0
.end method
