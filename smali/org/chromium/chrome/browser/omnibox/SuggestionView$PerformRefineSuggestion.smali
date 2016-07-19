.class Lorg/chromium/chrome/browser/omnibox/SuggestionView$PerformRefineSuggestion;
.super Ljava/lang/Object;
.source "SuggestionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;


# direct methods
.method private constructor <init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$PerformRefineSuggestion;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView;Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;)V
    .locals 0

    .prologue
    .line 563
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$PerformRefineSuggestion;-><init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$PerformRefineSuggestion;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionDelegate:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1300(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$PerformRefineSuggestion;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1100(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;->onRefineSuggestion(Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;)V

    .line 567
    return-void
.end method
