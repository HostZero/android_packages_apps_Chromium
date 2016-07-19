.class Lorg/chromium/chrome/browser/omnibox/SuggestionView$2;
.super Ljava/lang/Object;
.source "SuggestionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$2;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 347
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$PerformRefineSuggestion;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$2;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$PerformRefineSuggestion;-><init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView;Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;)V

    .line 348
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$2;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$PerformRefineSuggestion;->run()V

    .line 349
    :cond_0
    return-void
.end method
