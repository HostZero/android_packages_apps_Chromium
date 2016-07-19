.class Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3$1;
.super Ljava/lang/Object;
.source "SuggestionView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$2:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3$1;->this$2:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 630
    const-string/jumbo v0, "MobileOmniboxDeleteRequested"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3$1;->this$2:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;->this$1:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionDelegate:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1300(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3$1;->this$2:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;

    iget-object v1, v1, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;->this$1:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    iget-object v1, v1, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mPosition:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1200(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;->onDeleteSuggestion(I)V

    .line 632
    return-void
.end method
