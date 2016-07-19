.class Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment$2;
.super Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;
.source "ContextualSearchPreferenceFragment.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment$2;->this$0:Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public isPreferenceControlledByPolicy(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->isContextualSearchDisabledByPolicy()Z

    move-result v0

    return v0
.end method
