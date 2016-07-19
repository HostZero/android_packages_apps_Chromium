.class Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$2;
.super Landroid/text/style/ClickableSpan;
.source "PassphraseCreationDialogFragment.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$2;->this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;

    iput-object p2, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 80
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/help/HelpAndFeedback;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$2;->val$activity:Landroid/app/Activity;

    sget v3, Lorg/chromium/chrome/R$string;->help_context_change_sync_passphrase:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lorg/chromium/chrome/browser/profiles/Profile;->getLastUsedProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/chromium/chrome/browser/help/HelpAndFeedback;->show(Landroid/app/Activity;Ljava/lang/String;Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;)V

    .line 83
    return-void
.end method
