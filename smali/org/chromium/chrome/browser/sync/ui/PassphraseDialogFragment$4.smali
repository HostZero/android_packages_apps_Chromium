.class Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$4;
.super Landroid/text/style/ClickableSpan;
.source "PassphraseDialogFragment.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$4;->this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;

    iput-object p2, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$4;->this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;

    const/4 v1, 0x3

    # invokes: Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->recordPassphraseDialogDismissal(I)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->access$100(Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;I)V

    .line 180
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$4;->val$context:Landroid/content/Context;

    sget v1, Lorg/chromium/chrome/R$string;->sync_dashboard_url:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$4;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/base/BuildInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/customtabs/a;->getViewIntentWithNoSession(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$4;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method
