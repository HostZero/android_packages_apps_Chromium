.class Lorg/chromium/chrome/browser/preferences/DocumentModePreference$4;
.super Ljava/lang/Object;
.source "DocumentModePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/DocumentModePreference;

.field final synthetic val$isSwitchEnabled:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/DocumentModePreference;Z)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$4;->this$0:Lorg/chromium/chrome/browser/preferences/DocumentModePreference;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$4;->val$isSwitchEnabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$4;->this$0:Lorg/chromium/chrome/browser/preferences/DocumentModePreference;

    # getter for: Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->mDocumentModeSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->access$200(Lorg/chromium/chrome/browser/preferences/DocumentModePreference;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iget-boolean v1, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$4;->val$isSwitchEnabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 76
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 77
    return-void
.end method
