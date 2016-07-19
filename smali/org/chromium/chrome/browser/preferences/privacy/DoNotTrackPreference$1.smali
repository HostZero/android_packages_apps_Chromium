.class Lorg/chromium/chrome/browser/preferences/privacy/DoNotTrackPreference$1;
.super Ljava/lang/Object;
.source "DoNotTrackPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/privacy/DoNotTrackPreference;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/privacy/DoNotTrackPreference;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/DoNotTrackPreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/privacy/DoNotTrackPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setDoNotTrackEnabled(Z)V

    .line 39
    const/4 v0, 0x1

    return v0
.end method
