.class Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$6;
.super Ljava/lang/Object;
.source "LocationBarLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

.field final synthetic val$textDeleted:Z


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Z)V
    .locals 0

    .prologue
    .line 995
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$6;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iput-boolean p2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$6;->val$textDeleted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 998
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$6;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getTextWithoutAutocomplete()Ljava/lang/String;

    move-result-object v1

    .line 1000
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$6;->val$textDeleted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$6;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    iget-object v0, v0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->shouldAutocomplete()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1001
    :goto_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$6;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    const/4 v3, 0x0

    # setter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mRequestSuggestions:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$1902(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1002
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$6;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1007
    :goto_1
    return-void

    .line 1000
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1003
    :cond_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$6;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mAutocomplete:Lorg/chromium/chrome/browser/omnibox/AutocompleteController;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$1000(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Lorg/chromium/chrome/browser/omnibox/AutocompleteController;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$6;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$6;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1, v0}, Lorg/chromium/chrome/browser/omnibox/AutocompleteController;->start(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method
