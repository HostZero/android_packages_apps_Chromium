.class Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$3;
.super Ljava/lang/Object;
.source "PassphraseDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;

.field final synthetic val$d:Landroid/support/v7/app/AlertDialog;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;Landroid/support/v7/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$3;->this$0:Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment;

    iput-object p2, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$3;->val$d:Landroid/support/v7/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$3;->val$d:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 133
    new-instance v1, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$3$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$3$1;-><init>(Lorg/chromium/chrome/browser/sync/ui/PassphraseDialogFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    return-void
.end method
