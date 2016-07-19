.class Lorg/chromium/chrome/browser/preferences/ButtonPreference$1;
.super Ljava/lang/Object;
.source "ButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/ButtonPreference;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/ButtonPreference;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/ButtonPreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/ButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ButtonPreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/ButtonPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ButtonPreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/ButtonPreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/ButtonPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/ButtonPreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/ButtonPreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/ButtonPreference;

    invoke-interface {v0, v1}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 44
    :cond_0
    return-void
.end method
