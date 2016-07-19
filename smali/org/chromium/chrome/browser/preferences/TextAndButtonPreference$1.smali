.class Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference$1;
.super Ljava/lang/Object;
.source "TextAndButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference;

    invoke-interface {v0, v1}, Landroid/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroid/preference/Preference;)Z

    .line 41
    :cond_0
    return-void
.end method
