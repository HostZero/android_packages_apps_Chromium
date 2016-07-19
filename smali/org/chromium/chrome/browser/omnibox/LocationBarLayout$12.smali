.class Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$12;
.super Ljava/lang/Object;
.source "LocationBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

.field final synthetic val$updateLayoutParams:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)V
    .locals 0

    .prologue
    .line 1827
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$12;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$12;->val$updateLayoutParams:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1830
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$12;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->setSuggestionsListVisibility(Z)V

    .line 1831
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$12;->val$updateLayoutParams:Z

    if-eqz v0, :cond_0

    .line 1832
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$12;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    # invokes: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->updateLayoutParams()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->access$2000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;)V

    .line 1834
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$12;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    const/4 v1, 0x0

    # setter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mShowSuggestions:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$2302(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1835
    return-void
.end method
