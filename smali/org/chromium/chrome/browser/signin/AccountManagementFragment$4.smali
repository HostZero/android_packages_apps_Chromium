.class Lorg/chromium/chrome/browser/signin/AccountManagementFragment$4;
.super Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;
.source "AccountManagementFragment.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$4;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/ManagedPreferenceDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public isPreferenceControlledByPolicy(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/chromium/chrome/browser/signin/AccountManagementFragment$4;->this$0:Lorg/chromium/chrome/browser/signin/AccountManagementFragment;

    # invokes: Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->canAddAccounts()Z
    invoke-static {v0}, Lorg/chromium/chrome/browser/signin/AccountManagementFragment;->access$300(Lorg/chromium/chrome/browser/signin/AccountManagementFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
