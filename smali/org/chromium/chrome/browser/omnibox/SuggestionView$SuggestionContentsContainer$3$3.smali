.class Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3$3;
.super Ljava/lang/Object;
.source "SuggestionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$2:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3$3;->this$2:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3$3;->this$2:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;->this$1:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionDelegate:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1300(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;->onHideModal()V

    .line 649
    return-void
.end method
