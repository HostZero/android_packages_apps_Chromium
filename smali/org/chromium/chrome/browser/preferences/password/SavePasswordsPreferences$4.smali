.class Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences$4;
.super Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;
.source "SavePasswordsPreferences.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences$4;->this$0:Lorg/chromium/chrome/browser/preferences/password/SavePasswordsPreferences;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public isPreferenceControlledByPolicy(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 279
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isPasswordManagerAutoSigninManaged()Z

    move-result v0

    return v0
.end method