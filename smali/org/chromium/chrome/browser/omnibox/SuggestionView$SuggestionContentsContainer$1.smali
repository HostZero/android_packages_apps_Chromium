.class Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$1;
.super Ljava/lang/Object;
.source "SuggestionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$1;->this$1:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$1;->this$1:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->requestLayout()V

    .line 594
    return-void
.end method
