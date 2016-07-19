.class Lorg/chromium/chrome/browser/preferences/DocumentModePreference$3;
.super Ljava/lang/Object;
.source "DocumentModePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/DocumentModePreference;

.field final synthetic val$optOut:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/DocumentModePreference;Z)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$3;->this$0:Lorg/chromium/chrome/browser/preferences/DocumentModePreference;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$3;->val$optOut:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 82
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 83
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$3;->val$optOut:Z

    if-eqz v0, :cond_0

    .line 84
    const-string/jumbo v0, "DocumentActivity_UserOptOut"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 88
    :goto_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$3;->this$0:Lorg/chromium/chrome/browser/preferences/DocumentModePreference;

    # getter for: Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->mDocumentModeManager:Lorg/chromium/chrome/browser/preferences/DocumentModeManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->access$000(Lorg/chromium/chrome/browser/preferences/DocumentModePreference;)Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    move-result-object v2

    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$3;->val$optOut:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->setOptedOutState(I)V

    .line 91
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$3;->this$0:Lorg/chromium/chrome/browser/preferences/DocumentModePreference;

    # getter for: Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->mDocumentModeManager:Lorg/chromium/chrome/browser/preferences/DocumentModeManager;
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->access$000(Lorg/chromium/chrome/browser/preferences/DocumentModePreference;)Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->setOptOutCleanUpPending(Z)V

    .line 92
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$3;->val$optOut:Z

    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$3;->this$0:Lorg/chromium/chrome/browser/preferences/DocumentModePreference;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$3;->this$0:Lorg/chromium/chrome/browser/preferences/DocumentModePreference;

    iget-boolean v3, p0, Lorg/chromium/chrome/browser/preferences/DocumentModePreference$3;->val$optOut:Z

    # invokes: Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->isRestartNeeded(Z)Z
    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/preferences/DocumentModePreference;->access$300(Lorg/chromium/chrome/browser/preferences/DocumentModePreference;Z)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/chromium/chrome/browser/document/DocumentMigrationHelper;->migrateTabs(ZLandroid/app/Activity;Z)V

    .line 94
    return-void

    .line 86
    :cond_0
    const-string/jumbo v0, "DocumentActivity_UserOptIn"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method
