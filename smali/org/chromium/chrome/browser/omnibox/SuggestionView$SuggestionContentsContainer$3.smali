.class Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;
.super Ljava/lang/Object;
.source "SuggestionView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

.field final synthetic val$this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;Lorg/chromium/chrome/browser/omnibox/SuggestionView;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;->this$1:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    iput-object p2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;->val$this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 619
    const-string/jumbo v0, "MobileOmniboxDeleteGesture"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;->this$1:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1100(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->isDeletable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    :goto_0
    return v3

    .line 622
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;->this$1:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$style;->AlertDialogTheme:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 624
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;->this$1:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    iget-object v1, v1, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1100(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 625
    sget v1, Lorg/chromium/chrome/R$string;->omnibox_confirm_delete:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 626
    new-instance v1, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3$1;-><init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;)V

    .line 634
    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 635
    new-instance v1, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3$2;-><init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;)V

    .line 642
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 644
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 645
    new-instance v1, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3$3;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3$3;-><init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 652
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;->this$1:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    iget-object v1, v1, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionDelegate:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1300(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;->onShowModal()V

    .line 653
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method
