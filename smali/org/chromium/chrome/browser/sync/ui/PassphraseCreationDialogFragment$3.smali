.class Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$3;
.super Ljava/lang/Object;
.source "PassphraseCreationDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$3;->this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment$3;->this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;

    # invokes: Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->tryToSubmitPassphrase()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;->access$000(Lorg/chromium/chrome/browser/sync/ui/PassphraseCreationDialogFragment;)V

    .line 98
    return-void
.end method
