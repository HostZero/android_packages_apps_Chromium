.class Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$1;
.super Ljava/lang/Object;
.source "PassphraseCreationDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$1;->this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$1;->this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;

    # invokes: Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->tryToSubmitPassphrase()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->access$000(Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;)V

    .line 54
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
