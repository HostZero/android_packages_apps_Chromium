.class Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$1;
.super Landroid/text/style/ClickableSpan;
.source "PassphraseTypeDialogFragment.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$1;->this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment;

    iput-object p2, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$1;->val$context:Landroid/content/Context;

    sget v1, Lorg/chromium/chrome/R$string;->sync_dashboard_url:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lorg/chromium/base/BuildInfo;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/customtabs/a;->getViewIntentWithNoSession(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseTypeDialogFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 199
    return-void
.end method
