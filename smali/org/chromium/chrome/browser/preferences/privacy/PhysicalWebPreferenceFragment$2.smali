.class Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment$2;
.super Ljava/lang/Object;
.source "PhysicalWebPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment$2;->this$0:Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment$2;->this$0:Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment$2;->this$0:Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    # invokes: Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->createListUrlsIntent(Landroid/content/Context;)Landroid/content/Intent;
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->access$100(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/privacy/PhysicalWebPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 111
    const/4 v0, 0x1

    return v0
.end method
