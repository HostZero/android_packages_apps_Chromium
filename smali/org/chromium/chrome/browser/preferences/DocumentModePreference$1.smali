.class Lorg/chromium/chrome/browser/preferences/DocumentModePreference$1;
.super Ljava/lang/Object;
.source "DocumentModePreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/DocumentModePreference;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/DocumentModePreference;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/DocumentModePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 55
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/DocumentModePreference;

    # getter for: Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->mDocumentModeManager:Lorg/chromium/chrome/browser/preferences/DocumentModeManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->access$000(Lorg/chromium/chrome/browser/preferences/DocumentModePreference;)Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->isOptedOutOfDocumentMode()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-ne v2, v0, :cond_1

    .line 59
    :goto_1
    return v1

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/DocumentModePreference;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    # invokes: Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->createOptOutAlertDialog(Z)Landroid/support/v7/app/AlertDialog;
    invoke-static {v0, v2}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->access$100(Lorg/chromium/chrome/browser/preferences/DocumentModePreference;Z)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_1
.end method
