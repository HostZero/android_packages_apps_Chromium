.class Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$1;
.super Ljava/lang/Object;
.source "PassphraseDialogFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$1;->this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$1;->this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;

    # invokes: Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->handleSubmit()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->access$000(Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;)V

    .line 109
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
