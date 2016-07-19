.class Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8$1;
.super Ljava/lang/Object;
.source "LocationBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8;)V
    .locals 0

    .prologue
    .line 1412
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8$1;->this$1:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8$1;->this$1:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8$1;->this$1:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$8;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mSuggestionList:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;

    move-result-object v0

    # invokes: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->updateLayoutParams()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;->access$2000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$OmniboxSuggestionsList;)V

    .line 1416
    :cond_0
    return-void
.end method
