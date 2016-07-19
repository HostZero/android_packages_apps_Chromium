.class Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences$1;
.super Ljava/lang/Object;
.source "AutofillPreferences.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences$1;->this$0:Lorg/chromium/chrome/browser/preferences/autofill/AutofillPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 47
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/autofill/PersonalDataManager;->setAutofillEnabled(Z)V

    .line 48
    const/4 v0, 0x1

    return v0
.end method
