.class Lorg/chromium/chrome/browser/preferences/SpinnerPreference$1;
.super Ljava/lang/Object;
.source "SpinnerPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/SpinnerPreference;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/SpinnerPreference;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/SpinnerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/SpinnerPreference;

    # setter for: Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->mSelectedIndex:I
    invoke-static {v0, p3}, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->access$002(Lorg/chromium/chrome/browser/preferences/SpinnerPreference;I)I

    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/SpinnerPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/SpinnerPreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/SpinnerPreference;

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/SpinnerPreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/SpinnerPreference;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/preferences/SpinnerPreference;->getSelectedOption()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 73
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method
