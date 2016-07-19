.class Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$2;
.super Ljava/lang/Object;
.source "SuggestionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

.field final synthetic val$this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;Lorg/chromium/chrome/browser/omnibox/SuggestionView;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$2;->this$1:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    iput-object p2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$2;->val$this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 612
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$PerformSelectSuggestion;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$2;->this$1:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    iget-object v1, v1, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$PerformSelectSuggestion;-><init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView;Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;)V

    .line 613
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$2;->this$1:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$PerformSelectSuggestion;->run()V

    .line 614
    :cond_0
    return-void
.end method
