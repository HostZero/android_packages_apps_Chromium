.class Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment$1;
.super Ljava/lang/Object;
.source "ContextualSearchPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment$1;->this$0:Lorg/chromium/chrome/browser/preferences/privacy/ContextualSearchPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->getInstance()Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/preferences/PrefServiceBridge;->setContextualSearchState(Z)V

    .line 46
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/contextualsearch/ContextualSearchUma;->logPreferenceChange(Z)V

    .line 47
    const/4 v0, 0x1

    return v0
.end method
