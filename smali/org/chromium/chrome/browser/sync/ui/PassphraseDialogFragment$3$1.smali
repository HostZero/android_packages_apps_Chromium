.class Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$3$1;
.super Ljava/lang/Object;
.source "PassphraseDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$3;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$3;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$3$1;->this$1:Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$3$1;->this$1:Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$3;

    iget-object v0, v0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$3;->this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;

    # invokes: Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->handleSubmit()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;->access$000(Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;)V

    .line 137
    return-void
.end method
